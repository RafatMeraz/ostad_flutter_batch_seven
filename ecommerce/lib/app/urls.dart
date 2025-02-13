class Urls {
  static const String _baseUrl = 'https://ecom-rs8e.onrender.com/api';

  static const String signInUrl = '$_baseUrl/auth/login';
  static const String signUpUrl = '$_baseUrl/auth/signup';

  static String verifyOtpUrl = '$_baseUrl/auth/verify-otp';
  static String homeSliderUrl = '$_baseUrl/slides';

  static String readProfile = '$_baseUrl/ReadProfile';
  static String bannerListUrl = '$_baseUrl/ListProductSlider';
  static String categoryListUrl = '$_baseUrl/categories';

  static String productListByRemarkUrl(String remark) =>
      '$_baseUrl/ListProductByRemark/$remark';

  static String productListByCategoryUrl(int categoryId) =>
      '$_baseUrl/ListProductByCategory/$categoryId';

  static String productDetailsUrl(int productId) =>
      '$_baseUrl/ProductDetailsById/$productId';
}