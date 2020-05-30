import 'dart:convert';

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
  static const String _kBaseUrl = 'http://mydeck-001-site1.dtempurl.com';

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

  static Future<bool> get isSessionValid async =>
      (await refreshTokens()).isNone();

  static Future<Either<AuthFailure, UserModel>> authWithGoogleCreds(
      String googleIdToken) async {
    try {
      final userResponse = await sendGoogleSignInToken(googleIdToken);
      if (userResponse.statusCode == 200) {
        final userId = json.decode(userResponse.data)['userid'];
        final accessToken = json.decode(userResponse.data)['access_token'];
        final refreshToken = json.decode(userResponse.data)['refresh_token'];
        final userGet = await Dio().get(
          '$_kBaseUrl/mydeckapi/user/findbyid/$userId',
          options: Options(headers: {
            'Authorization': 'Bearer $accessToken',
          }),
        );

        final user = UserModel.fromJson(jsonDecode(userGet.data));
        UserService.currentUser = user;
        UserService.accessToken = accessToken;
        UserService.refreshToken = refreshToken;
        return right(user);
      } else {
        return left(AuthFailure.serverError());
      }
    } on DioError catch (e) {
      if (e.response.statusCode == 404) {
        return left(AuthFailure.noInternetConnection());
      } else if (e.response.statusCode == 401 && e.response.statusCode == 400) {
        return left(AuthFailure.tokenExpired());
      }
    } catch (e) {
      return left(AuthFailure.serverError());
    }
  }

  static Future<Response> sendGoogleSignInToken(String idtoken) => Dio().post(
        '$_kBaseUrl/mydeckapi/User/SignInByGoogle',
        options: Options(headers: {'idtoken': idtoken}),
      );

  static Future<Option<AuthFailure>> refreshTokens() async {
    try {
      final newPairResponse = await Dio().post(
          '$_kBaseUrl/mydeckapi/User/RefreshTokens',
          data: jsonEncode(
              {'access_token': accessToken, 'refresh_token': refreshToken}));
      if (newPairResponse.statusCode != 200) {
        return Some(AuthFailure.tokenExpired());
      }
      accessToken = jsonDecode(newPairResponse.data)['access_token'];
      refreshToken = jsonDecode(newPairResponse.data)['refresh_token'];
      return none();
    } on DioError catch (e) {
      return some(AuthFailure.tokenExpired());
    }
  }
}
