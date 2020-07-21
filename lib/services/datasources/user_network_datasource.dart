import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mydeck/errors/auth_failure.dart';
import 'package:mydeck/errors/exception.dart';
import 'package:mydeck/models/value_objects/user_model.dart';
import 'package:mydeck/services/datasources/user_config.dart';

abstract class UserNetworkDataSource {
  Future<Option<AuthFailure>> refreshTokens();

  Future<UserModel> getUserById(String userId);

  Future<Response> signInWithGoogleToken(String userToken);
}

class UserNetworkDataSourceImpl implements UserNetworkDataSource {
  final client = Dio(
      BaseOptions(baseUrl: 'http://mydeck-001-site1.dtempurl.com/mydeckapi'));

  UserNetworkDataSourceImpl();

  @override
  Future<UserModel> getUserById(String userId) async {
    try {
      final response = await client.get(
        '/User/FindById/$userId',
        options: Options(headers: {
          'Authorization': 'Bearer ${UserConfig.accessToken}',
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
  Future<Response> signInWithGoogleToken(String userToken) {
    try {
      return client.post(
        '/User/SignInByGoogle',
        options: Options(headers: {'idtoken': userToken}),
      );
    } on DioError catch (e) {
      throw NetworkException();
    } catch (e) {
      throw NetworkException();
    }
  }
}
