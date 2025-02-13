import 'package:ecommerce/features/auth/ui/controllers/sign_in_controller.dart';
import 'package:ecommerce/features/auth/ui/controllers/otp_verification_controller.dart';
import 'package:ecommerce/features/auth/ui/controllers/sign_up_controller.dart';
import 'package:ecommerce/features/common/ui/controllers/auth_controller.dart';
import 'package:ecommerce/features/common/ui/controllers/category_list_controller.dart';
import 'package:ecommerce/features/common/ui/controllers/main_bottom_nav_controller.dart';
import 'package:ecommerce/features/common/ui/controllers/product_list_controller.dart';
import 'package:ecommerce/features/home/ui/controllers/popular_product_list_controller.dart';
import 'package:ecommerce/features/home/ui/controllers/product_list_by_remark_controller.dart';
import 'package:ecommerce/features/home/ui/controllers/slider_list_controller.dart';
import 'package:ecommerce/features/product/ui/controllers/product_details_controller.dart';
import 'package:ecommerce/services/network_caller/network_caller.dart';
import 'package:get/get.dart';

class ControllerBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(MainBottomNavController());
    Get.put(AuthController());
    Get.put(NetworkCaller());
    Get.put(SignInController());
    Get.put(SignUpController());
    Get.put(OtpVerificationController());
    Get.put(SliderListController());
    Get.put(CategoryListController());
    Get.put(ProductListByRemarkController());
    Get.put(PopularProductListController());
    Get.put(ProductListController());
    Get.put(ProductDetailsController());
  }
}
