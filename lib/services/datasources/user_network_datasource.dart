import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:logger/logger.dart';
import 'package:mydeck/errors/auth_failure.dart';
import 'package:mydeck/errors/exception.dart';
import 'package:mydeck/models/entitites/unique_id.dart';
import 'package:mydeck/models/value_objects/user_model.dart';
import 'package:mydeck/services/datasources/user_config.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:mydeck/utils/dependency_injection.dart';

abstract class UserNetworkDataSource {
  Future<Option<AuthFailure>> refreshTokens();

  Future<UserModel> getUserById(String userId);

  Future<Response> signInWithGoogleToken(String userToken);
}

class UserNetworkDataSourceImpl implements UserNetworkDataSource {
  final Dio client;
  final CookieJar cookieJar;

  UserNetworkDataSourceImpl(this.cookieJar, this.client);

  @override
  Future<UserModel> getUserById(String userId) async {
    try {
      // final cookies = cookieJar.loadForRequest(
      //     Uri.parse("http://threetests-001-site1.gtempurl.com"));

      final response = await client.get(
        '/User/FindById/$userId',
        options: Options(headers: {
          HttpHeaders.authorizationHeader: 'Bearer ${UserConfig.accessToken}',
        }),
      );

      return UserModel.fromJson(jsonDecode(response.data));
    } on DioError catch (e) {
      if (e.response.statusCode == 404) {
        throw MissingUserException();
      } else if (e.response.statusCode == 401) {
        throw UnauthorizedException();
      }
    } catch (e) {
      throw NetworkException();
    }
  }

  @override
  Future<Option<AuthFailure>> refreshTokens() async {
    try {
      final cookies = cookieJar.loadForRequest(Uri.parse(BASE_URL_DEV));
      final newPairResponse = await client.post('/User/RefreshTokens',
          data: jsonEncode({
            'access_token': UserConfig.accessToken,
            'refresh_token': UserConfig.refreshToken
          }));
      UserConfig.accessToken = jsonDecode(newPairResponse.data)['access_token'];
      UserConfig.refreshToken =
          jsonDecode(newPairResponse.data)['refresh_token'];
      return none();
    } on DioError catch (e) {
      return some(AuthFailure.tokenExpired());
    } catch (e) {
      return some(AuthFailure.tokenExpired());
    }
  }

  @override
  Future<Response> signInWithGoogleToken(String userToken) async {
    try {
      final cookies = cookieJar.loadForRequest(Uri.parse(BASE_URL_DEV));
      cookies.clear();
      cookies.add(Cookie('sessionId', UniqueId().getOrCrash));

      cookieJar.saveFromResponse(Uri.parse(BASE_URL_DEV), cookies);

      var startTime = DateTime.now().millisecondsSinceEpoch;
      final result = await client.post(
        '/User/SignInByGoogle',
        options: Options(
          headers: {'idtoken': userToken},
        ),
      );
      var endTime = DateTime.now().millisecondsSinceEpoch;
      Logger().d((endTime - startTime) / 1000 / 60);
      return result;
    } on DioError catch (e) {
      throw NetworkException();
    } catch (e) {
      throw NetworkException();
    }
  }
}
