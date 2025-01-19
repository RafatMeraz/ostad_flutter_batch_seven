import 'package:ecommerce/app/urls.dart';
import 'package:ecommerce/features/product/data/models/product_details_model.dart';
import 'package:ecommerce/services/network_caller/network_caller.dart';
import 'package:get/get.dart';

class ProductDetailsController extends GetxController {
  bool _inProgress = false;

  bool get inProgress => _inProgress;

  ProductDetailsModel? _productDetailsModel;

  ProductDetails? get productDetails => _productDetailsModel?.data!.first;

  String? _errorMessage;

  String? get errorMessage => _errorMessage;

  Future<bool> getProductDetails(int productId) async {
    bool isSuccess = false;
    _inProgress = true;
    update();
    final NetworkResponse response = await Get.find<NetworkCaller>()
        .getRequest(Urls.productDetailsUrl(productId));
    if (response.isSuccess) {
      _productDetailsModel =
          ProductDetailsModel.fromJson(response.responseData);
      isSuccess = true;
    } else {
      _errorMessage = response.errorMessage;
    }
    _inProgress = false;
    update();
    return isSuccess;
  }
}
