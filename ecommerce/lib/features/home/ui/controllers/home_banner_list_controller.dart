import 'package:ecommerce/app/urls.dart';
import 'package:ecommerce/features/home/data/models/banner_list_model.dart';
import 'package:ecommerce/features/home/data/models/banner_model.dart';
import 'package:ecommerce/services/network_caller/network_caller.dart';
import 'package:get/get.dart';

class HomeBannerListController extends GetxController {
  bool _inProgress = false;

  bool get inProgress => _inProgress;

  BannerListModel? _bannerListModel;

  List<BannerModel> get bannerList => _bannerListModel?.bannerList ?? [];

  String? _errorMessage;

  String? get errorMessage => _errorMessage;

  Future<bool> getHomeBannerList() async {
    bool isSuccess = false;
    _inProgress = true;
    update();
    final NetworkResponse response =
        await Get.find<NetworkCaller>().getRequest(Urls.bannerListUrl);
    if (response.isSuccess) {
      _bannerListModel = BannerListModel.fromJson(response.responseData);
      isSuccess = true;
    } else {
      _errorMessage = response.errorMessage;
    }
    _inProgress = false;
    update();
    return isSuccess;
  }
}
