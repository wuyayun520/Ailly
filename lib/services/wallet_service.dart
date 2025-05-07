import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../pages/wallet_page.dart';

class WalletService {
  // Credit type keys for SharedPreferences - same as in WalletPage
  static const String messageQuotaKey = 'message_quota';
  static const String homePageViewsKey = 'home_page_views';
  static const String superCharKey = 'super_char';
  static const String specialFeaturesKey = 'special_features';

  // Credit type names
  static const List<String> creditTypeNames = [
    'Message quota',
    'Use notes',
    'Super characters',
    'Ask photos',
  ];

  // Get current credit amount for a specific type
  static Future<int> getCredit(String key) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return prefs.getInt(key) ?? 0;
    } catch (e) {
      print('Error getting credit: $e');
      return 0;
    }
  }

  // Set credit amount for a specific type
  static Future<bool> setCredit(String key, int value) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      return await prefs.setInt(key, value);
    } catch (e) {
      print('Error setting credit: $e');
      return false;
    }
  }

  // Consume one credit of a specific type
  static Future<bool> consumeCredit(String key) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final currentValue = prefs.getInt(key) ?? 0;
      
      if (currentValue <= 0) {
        return false; // Not enough credits
      }
      
      return await prefs.setInt(key, currentValue - 1);
    } catch (e) {
      print('Error consuming credit: $e');
      return false;
    }
  }

  // Check if there are enough credits and consume one if there are
  // Returns: true if credit was successfully consumed, false otherwise
  static Future<bool> checkAndConsumeCredit(BuildContext context, String creditKey, String featureName) async {
    // Check if there are enough credits
    final credits = await getCredit(creditKey);
    
    if (credits <= 0) {
      // Show dialog to redirect to wallet
      final shouldRedirect = await showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: const Color(0xFF1E1E1E),
          title: const Text(
            'Insufficient Credits',
            style: TextStyle(color: Colors.white),
          ),
          content: Text(
            'You need 1 credit to use the $featureName feature. Would you like to purchase more credits?',
            style: const TextStyle(color: Colors.white70),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text('Cancel', style: TextStyle(color: Colors.grey)),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: const Text('Go to Wallet', style: TextStyle(color: Color(0xFFE535FA))),
            ),
          ],
        ),
      ) ?? false;
      
      if (shouldRedirect) {
        // Navigate to wallet page
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const WalletPage(),
          ),
        );
      }
      
      return false;
    }
    
    // There are enough credits, consume one
    return await consumeCredit(creditKey);
  }
} 