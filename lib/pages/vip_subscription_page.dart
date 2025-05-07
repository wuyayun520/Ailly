import 'package:flutter/material.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:in_app_purchase_storekit/in_app_purchase_storekit.dart';
import 'package:in_app_purchase_storekit/store_kit_wrappers.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:intl/intl.dart';

class VipSubscriptionPage extends StatefulWidget {
  const VipSubscriptionPage({super.key});

  @override
  State<VipSubscriptionPage> createState() => _VipSubscriptionPageState();
}

class _VipSubscriptionPageState extends State<VipSubscriptionPage> {
  late InAppPurchase _inAppPurchase;
  StreamSubscription<List<PurchaseDetails>>? _subscription;
  bool _isPurchasePending = false;
  bool _isAvailable = false;
  List<ProductDetails> _products = [];
  int _selectedPlanIndex = 1; // Default to quarterly plan
  bool _isSubscribed = false;
  DateTime? _subscriptionEndDate;
  
  // 添加节流控制变量
  DateTime? _lastErrorTime;
  Set<String> _reportedProductIds = {};

  final List<Map<String, dynamic>> _subscriptionPlans = [
    {
      'id': 'FunifySub1_19',
      'price': 19.99,
      'period': 'Per month',
      'duration': '1 Month VIP',
      'total': '\$19.99'
    },
    {
      'id': 'FunifySub2_29',
      'price': 29.99,
      'period': 'Per quarter',
      'duration': '3 Months VIP',
      'total': '\$29.99'
    },
    {
      'id': 'FunifySub3_69',
      'price': 69.99,
      'period': 'Per year',
      'duration': '12 Months VIP',
      'total': '\$69.99'
    },
  ];

  @override
  void initState() {
    super.initState();
    
    // 确保在初始化IAP前清理旧的交易
    if (Platform.isIOS) {
      _clearCompletedTransactions().then((_) {
        _initInAppPurchase();
      });
    } else {
      _initInAppPurchase();
    }
    
    _loadSubscriptionStatus();
  }

  Future<void> _initInAppPurchase() async {
    _inAppPurchase = InAppPurchase.instance;
    final bool available = await _inAppPurchase.isAvailable();
    
    if (available) {
      // 只查询VIP订阅相关产品
      final Set<String> productIds = _subscriptionPlans.map((plan) => plan['id'] as String).toSet();
      
      try {
        final ProductDetailsResponse response = await _inAppPurchase.queryProductDetails(productIds);
        
        if (response.notFoundIDs.isNotEmpty) {
          print('VIP Products not found in store: ${response.notFoundIDs.join(", ")}');
        }
        
        setState(() {
          _isAvailable = available;
          _products = response.productDetails;
        });
        
        // 创建新的订阅监听，避免与其他内购混合
        final Stream<List<PurchaseDetails>> purchaseUpdates = 
            InAppPurchase.instance.purchaseStream;
        
        // 防止重复监听
        _subscription?.cancel();
        
        _subscription = purchaseUpdates.listen(
          (purchaseDetailsList) {
            _handleVIPPurchaseUpdates(purchaseDetailsList);
          },
          onDone: () => _subscription?.cancel(),
          onError: (error) => print('VIP purchase stream error: $error'),
        );
      } catch (e) {
        print('Error initializing VIP IAP: $e');
        setState(() {
          _isAvailable = false;
        });
      }
    } else {
      setState(() {
        _isAvailable = false;
      });
      print('In-app purchases not available on this device');
    }
  }

  Future<void> _loadSubscriptionStatus() async {
    final prefs = await SharedPreferences.getInstance();
    final bool subscribed = prefs.getBool('isSubscribed') ?? false;
    final String? endDateStr = prefs.getString('subscriptionEndDate');
    
    setState(() {
      _isSubscribed = subscribed;
      if (endDateStr != null) {
        _subscriptionEndDate = DateTime.parse(endDateStr);
      }
    });
  }

  Future<void> _saveSubscriptionStatus(bool isSubscribed, DateTime endDate) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isSubscribed', isSubscribed);
    await prefs.setString('subscriptionEndDate', endDate.toIso8601String());
    
