import 'package:ecommerce/features/home/data/models/banner_model.dart';

class BannerListModel {
  String? msg;
  List<BannerModel>? bannerList;

  BannerListModel({this.msg, this.bannerList});

  BannerListModel.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    if (json['data'] != null) {
      bannerList = <BannerModel>[];
      json['data'].forEach((v) {
        bannerList!.add(BannerModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['msg'] = this.msg;
    if (this.bannerList != null) {
      data['data'] = this.bannerList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
