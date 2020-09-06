import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:floor/floor.dart';
import 'package:logger/logger.dart';
import 'package:mydeck/errors/auth_failure.dart';
import 'package:mydeck/errors/exception.dart';
import 'package:mydeck/models/entitites/unique_id.dart';
import 'package:mydeck/models/value_objects/email_address.dart';
import 'package:mydeck/models/value_objects/password.dart';
import 'package:mydeck/models/dtos/user_dto.dart';
import 'package:mydeck/models/value_objects/username.dart';
import 'package:mydeck/services/datasources/user_config.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:mydeck/utils/dependency_injection.dart';
import 'package:uuid/uuid.dart';

abstract class UserNetworkDataSource {
  Future<Option<AuthFailure>> refreshTokens();

  Future<UserDto> getUserById(String userId);

  Future<void> signUp(String emailAddress, String username, List<int> password);

  Future<Response> signInWithGoogleToken(String userToken);

  Future<void> updateUserConfig(String userData);
  Future<void> signInWithEmail(String emailAddress, List<int> password);

  Future<void> signInWithUsername(String username, List<int> password);
}

class UserNetworkDataSourceImpl implements UserNetworkDataSource {
  final Dio client;
  final CookieJar cookieJar;

  UserNetworkDataSourceImpl(this.cookieJar, this.client);

  @override
  Future<UserDto> getUserById(String userId) async {
    try {
      final response = await client.get('/User/FindById/$userId');

      return UserDto.fromJson(jsonDecode(response.data));
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

  @override
  Future<void> updateUserConfig(String userData) async {
    final userDto = UserDto.fromJson(jsonDecode(userData));
    UserConfig.accessToken = userDto.accessToken;
    UserConfig.refreshToken = userDto.refreshToken;
    UserConfig.currentUser = userDto;
  }

  @override
  Future<void> signUp(
      String emailAddress, String username, List<int> password) async {
    try {
      final cookies = cookieJar.loadForRequest(Uri.parse(BASE_URL_DEV));
      cookies.clear();
      cookies.add(Cookie('sessionId', Uuid().v4()));

      cookieJar.saveFromResponse(Uri.parse(BASE_URL_DEV), cookies);

      final response = await client.post(
        '/User/SignUpWithEmail',
        data: UserDto(
                userId: Uuid().v4(),
                username: username,
                email: emailAddress,
                password: password,
                avatar: Uuid().v4())
            .toJson(),
      );
      updateUserConfig(response.data);
    } on DioError catch (e) {
      Logger().e('SignUp with email dio error');
      final errorCode = int.parse(e.response.data.toString().substring(0, 3));
      switch (errorCode) {
        case 100:
          throw NetworkException(e.message);
          break;
        case 101:
          throw EmailAlreadyInUseException();
          break;
        case 102:
          throw UsernameAlreadyInUseException(e.message);
          break;
        default:
          throw NetworkException(e.message);
      }
    } catch (e) {
      throw NetworkException();
    }
  }

  @override
  Future<void> signInWithEmail(String emailAddress, List<int> password) async {
    try {
      final cookies = cookieJar.loadForRequest(Uri.parse(BASE_URL_DEV));
      cookies.clear();
      cookies.add(Cookie('sessionId', Uuid().v4()));

      cookieJar.saveFromResponse(Uri.parse(BASE_URL_DEV), cookies);

      final response = await client.post(
        '/User/SignInWithEmail',
        data: {'email': emailAddress, 'password': password},
      );
      updateUserConfig(response.data);
    } on DioError catch (e) {
      Logger().e('SignUp with email dio error');
      final errorCode = int.parse(e.response.data.toString().substring(0, 3));
      switch (errorCode) {
        case 100:
          throw NetworkException(e.message);
          break;
        case 101:
          throw EmailAlreadyInUseException();
          break;
        case 102:
          throw UsernameAlreadyInUseException(e.message);
          break;
        default:
          throw NetworkException(e.message);
      }
    } catch (e) {
      throw NetworkException();
    }
  }

  @override
  Future<void> signInWithUsername(String username, List<int> password) async {
    try {
      final cookies = cookieJar.loadForRequest(Uri.parse(BASE_URL_DEV));
      cookies.clear();
      cookies.add(Cookie('sessionId', Uuid().v4()));

      cookieJar.saveFromResponse(Uri.parse(BASE_URL_DEV), cookies);

      final response = await client.post(
        '/User/SignInWithUsername',
        data: {'UserName': username, 'Password': password},
        options: Options(
          headers: {'idtoken': UserConfig.accessToken},
        ),
      );
      updateUserConfig(response.data);
    } on DioError catch (e) {
      Logger().e('SignUp with email dio error');
      final errorCode = int.parse(e.response.data.toString().substring(0, 3));
      switch (errorCode) {
        case 100:
          throw NetworkException(e.message);
          break;
        case 101:
          throw EmailAlreadyInUseException();
          break;
        case 102:
          throw UsernameAlreadyInUseException(e.message);
          break;
        default:
          throw NetworkException(e.message);
      }
    } catch (e) {
      throw NetworkException();
    }
  }
}
