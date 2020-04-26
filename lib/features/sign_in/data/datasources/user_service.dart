import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:mydeck/features/sign_in/data/models/user_model.dart';
import 'package:mydeck/features/sign_in/helpers/auth_facade.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../main.dart';

const String kUserDataKey = 'current_user_shared_prefs';
const String kAccessTokenKey = 'current_user_access_token';
const String kRefreshToken = 'current_user_refresh_token';

class UserService {
  set currentUser(UserModel userModel) =>
      App.localStorage.setString(kUserDataKey, json.encode(userModel.toJson()));

  UserModel get currentUser => App.localStorage.getString(kUserDataKey) != null
      ? UserModel.fromJson(
          json.decode(App.localStorage.getString(kUserDataKey)))
      : null;

  set accessToken(String newToken) =>
      App.localStorage.setString(kAccessTokenKey, newToken);

  String get accessToken =>
      'Bearer ' + App.localStorage.getString(kAccessTokenKey);

  set refreshToken(String newToken) =>
      App.localStorage.setString(kRefreshToken, newToken);

  String get refreshToken =>
      'Bearer' + App.localStorage.getString(kRefreshToken);
}
