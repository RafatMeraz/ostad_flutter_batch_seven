class Urls {
  static const String _baseUrl = 'https://ecommerce-api.codesilicon.com/api';

  static String verifyEmailUrl(String email) => '$_baseUrl/UserLogin/$email';

  static String verifyOtpUrl(String email, String otp) =>
      '$_baseUrl/VerifyLogin/$email/$otp';
  static String readProfile = '$_baseUrl/ReadProfile';
  static String bannerListUrl = '$_baseUrl/ListProductSlider';
  static String categoryListUrl = '$_baseUrl/CategoryList';

  static String productListByRemarkUrl(String remark) =>
      '$_baseUrl/ListProductByRemark/$remark';
}