import 'dart:convert';

import 'package:mydeck/models/dtos/user_dto.dart';
import 'package:mydeck/services/datasources/user_network_datasource.dart';

import '../../main.dart';

const String kUserDataKey = 'current_user_shared_prefs';
const String kAccessTokenKey = 'current_user_access_token';
const String kRefreshToken = 'current_user_refresh_token';

class UserConfig {
  static set currentUser(UserDto userModel) =>
      App.localStorage.setString(kUserDataKey, json.encode(userModel.toJson()));

  static UserDto get currentUser => App.localStorage.getString(kUserDataKey) !=
          null
      ? UserDto.fromJson(json.decode(App.localStorage?.getString(kUserDataKey)))
      : null;

  static set accessToken(String newToken) =>
      App.localStorage.setString(kAccessTokenKey, newToken);

  static get accessToken => App.localStorage?.getString(kAccessTokenKey);

  static set refreshToken(String newToken) =>
      App.localStorage.setString(kRefreshToken, newToken);

  static String get refreshToken => App.localStorage?.getString(kRefreshToken);
}
