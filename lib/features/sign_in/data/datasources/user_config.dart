import 'dart:convert';

import 'package:mydeck/features/sign_in/data/datasources/user_datasource.dart';
import 'package:mydeck/features/sign_in/data/models/user_model.dart';

import '../../../../main.dart';

const String kUserDataKey = 'current_user_shared_prefs';
const String kAccessTokenKey = 'current_user_access_token';
const String kRefreshToken = 'current_user_refresh_token';

class UserConfig {
  static set currentUser(UserModel userModel) =>
      App.localStorage.setString(kUserDataKey, json.encode(userModel.toJson()));

  static UserModel get currentUser =>
      App.localStorage.getString(kUserDataKey) != null
          ? UserModel.fromJson(
              json.decode(App.localStorage.getString(kUserDataKey)))
          : null;

  static set accessToken(String newToken) =>
      App.localStorage.setString(kAccessTokenKey, newToken);

  static get accessToken => App.localStorage.getString(kAccessTokenKey);

  static set refreshToken(String newToken) =>
      App.localStorage.setString(kRefreshToken, newToken);

  static String get refreshToken => App.localStorage.getString(kRefreshToken);

  static Future<bool> get isSessionValid async =>
      (await UserDataSourceImpl().refreshTokens()).isNone();
}
