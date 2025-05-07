class IAPConstants {
  // 钱包产品
  static const String COIN_SMALL = 'Funify1_5';
  static const String COIN_MEDIUM = 'Funify1_15';
  static const String COIN_LARGE = 'Funify1_19';
  
  // 主页浏览次数产品
  static const String VIEW_SMALL = 'Funify2_6';
  static const String VIEW_MEDIUM = 'Funify2_19';
  static const String VIEW_LARGE = 'Funify2_29';
  
  // 超级角色产品
  static const String CHAR_SMALL = 'Funify3_8';
  static const String CHAR_MEDIUM = 'Funify3_19';
  static const String CHAR_LARGE = 'Funify3_39';
  
  // 特殊功能产品
  static const String FEATURE_SMALL = 'Funify4_8';
  static const String FEATURE_MEDIUM = 'Funify4_19';
  static const String FEATURE_LARGE = 'Funify4_39';
  
  // VIP订阅产品
  static const String VIP_MONTHLY = 'FunifySub1_19';
  static const String VIP_QUARTERLY = 'FunifySub2_29';
  static const String VIP_YEARLY = 'FunifySub3_69';
  
  // 产品类型判断
  static bool isWalletProduct(String productId) {
    // 钱包产品以Funify1_、Funify2_、Funify3_、Funify4_开头
    return productId.startsWith('Funify1_') ||
           productId.startsWith('Funify2_') ||
           productId.startsWith('Funify3_') ||
           productId.startsWith('Funify4_');
  }
  
  static bool isSubscriptionProduct(String productId) {
    // 订阅产品以FunifySub开头
    return productId.startsWith('FunifySub');
  }
} 