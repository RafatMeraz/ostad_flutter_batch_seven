import 'package:ecommerce/app/urls.dart';
import 'package:ecommerce/features/auth/data/models/auth_success_model.dart';
import 'package:ecommerce/features/common/ui/controllers/auth_controller.dart';
import 'package:ecommerce/services/network_caller/network_caller.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  bool _inProgress = false;

  bool get inProgress => _inProgress;

  String? _errorMessage;

  String? get errorMessage => _errorMessage;

  Future<bool> signIn(String email, String password) async {
    bool isSuccess = false;
    _inProgress = true;
    update();
    final requestParams = {"email": email, "password": password};
    final NetworkResponse response = await Get.find<NetworkCaller>()
        .postRequest(Urls.signInUrl, body: requestParams);
    if (response.isSuccess) {
      AuthSuccessModel signInModel = AuthSuccessModel.fromJson(response.responseData);
      await Get.find<AuthController>().saveUserData(
        signInModel.data!.token!,
        signInModel.data!.user!,
      );
      _errorMessage = null;
      isSuccess = true;
    } else {
      _errorMessage = response.errorMessage;
    }
    _inProgress = false;
    update();
    return isSuccess;
  }
}
