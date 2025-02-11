class AuthSuccessModel {
  int? code;
  String? status;
  String? msg;
  Data? data;

  AuthSuccessModel({this.code, this.status, this.msg, this.data});

  AuthSuccessModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    status = json['status'];
    msg = json['msg'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['status'] = this.status;
    data['msg'] = this.msg;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  String? token;
  User? user;

  Data({this.token, this.user});

  Data.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class User {
  String? sId;
  String? firstName;
  String? lastName;
  String? email;
  bool? emailVerified;
  String? phone;
  bool? phoneVerified;
  Null? avatarUrl;
  String? city;
  int? role;

  User(
      {this.sId,
        this.firstName,
        this.lastName,
        this.email,
        this.emailVerified,
        this.phone,
        this.phoneVerified,
        this.avatarUrl,
        this.city,
        this.role});

  User.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    emailVerified = json['email_verified'];
    phone = json['phone'];
    phoneVerified = json['phone_verified'];
    avatarUrl = json['avatar_url'];
    city = json['city'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['email'] = this.email;
    data['email_verified'] = this.emailVerified;
    data['phone'] = this.phone;
    data['phone_verified'] = this.phoneVerified;
    data['avatar_url'] = this.avatarUrl;
    data['city'] = this.city;
    data['role'] = this.role;
    return data;
  }
}
