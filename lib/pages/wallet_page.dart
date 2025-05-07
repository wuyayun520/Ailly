import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:io';
import 'dart:async';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:in_app_purchase_storekit/in_app_purchase_storekit.dart';
import 'package:in_app_purchase_storekit/store_kit_wrappers.dart';
import '../services/wallet_service.dart';
import '../constants/iap_constants.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  // Credit type keys from WalletService
  static const String _messageQuotaKey = WalletService.messageQuotaKey;
  static const String _homePageViewsKey = WalletService.homePageViewsKey;
  static const String _superCharKey = WalletService.superCharKey;
  static const String _specialFeaturesKey = WalletService.specialFeaturesKey;

  // Current credit amounts
  int _messageQuota = 0;
  int _homePageViews = 0;
  int _superChar = 0;
  int _specialFeatures = 0;

  // Selected credit type (0-3)
  int _selectedCreditType = 0;
  
  // In-App Purchase related properties
  late InAppPurchase _inAppPurchase;
  StreamSubscription<List<PurchaseDetails>>? _subscription;
  bool _isPurchasePending = false;
  bool _isIAPAvailable = false;
  
  // 添加一个集合来跟踪正在处理中的产品ID
  final Set<String> _pendingProductIds = <String>{};
  
  // 存储查询到的产品信息
  List<ProductDetails> _products4Types = [];
  bool _isProductsLoaded = false;
  bool _isLoadingProducts = false;

  // Products list with their details
  final List<List<Map<String, dynamic>>> _productsConfig = [
    // Message Quota (Funify) products
    [
      {'id': IAPConstants.COIN_SMALL, 'price': 5.99, 'amount': 5},
      {'id': IAPConstants.COIN_MEDIUM, 'price': 15.99, 'amount': 15},
      {'id': IAPConstants.COIN_LARGE, 'price': 19.99, 'amount': 19},
    ],
    // Home Page Views (Funify2) products
    [
      {'id': IAPConstants.VIEW_SMALL, 'price': 6.99, 'amount': 6},
      {'id': IAPConstants.VIEW_MEDIUM, 'price': 19.99, 'amount': 19},
      {'id': IAPConstants.VIEW_LARGE, 'price': 29.99, 'amount': 29},
    ],
    // Super Char (Funify3) products
    [
      {'id': IAPConstants.CHAR_SMALL, 'price': 8.99, 'amount': 8},
      {'id': IAPConstants.CHAR_MEDIUM, 'price': 19.99, 'amount': 19},
      {'id': IAPConstants.CHAR_LARGE, 'price': 39.99, 'amount': 39},
    ],
    // Special Features (Funify4) products
    [
      {'id': IAPConstants.FEATURE_SMALL, 'price': 8.99, 'amount': 8},
      {'id': IAPConstants.FEATURE_MEDIUM, 'price': 19.99, 'amount': 19},
      {'id': IAPConstants.FEATURE_LARGE, 'price': 39.99, 'amount': 39},
    ],
  ];

  // Credit type names from WalletService
  final List<String> _creditTypeNames = WalletService.creditTypeNames;

  @override
  void initState() {
    super.initState();
    _loadCredits();
    
    // 初始化IAP
    _inAppPurchase = InAppPurchase.instance;
    
    _clearPendingTransactions(); // 先清理待处理的交易
    _initInAppPurchase();
  }
  
  @override
  void dispose() {
    _subscription?.cancel();
    // 清理待处理状态
    _isPurchasePending = false;
    _pendingProductIds.clear();
    super.dispose();
  }
  
  // 清理待处理的交易
  Future<void> _clearPendingTransactions() async {
    if (Platform.isIOS) {
      try {
        print('Cleaning up pending iOS transactions...');
        final transactions = await SKPaymentQueueWrapper().transactions();
        for (var transaction in transactions) {
          // 只处理钱包相关的产品ID
          if (IAPConstants.isWalletProduct(transaction.payment.productIdentifier)) {
            try {
              print('Completing wallet transaction: ${transaction.transactionIdentifier}');
              await SKPaymentQueueWrapper().finishTransaction(transaction);
            } catch (e) {
              print('Failed to complete transaction: $e');
            }
          }
        }
        print('Wallet transaction cleanup completed');
      } catch (e) {
        print('Error during transaction cleanup: $e');
      }
    }
  }
  
  // 初始化应用内购买
  Future<void> _initInAppPurchase() async {
    try {
      // 检查IAP是否可用
      final bool available = await _inAppPurchase.isAvailable();
      setState(() {
        _isIAPAvailable = available;
      });
      
      if (available) {
        // 设置购买监听
        final Stream<List<PurchaseDetails>> purchaseUpdated = _inAppPurchase.purchaseStream;
        _subscription = purchaseUpdated.listen(
          _listenToPurchaseUpdated,
          onDone: () => _subscription?.cancel(),
          onError: (error) {
            print('Purchase stream listening error: $error');
            setState(() => _isIAPAvailable = false);
          },
        );
        print('IAP initialized successfully, ready for purchases');
      } else {
        print('IAP not available. Reason: ' + (Platform.isIOS ? "iOS StoreKit interface not properly initialized" : "In-app purchase service not available"));
      }
    } catch (e) {
      print('Error initializing IAP: $e');
      setState(() => _isIAPAvailable = false);
    }
  }
  
  // 加载单个产品详情
  Future<ProductDetails?> _loadSingleProduct(String productId) async {
    if (!mounted) return null;
    
    try {
      print('Querying product details for: $productId');
      
      // 查询单个产品
      final ProductDetailsResponse response = 
          await _inAppPurchase.queryProductDetails({productId});
      
      if (response.notFoundIDs.isNotEmpty) {
        print('Product ID not found: $productId');
        return null;
      }
      
      if (response.productDetails.isEmpty) {
        print('No product details returned for: $productId');
        return null;
      }
      
      // 将产品添加到已加载列表中
      final product = response.productDetails.first;
      
      if (mounted) {
        setState(() {
          // 添加到已加载产品列表，避免重复查询
          if (!_products4Types.any((p) => p.id == product.id)) {
            _products4Types.add(product);
          }
          _isProductsLoaded = true;
        });
      }
      
      print('Successfully loaded product: ${product.id}(${product.price})');
      return product;
    } catch (e) {
      print('Failed to load product details: $e');
      return null;
    }
  }
  
  // 查找产品详情，如果不存在则加载
  Future<ProductDetails?> _findOrLoadProductDetails(String productId) async {
    // 先从已加载的产品中查找
    try {
      final existingProduct = _products4Types.firstWhere((product) => product.id == productId);
      return existingProduct;
    } catch (e) {
      // 如果找不到，加载产品
      return await _loadSingleProduct(productId);
    }
  }
  
  // 监听购买更新
  Future<void> _listenToPurchaseUpdated(List<PurchaseDetails> purchaseDetailsList) async {
    print('Purchase updates received: ${purchaseDetailsList.length} transactions');
    for (final purchaseDetails in purchaseDetailsList) {
      final productId = purchaseDetails.productID;
      
      // 只处理钱包相关的产品
      if (!IAPConstants.isWalletProduct(productId)) {
        continue;
      }
      
      print('Processing wallet transaction: ${purchaseDetails.status}, Product ID: $productId');
      
      if (purchaseDetails.status == PurchaseStatus.pending) {
        setState(() {
          _isPurchasePending = true;
          // 添加到待处理集合
          _pendingProductIds.add(productId);
        });
        print('Transaction in progress...');
      } else {
        if (purchaseDetails.status == PurchaseStatus.error) {
          _handlePurchaseError(purchaseDetails.error!);
        } else if (purchaseDetails.status == PurchaseStatus.purchased ||
                  purchaseDetails.status == PurchaseStatus.restored) {
          print('Transaction successful or restored');
          await _deliverProduct(purchaseDetails);
        } else if (purchaseDetails.status == PurchaseStatus.canceled) {
          _showMessage('Purchase canceled');
          print('Transaction canceled');
        }
        
        // 完成购买以避免交易队列堵塞 - 无论成功失败都需要完成交易
        if (purchaseDetails.pendingCompletePurchase) {
          print('Attempting to complete transaction...');
          try {
            await _inAppPurchase.completePurchase(purchaseDetails);
            print('Transaction completed');
          } catch (e) {
            print('Failed to complete transaction: $e');
            // 如果completePurchase失败，尝试直接使用原生方法完成
            if (Platform.isIOS) {
              try {
                final transactions = await SKPaymentQueueWrapper().transactions();
                for (var transaction in transactions) {
                  if (transaction.transactionIdentifier == purchaseDetails.purchaseID) {
                    await SKPaymentQueueWrapper().finishTransaction(transaction);
                    print('Transaction completed via native method');
                    break;
                  }
                }
              } catch (e2) {
                print('Failed to complete transaction via native method: $e2');
              }
            }
          }
        }
        
        // 更新UI状态并从待处理集合中移除
        setState(() {
          _pendingProductIds.remove(productId);
          
          // 如果没有待处理的产品，则重置全局标志
          if (_pendingProductIds.isEmpty) {
            _isPurchasePending = false;
          }
        });
      }
    }
  }
  
  // 处理购买错误
  void _handlePurchaseError(IAPError error) {
    print('Purchase error: ${error.message} (${error.code})');
    
    // 根据错误类型显示不同的错误消息
    String errorMessage = 'Purchase failed';
    
    switch (error.code) {
      case 'storekit_duplicate_product_object':
        errorMessage = 'There is a pending purchase. Please try again later';
        _clearPendingTransactions(); // 自动清理待处理交易
        break;
      case 'purchase_error':
        errorMessage = 'Unable to complete purchase. Please check your payment method';
        break;
      case 'product_not_found':
        errorMessage = 'Product is not available for purchase';
        break;
      default:
        errorMessage = 'Purchase failed: ${error.message}';
    }
    
    _showError(errorMessage);
  }
  
  // 交付产品（增加积分）
  Future<void> _deliverProduct(PurchaseDetails purchaseDetails) async {
    final productId = purchaseDetails.productID;
    
    // 确保是钱包产品
    if (!IAPConstants.isWalletProduct(productId)) {
      print('Skipping non-wallet product delivery: $productId');
      return;
    }
    
    // 寻找匹配的产品
    Map<String, dynamic>? matchedProduct;
    int typeIndex = -1;
    
    for (int i = 0; i < _productsConfig.length; i++) {
      for (final product in _productsConfig[i]) {
        if (product['id'] == productId) {
          matchedProduct = product;
          typeIndex = i;
          break;
        }
      }
      if (matchedProduct != null) break;
    }
    
    if (matchedProduct != null) {
      final int amount = matchedProduct['amount'] as int;
      
      // 根据类型更新积分
      setState(() {
        switch (typeIndex) {
          case 0:
            _messageQuota += amount;
            break;
          case 1:
            _homePageViews += amount;
            break;
          case 2:
            _superChar += amount;
            break;
          case 3:
            _specialFeatures += amount;
            break;
        }
        _isPurchasePending = false;
      });
      
      // 保存更新的积分
      await _saveCredits();
      
      // 显示成功消息
      _showMessage('Successfully purchased $amount ${_creditTypeNames[typeIndex]} credits!');
    } else {
      print('Product not found in config: $productId');
      setState(() {
        _isPurchasePending = false;
      });
    }
  }
  
  // 显示错误消息
  void _showError(String message) {
    if (!mounted) return;
    
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 3),
      ),
    );
  }
  
  // 显示一般消息
  void _showMessage(String message) {
    if (!mounted) return;
    
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  // Load credit amounts from SharedPreferences
  Future<void> _loadCredits() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      
      setState(() {
        _messageQuota = prefs.getInt(_messageQuotaKey) ?? 0;
        _homePageViews = prefs.getInt(_homePageViewsKey) ?? 0;
        _superChar = prefs.getInt(_superCharKey) ?? 0;
        _specialFeatures = prefs.getInt(_specialFeaturesKey) ?? 0;
      });
    } catch (e) {
      print('Error loading credits: $e');
    }
  }

  // Save credit amounts to SharedPreferences
  Future<void> _saveCredits() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      
      await prefs.setInt(_messageQuotaKey, _messageQuota);
      await prefs.setInt(_homePageViewsKey, _homePageViews);
      await prefs.setInt(_superCharKey, _superChar);
      await prefs.setInt(_specialFeaturesKey, _specialFeatures);
    } catch (e) {
      print('Error saving credits: $e');
    }
  }

  // 直接购买产品
  Future<void> _purchase(Map<String, dynamic> product) async {
    if (!mounted) return;
    
    if (!_isIAPAvailable) {
      _showError('In-app purchase is not available. Please check your device settings');
      return;
    }
    
    if (_isPurchasePending) {
      _showMessage('A purchase is already in progress');
      return;
    }
    
    final productId = product['id'] as String;
    
    // 检查特定产品是否已有待处理交易
    if (_pendingProductIds.contains(productId)) {
      _showMessage('This item is already being processed. Please wait');
      return;
    }
    
    try {
      // 设置购买中状态
      setState(() {
        _isPurchasePending = true;
        _pendingProductIds.add(productId);
      });
      
      // 在商店中查找产品详情或加载
      ProductDetails? productDetails = await _findOrLoadProductDetails(productId);
      
      if (productDetails == null) {
        _showError('Product not available in App Store');
        setState(() {
          _isPurchasePending = false;
          _pendingProductIds.remove(productId);
        });
        return;
      }
      
      print('Starting purchase for: ${productDetails.id}, price: ${productDetails.price}');
      
      // 创建购买参数
      final PurchaseParam purchaseParam = PurchaseParam(
        productDetails: productDetails,
        applicationUserName: null,
      );
      
      // 进行购买
      if (Platform.isIOS) {
        final bool purchaseStarted = await _inAppPurchase.buyConsumable(
          purchaseParam: purchaseParam,
        );
        
        if (!purchaseStarted) {
          _showError('Unable to start purchase. Please try again');
          setState(() {
            _isPurchasePending = false;
            _pendingProductIds.remove(productId);
          });
        } else {
          _showMessage('Processing purchase...');
        }
      } else {
        _showError('Currently only iOS devices are supported');
        setState(() {
          _isPurchasePending = false;
          _pendingProductIds.remove(productId);
        });
      }
    } catch (e) {
      print('Error during purchase: $e');
      setState(() {
        _isPurchasePending = false;
        _pendingProductIds.remove(productId);
      });
      
      String errorMessage = 'Purchase failed';
      if (e.toString().contains('storekit_duplicate_product_object')) {
        errorMessage = 'There is a pending transaction. Please try again later';
        await _clearPendingTransactions();
      } else if (e.toString().contains('product_not_found')) {
        errorMessage = 'Product is not available for purchase';
      } else {
        errorMessage = 'Unable to complete purchase: ${e.toString()}';
      }
      
      _showError(errorMessage);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        title: const Text(
          'Wallet',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          // Credit type cards
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                // First credit card (always shown with different style)
                _buildCreditCard(
                  isFirst: true,
                  index: 0,
                  creditAmount: _messageQuota,
                  label: _creditTypeNames[0],
                ),
                const SizedBox(height: 12),
                
                // Other credit cards
                _buildCreditCard(
                  isFirst: false,
                  index: 1,
                  creditAmount: _homePageViews,
                  label: _creditTypeNames[1],
                ),
                const SizedBox(height: 12),
                
                _buildCreditCard(
                  isFirst: false,
                  index: 2,
                  creditAmount: _superChar,
                  label: _creditTypeNames[2],
                ),
                const SizedBox(height: 12),
                
                _buildCreditCard(
                  isFirst: false,
                  index: 3,
                  creditAmount: _specialFeatures,
                  label: _creditTypeNames[3],
                ),
                const SizedBox(height: 24),
                
                // Purchase options - now in a scrollable row
                SizedBox(
                  height: 210, // Fixed height for the scroll view
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    children: [
                      for (int i = 0; i < 3; i++)
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: _buildPurchaseOption(_productsConfig[_selectedCreditType][i]),
                        ),
                    ],
                  ),
                ),
                
                // Purchase pending indicator - moved up above the purchase options
                if (_isPurchasePending)
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: const Center(
                      child: Column(
                        children: [
                          CircularProgressIndicator(
                            color: Color(0xFFE535FA),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Processing purchase...',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                
                const SizedBox(height: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Build credit card widget
  Widget _buildCreditCard({
    required bool isFirst,
    required int index,
    required int creditAmount,
    required String label,
  }) {
    final bool isSelected = _selectedCreditType == index;
    
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedCreditType = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xFF2A2A2A),
          borderRadius: BorderRadius.circular(16),
          border: isSelected
              ? Border.all(color: const Color(0xFFE535FA), width: 2)
              : isFirst
                  ? Border.all(color: const Color(0xFFF5E7BB).withOpacity(0.3), width: 1)
                  : null,
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: const Color(0xFFE535FA).withOpacity(0.2),
                    blurRadius: 8,
                    spreadRadius: 1,
                  )
                ]
              : null,
        ),
        child: Row(
          children: [
            // Coin icon with star
            Stack(
              alignment: Alignment.topLeft,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFFFC107),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 28,
                    ),
                  ),
                ),
                const Positioned(
                  top: 0,
                  left: 0,
                  child: Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$creditAmount',
                    style: const TextStyle(
                      color: Color(0xFFF5E7BB),
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    label,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            if (isSelected)
              const Icon(
                Icons.check_circle,
                color: Color(0xFFE535FA),
                size: 24,
              ),
          ],
        ),
      ),
    );
  }

  // Build purchase option widget
  Widget _buildPurchaseOption(Map<String, dynamic> product) {
    final productId = product['id'] as String;
    final amount = product['amount'] as int;
    
    // 尝试从预加载的产品中获取价格
    String priceLabel = '\$${product['price']}';
    if (_isProductsLoaded) {
      try {
        final productDetails = _products4Types.firstWhere((p) => p.id == productId);
        priceLabel = productDetails.price;
      } catch (_) {
        // 使用默认价格
      }
    }
    
    return Container(
      width: 110,
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
      decoration: BoxDecoration(
        color: const Color(0xFF2A2A2A),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '$amount',
            style: const TextStyle(
              color: Color(0xFFF5E7BB),
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            priceLabel,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            width: double.infinity,
            height: 36, // 减小高度
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Color(0xFFE535FA), Color(0xFFB039D2)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(18), // 调整圆角以匹配新高度
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: _isPurchasePending ? null : () => _purchase(product),
                borderRadius: BorderRadius.circular(18), // 匹配外层圆角
                child: const Center(
                  child: Text(
                    'Purchase',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14, // 减小字体大小
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
} 