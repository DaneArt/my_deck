import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mydeck/errors/auth_failure.dart';
import 'package:mydeck/errors/exception.dart';
import 'package:mydeck/services/datasources/user_config.dart';
import 'package:mydeck/services/datasources/user_network_datasource.dart';
import 'package:mydeck/utils/value_validators.dart';

import 'package:http/http.dart' as http;
import 'package:cookie_jar/cookie_jar.dart';
import 'dependency_injection.dart';

class TokenInterceptor implements InterceptorsWrapper {
  final AccessTokenValidator accessTokenValidator;

  TokenInterceptor({this.accessTokenValidator});
  @override
  Future onError(DioError err) async {
    return err;
  }

  @override
  Future onRequest(RequestOptions opts) async {
    if (accessTokenValidator(UserConfig.accessToken).isLeft()) {
      final refreshResult = await _refreshTokens();
      refreshResult.fold(
          () => opts.headers[HttpHeaders.authorizationHeader] =
              'Bearer ${UserConfig.accessToken}',
          (a) => null);
      return opts;
    }
    return opts;
  }

  _refreshTokens() async {
    try {
      final cookies = sl.get<CookieJar>().loadForRequest(
          Uri.parse("http://threetests-001-site1.gtempurl.com"));
      final newPairResponse = await http.post('/User/RefreshTokens',
          body: jsonEncode({
            'access_token': UserConfig.accessToken,
            'refresh_token': UserConfig.refreshToken
          }));
      UserConfig.accessToken = jsonDecode(newPairResponse.body)['access_token'];
      UserConfig.refreshToken =
          jsonDecode(newPairResponse.body)['refresh_token'];
      return none();
    } on DioError catch (e) {
      return some(AuthFailure.tokenExpired());
    } catch (e) {
      return some(AuthFailure.tokenExpired());
    }
  }

  @override
  Future onResponse(Response response) async {
    return response;
  }
}
