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
  final Dio client;

  UserService(this.client);
  
  set currentUser(UserModel userModel) =>
      App.localStorage.setString(kUserDataKey, json.encode(userModel.toJson()));

  UserModel get currentUser => App.localStorage.getString(kUserDataKey) != null
      ? UserModel.fromJson(
          json.decode(App.localStorage.getString(kUserDataKey)))
      : null;

 set accessToken(String newToken) =>
      App.localStorage.setString(kAccessTokenKey, newToken);

  String get accessToken =>
      App.localStorage.getString(kAccessTokenKey);

  set refreshToken(String newToken) =>
      App.localStorage.setString(kRefreshToken, newToken);

  String get refreshToken =>
     App.localStorage.getString(kRefreshToken);

  Future<Option<AuthFailure>>   refreshTokens() async {
    final newPairResponse = await client.post('http://nypifok-001-site1.gtempurl.com/mydeckapi/User/RefreshTokens',
      data: jsonEncode({
        'access_Token': accessToken,
        'refresh_Token': refreshToken
      })
    );
    if(newPairResponse.statusCode != 200){
      return Some(AuthFailure.tokenExpired());
    }
    this.accessToken = jsonDecode(newPairResponse.data)['access_Token'];
    this.refreshToken = jsonDecode(newPairResponse.data)['refresh_Token'];
    return none();
  }
}
