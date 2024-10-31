import 'package:task_manager/data/models/user_model.dart';

class LoginModel {
  String? status;
  List<UserModel>? data;
  String? token;

  LoginModel({this.status, this.data, this.token});

  LoginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <UserModel>[];
      json['data'].forEach((v) {
        data!.add(UserModel.fromJson(v));
      });
    }
    token = json['token'];
  }
}