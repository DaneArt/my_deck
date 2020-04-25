import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:mydeck/features/sign_in/data/models/user_model.dart';
import 'package:mydeck/features/sign_in/helpers/auth_facade.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String kUserDataKey = 'current_user_shared_prefs';
const String kAccessTokenKey = 'current_user_access_token';
const String kRefreshToken = 'current_user_refresh_token';

class UserService {
  setCurrentUser(UserModel userModel) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(kUserDataKey, json.encode(userModel.toJson()));
  }

  Future<UserModel> get currentUser async => UserModel.fromJson(json
      .decode((await SharedPreferences.getInstance()).getString(kUserDataKey)));

  setAccessToken(String newToken) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(kAccessTokenKey, newToken);
  }

  Future<String> get accessToken async =>
      'Bearer ' +
      (await SharedPreferences.getInstance()).getString(kAccessTokenKey);

  setRefreshToken(String newToken) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(kRefreshToken, newToken);
  }

  Future<String> get refreshToken async =>
      'Bearer' +
      (await SharedPreferences.getInstance()).getString(kRefreshToken);
}