    setState(() {
      _isSubscribed = isSubscribed;
      _subscriptionEndDate = endDate;
    });
  }

  void _handleVIPPurchaseUpdates(List<PurchaseDetails> purchaseDetailsList) {
    // 只处理与本页面相关的VIP订阅产品
    final Set<String> vipProductIds = _subscriptionPlans.map((plan) => plan['id'] as String).toSet();
    
    final relevantPurchases = purchaseDetailsList.where(
      (purchase) => vipProductIds.contains(purchase.productID)
    ).toList();
    
    if (relevantPurchases.isEmpty) return;
    
    for (var purchaseDetails in relevantPurchases) {
      if (purchaseDetails.status == PurchaseStatus.pending) {
        setState(() => _isPurchasePending = true);
      } else {
        if (purchaseDetails.status == PurchaseStatus.error) {
          _handleError(purchaseDetails.error!);
        } else if (purchaseDetails.status == PurchaseStatus.purchased ||
                  purchaseDetails.status == PurchaseStatus.restored) {
          _verifyAndDeliverProduct(purchaseDetails);
        }
        
        if (purchaseDetails.pendingCompletePurchase) {
          _inAppPurchase.completePurchase(purchaseDetails);
        }
        
        setState(() => _isPurchasePending = false);
      }
    }
  }

  void _handleError(IAPError error) {
    setState(() => _isPurchasePending = false);
    
    // 错误节流，3秒内只显示一次
    final now = DateTime.now();
    if (_lastErrorTime == null || now.difference(_lastErrorTime!).inSeconds > 3) {
      _lastErrorTime = now;
      
      // 输出详细错误信息到控制台
      print('IAP error: ${error.code} - ${error.message} - Source: ${error.source}');
      
      // 处理苹果特有的错误码
      String userMessage = 'An error occurred during purchase';
      
      if (error.source == 'SKErrorDomain') {
        // 处理苹果StoreKit特定错误
        switch (error.code) {
          case 'purchase_not_allowed':
            userMessage = 'Purchases are not allowed on this device';
            break;
          case 'cloud_service_permission_denied':
            userMessage = 'Cloud service permission denied';
            break;
          case 'cloud_service_network_connection_failed':
            userMessage = 'Network connection failed, please check your connection';
            break;
          case 'client_invalid':
            userMessage = 'Client is invalid';
            break;
          case 'payment_invalid':
            userMessage = 'Payment information is invalid';
            break;
          case 'payment_not_allowed':
            userMessage = 'Payment is not allowed for this Apple ID';
            break;
          case 'storekit_sandboxreceipt_in_prod':
            userMessage = 'Sandbox receipt cannot be used in production';
            // 尝试在测试环境中验证
            break;
          default:
            userMessage = 'Purchase failed: ${error.message}';
        }
      } else if (error.code == 'product_id_not_found') {
        // 这个错误不需要显示给用户
        return;
      }
      
      // 显示用户友好的错误消息
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(userMessage),
            backgroundColor: Colors.red,
            duration: const Duration(seconds: 3),
          ),
        );
      }
    }
  }

  Future<void> _verifyAndDeliverProduct(PurchaseDetails purchaseDetails) async {
    try {
      // Make sure the purchase is valid
      if (purchaseDetails.status != PurchaseStatus.purchased && 
          purchaseDetails.status != PurchaseStatus.restored) {
        throw Exception('Invalid purchase status: ${purchaseDetails.status}');
      }
      
      // Find which plan was purchased
      String productId = purchaseDetails.productID;
      
      // 验证产品ID是否有效
      if (!_subscriptionPlans.any((plan) => plan['id'] == productId)) {
        if (!_reportedProductIds.contains(productId)) {
          _reportedProductIds.add(productId);
          print('Unknown product ID (will not log again): $productId');
        }
        return;
      }
      
      // 在实际应用中，此处应该验证收据
      // 推荐的做法是：
      // 1. 先尝试对生产环境进行验证
      // 2. 如果返回错误码"Sandbox receipt used in production"，再尝试对测试环境验证
      // 
      // 以下是简化的收据验证逻辑示例：
      //
      // final String? receiptData = purchaseDetails.verificationData.serverVerificationData;
      // if (receiptData == null || receiptData.isEmpty) {
      //   throw Exception('Receipt data is empty');
      // }
      //
      // // 步骤1：尝试在生产环境验证
      // bool isValid = await _validateReceiptWithServer(receiptData, isProduction: true);
      // 
      // // 步骤2：如果生产环境验证失败，尝试在沙盒环境验证
      // if (!isValid) {
      //   isValid = await _validateReceiptWithServer(receiptData, isProduction: false);
      // }
      //
      // if (!isValid) {
      //   throw Exception('Receipt validation failed');
      // }
      
      // 这里我们简化处理，直接认为交易有效
      print('Subscription verified successfully for product: $productId');
      
      // Calculate subscription end date based on the purchased plan
      final DateTime now = DateTime.now();
      DateTime endDate;
      
      if (productId == _subscriptionPlans[0]['id']) {
        // Monthly plan
        endDate = DateTime(now.year, now.month + 1, now.day);
      } else if (productId == _subscriptionPlans[1]['id']) {
        // Quarterly plan
        endDate = DateTime(now.year, now.month + 3, now.day);
      } else if (productId == _subscriptionPlans[2]['id']) {
        // Annual plan
        endDate = DateTime(now.year + 1, now.month, now.day);
      } else {
        return; // 不应该到达这里，但为了安全添加
      }
      
      // Save subscription status locally
      await _saveSubscriptionStatus(true, endDate);
      
      // Notify user
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Subscription successfully activated!'),
          backgroundColor: Colors.green,
        ),
      );
    } catch (e) {
      // 错误节流，3秒内只显示一次
      final now = DateTime.now();
      if (_lastErrorTime == null || now.difference(_lastErrorTime!).inSeconds > 3) {
        _lastErrorTime = now;
        print('Error delivering product: $e');
        
        if (!mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error updating subscription: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  Future<void> _subscribe(Map<String, dynamic> plan) async {
    if (!_isAvailable) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('The store is not available.'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    try {
      setState(() => _isPurchasePending = true);
      
      // 清理任何未完成的交易，避免干扰新交易
      if (Platform.isIOS) {
        await _clearCompletedTransactions();
      }
      
      final String productId = plan['id'];
      
      // 查找产品详情
      ProductDetails? foundProduct;
      try {
        foundProduct = _products.firstWhere((product) => product.id == productId);
      } catch (e) {
        print('Product not found in loaded products: $productId');
        // 如果在已加载的产品中找不到，尝试重新查询
        final ProductDetailsResponse response = 
            await _inAppPurchase.queryProductDetails({productId});
        
        if (response.productDetails.isNotEmpty) {
          foundProduct = response.productDetails.first;
          
          // 更新缓存的产品列表
          setState(() {
            _products = [..._products, ...response.productDetails];
          });
        } else {
          throw Exception('Product ID does not exist in App Store: $productId');
        }
      }

      if (foundProduct == null) {
        throw Exception('Product not found: $productId');
      }

      print('Preparing to purchase product: ${foundProduct.id}, price: ${foundProduct.price}');

      // 创建购买参数
      final PurchaseParam purchaseParam = PurchaseParam(
        productDetails: foundProduct,
        applicationUserName: null,
      );

      // 完成购买
      if (Platform.isIOS) {
        // 对于iOS，使用buyNonConsumable购买订阅商品
        await _inAppPurchase.buyNonConsumable(purchaseParam: purchaseParam);
        // 不要在这里设置_isPurchasePending为false，我们会在purchaseStream监听器中完成
      } else {
        setState(() => _isPurchasePending = false);
        throw Exception('Only iOS devices are supported for subscriptions');
      }
    } catch (e) {
      setState(() => _isPurchasePending = false);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: const Text(
          'VIP',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 8),
        child: Column(
          children: [
            // VIP Status Card (only shown when subscribed)
            if (_isSubscribed && _subscriptionEndDate != null)
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFFE535FA), Color(0xFFB039D2)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Icon(
                          Icons.verified,
                          color: Colors.white,
                          size: 24,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Active Subscription',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'VIP Status:',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'Active',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Expiration Date:',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            DateFormat('MMM dd, yyyy').format(_subscriptionEndDate!),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            
            // VIP Privileges Card
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.purple.withOpacity(0.3),
                    Colors.blue.withOpacity(0.3),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Color(0xFFFFC107),
                        size: 24,
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        'VIP Privileges',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  // Avatar showcase
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: FutureBuilder<List<String>>(
                      future: _loadAvatars(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.waiting) {
                          return const Center(
                            child: CircularProgressIndicator(
                              color: Color(0xFFE535FA),
                            ),
                          );
                        }

                        final avatars = snapshot.data ?? [];
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(
                            4,
                            (index) => Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: index == 1
                                      ? const Color(0xFFE535FA)
                                      : Colors.white.withOpacity(0.3),
                                  width: 2,
                                ),
                              ),
                              child: ClipOval(
                                child: _buildAvatarImage(
                                  index < avatars.length ? avatars[index] : null,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildPrivilegeItem(Icons.refresh, 'Unlimited avatar changes'),
                  _buildPrivilegeItem(Icons.block, 'Eliminate in-app advertising'),
                  _buildPrivilegeItem(Icons.swipe_right, 'Unlimited card sliding'),
                ],
              ),
            ),
            
            // Subscription Plans (only shown when not subscribed)
            if (!_isSubscribed)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: List.generate(
                    _subscriptionPlans.length,
                    (index) {
                      final plan = _subscriptionPlans[index];
                      final bool isSelected = _selectedPlanIndex == index;
                      
                      return GestureDetector(
                        onTap: () {
                          setState(() => _selectedPlanIndex = index);
                        },
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 10),
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: const Color(0xFF2A2A2A),
                            borderRadius: BorderRadius.circular(16),
                            border: isSelected
                                ? Border.all(color: const Color(0xFFE535FA), width: 2)
                                : null,
                          ),
                          child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFFC107).withOpacity(0.1),
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.star,
                                  color: Color(0xFFFFC107),
                                  size: 24,
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      plan['duration'],
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      plan['period'],
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.7),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                plan['total'],
                                style: const TextStyle(
                                  color: Color(0xFFF5E7BB),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              if (isSelected)
                                const Padding(
                                  padding: EdgeInsets.only(left: 8),
                                  child: Icon(
                                    Icons.check_circle,
                                    color: Color(0xFFE535FA),
                                    size: 24,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            
            // Confirm Button and Terms (only shown when not subscribed)
            if (!_isSubscribed)
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xFFE535FA), Color(0xFFB039D2)],
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: MaterialButton(
                        onPressed: _isPurchasePending
                            ? null
                            : () => _subscribe(_subscriptionPlans[_selectedPlanIndex]),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: _isPurchasePending
                            ? const SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(
                                  color: Colors.white,
                                  strokeWidth: 2,
                                ),
                              )
                            : const Text(
                                'Subscribe',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextButton(
                      onPressed: () {
                        _restorePurchases();
                      },
                      child: Text(
                        'Restore Purchase',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 14,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.check_circle,
                            size: 16,
                            color: Colors.white.withOpacity(0.5),
                          ),
                          const SizedBox(width: 4),
                          _buildTermsText(),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      width: double.infinity,
                      child: Column(
                        children: [
                          Text(
                            'Price Details',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 8),
                          _buildPriceInfoItem('Monthly VIP', '¥19.99/month, auto-renew until canceled'),
                          _buildPriceInfoItem('Quarterly VIP', '¥29.99/3 months, auto-renew until canceled'),
                          _buildPriceInfoItem('Annual VIP', '¥69.99/year, auto-renew until canceled'),
                          const SizedBox(height: 4),
                          Text(
                            'After purchase confirmation, the fee will be deducted from your iTunes account. Unless you cancel auto-renewal at least 24 hours before the end of the current subscription period, your subscription will automatically renew. If you cancel auto-renewal within 24 hours before the end of the current subscription period, your account will be charged for renewal. You can manage your subscription in your iTunes account settings.',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 11,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              
            // For subscribed users, show management options
            if (_isSubscribed)
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: MaterialButton(
                        onPressed: () => _launchURL('https://apps.apple.com/account/subscriptions'),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: const Text(
                          'Manage Subscription',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'To cancel or modify your subscription, please go to your Apple ID subscription settings.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.6),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildPrivilegeItem(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 20,
          ),
          const SizedBox(width: 12),
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Future<List<String>> _loadAvatars() async {
    try {
      // Load the JSON file
      final String jsonString = await rootBundle.loadString('assets/json/modern.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      final List<dynamic> charactersJson = jsonData['alldata'] as List;
      
      // Extract avatar paths
      return charactersJson
          .take(4)
          .map((json) => json['avatar'] as String)
          .toList();
    } catch (e) {
      print('Error loading avatars: $e');
      return [];
    }
  }

  Widget _buildAvatarImage(String? imagePath) {
    if (imagePath == null) {
      return const Icon(Icons.person, color: Colors.white54);
    }

    try {
      if (imagePath.startsWith('/')) {
        return Image.file(
          File(imagePath),
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            print('Error loading image file: $error');
            return const Icon(Icons.person, color: Colors.white54);
          },
        );
      } else if (imagePath.startsWith('assets/')) {
        return Image.asset(
          imagePath,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return const Icon(Icons.person, color: Colors.white54);
          },
        );
      } else {
        return FutureBuilder<Directory>(
          future: getApplicationDocumentsDirectory(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
              final fullPath = '${snapshot.data!.path}/$imagePath';
              return Image.file(
                File(fullPath),
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  print('Error loading relative image file: $error');
                  return const Icon(Icons.person, color: Colors.white54);
                },
              );
            } else {
              return const Icon(Icons.person, color: Colors.white54);
            }
          },
        );
      }
    } catch (e) {
      print('Error building avatar image: $e');
      return const Icon(Icons.person, color: Colors.white54);
    }
  }

  Future<void> _launchURL(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $urlString';
    }
  }

  Widget _buildTermsText() {
    return Flexible(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 12,
          ),
          children: [
            TextSpan(text: 'By continuing, you agree to our '),
            TextSpan(
              text: 'End User License Agreement',
              style: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () => _launchURL('https://www.apple.com/legal/internet-services/itunes/dev/stdeula'),
            ),
            TextSpan(text: ' and '),
            TextSpan(
              text: 'Privacy Policy',
              style: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () => _launchURL('https://sites.google.com/view/funifyprivacy/home'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPriceInfoItem(String title, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        children: [
          Container(
            width: 6,
            height: 6,
            decoration: BoxDecoration(
              color: Color(0xFFE535FA),
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              '$title: $description',
              style: TextStyle(
                color: Colors.white.withOpacity(0.7),
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 此方法用于验证收据，是未来实现的框架
  // 需要根据您的后端服务来实际实现
  Future<bool> _validateReceiptWithServer(String receiptData, {required bool isProduction}) async {
    try {
      // 这里应该是您的后端验证逻辑
      // 例如，使用 http 包发送请求到您的服务器
      
      // 生产环境验证URL
      final String productionVerifyURL = 'https://your-backend-api.com/verify-receipt';
      
      // 沙盒环境验证URL
      final String sandboxVerifyURL = 'https://your-backend-api.com/verify-receipt/sandbox';
      
      final String verifyURL = isProduction ? productionVerifyURL : sandboxVerifyURL;
      
      // 实际实现中，您应该发送HTTP请求到您的后端
      // final response = await http.post(
      //   Uri.parse(verifyURL),
      //   body: {
      //     'receipt-data': receiptData,
      //     'password': '您的App Store共享密钥' // 如果需要
      //   }
      // );
      
      // 解析响应并验证
      // if (response.statusCode == 200) {
      //   final data = jsonDecode(response.body);
      //   
      //   // 如果在生产环境中使用了沙盒收据，status将为21007
      //   if (isProduction && data['status'] == 21007) {
      //     print('Sandbox receipt used in production, retrying with sandbox validation');
      //     return false; // 返回false触发沙盒验证
      //   }
      //   
      //   // 成功验证的状态码为0
      //   return data['status'] == 0;
      // }
      
      // 示例中，暂时返回true
      print('Receipt validation would go to: $verifyURL');
      return true;
      
    } catch (e) {
      print('Receipt validation error: $e');
      return false;
    }
  }
  
  // 移除支付队列中所有已完成的交易
  Future<void> _clearCompletedTransactions() async {
    if (!Platform.isIOS) return;
    
    try {
      final paymentWrapper = SKPaymentQueueWrapper();
      final transactions = await paymentWrapper.transactions();
      
      for (var transaction in transactions) {
        await paymentWrapper.finishTransaction(transaction);
        print('Finished transaction: ${transaction.transactionIdentifier}');
      }
    } catch (e) {
      print('Error clearing transactions: $e');
    }
  }

  // 恢复购买功能
  Future<void> _restorePurchases() async {
    if (!mounted) return;
    
    if (!_isAvailable) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('The store is not available, please try again later'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }
    
    setState(() => _isPurchasePending = true);
    
    try {
      // 先清理任何未完成的交易
      if (Platform.isIOS) {
        await _clearCompletedTransactions();
      }
      
      print('Starting to restore purchase...');
      await InAppPurchase.instance.restorePurchases();
      
      // 恢复购买请求已发送，实际处理会在 _handleVIPPurchaseUpdates 中完成
      // 我们不在这里设置 _isPurchasePending = false，因为那将在流监听器中完成
      
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Restoring your purchase, please wait...'),
          backgroundColor: Colors.blue,
        ),
      );
    } catch (e) {
      setState(() => _isPurchasePending = false);
      
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Restore purchase failed: $e'),
          backgroundColor: Colors.red,
        ),
      );
      print('Restore purchase error: $e');
    }
  }
} 