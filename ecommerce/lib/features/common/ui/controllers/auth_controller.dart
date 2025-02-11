import 'dart:convert';

import 'package:ecommerce/features/auth/data/models/profile_model.dart';
import 'package:ecommerce/features/auth/data/models/auth_success_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthController {
  final String _accessTokenKey = 'access-token';
  final String _profileDataKey = 'access-token';

  String? accessToken;
  User? profileModel;

  Future<void> saveUserData(String accessToken, User userModel) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString(_accessTokenKey, accessToken);
    await sharedPreferences.setString(
        _profileDataKey, jsonEncode(userModel.toJson()));
    profileModel = userModel;
  }

  Future<void> getUserData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    accessToken = sharedPreferences.getString(_accessTokenKey);
    profileModel = User.fromJson(
      jsonDecode(sharedPreferences.getString(_profileDataKey)!),
    );
  }

  Future<bool> isUserLoggedIn() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String? token = sharedPreferences.getString(_accessTokenKey);
    if (token != null) {
      await getUserData();
      return true;
    }
    return false;
  }

  Future<void> clearData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.clear();
  }
}
