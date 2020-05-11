import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mydeck/core/error/auth_failure.dart';
import 'package:mydeck/features/sign_in/data/models/user_model.dart';
import 'package:mydeck/features/sign_in/helpers/auth_facade.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../main.dart';

const String kUserDataKey = 'current_user_shared_prefs';
const String kAccessTokenKey = 'current_user_access_token';
const String kRefreshToken = 'current_user_refresh_token';

class UserService {
  static set currentUser(UserModel userModel) =>
      App.localStorage.setString(kUserDataKey, json.encode(userModel.toJson()));

  static UserModel get currentUser =>
      App.localStorage.getString(kUserDataKey) != null
          ? UserModel.fromJson(
              json.decode(App.localStorage.getString(kUserDataKey)))
          : null;

  static set accessToken(String newToken) =>
      App.localStorage.setString(kAccessTokenKey, newToken);

  static String get accessToken => App.localStorage.getString(kAccessTokenKey);

  static set refreshToken(String newToken) =>
      App.localStorage.setString(kRefreshToken, newToken);

  static String get refreshToken => App.localStorage.getString(kRefreshToken);

  static Future<Option<AuthFailure>> refreshTokens() async {
    final newPairResponse = await Dio().post(
        'http://nypifok-001-site1.gtempurl.com/mydeckapi/User/RefreshTokens',
        data: jsonEncode(
            {'access_Token': accessToken, 'refresh_Token': refreshToken}));
    if (newPairResponse.statusCode != 200) {
      return Some(AuthFailure.tokenExpired());
    }
    accessToken = jsonDecode(newPairResponse.data)['access_token'];
    refreshToken = jsonDecode(newPairResponse.data)['refresh_token'];
    return none();
  }
}
