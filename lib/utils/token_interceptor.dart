import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mydeck/core/error/exception.dart';
import 'package:mydeck/features/sign_in/data/datasources/user_config.dart';
import 'package:mydeck/features/sign_in/data/datasources/user_datasource.dart';
import 'package:mydeck/features/sign_in/helpers/value_validators.dart';

class TokenInterceptor implements InterceptorsWrapper {
  final AccessTokenValidator accessTokenValidator;
  final UserDataSource userDataSource;

  TokenInterceptor({this.userDataSource, this.accessTokenValidator});
  @override
  Future onError(DioError err) async {
    return err;
  }

  @override
  Future onRequest(RequestOptions opts) async {
    if (accessTokenValidator(UserConfig.accessToken).isLeft()) {
      final refreshResult = await userDataSource.refreshTokens();
      refreshResult.fold(
          () => opts.headers[HttpHeaders.authorizationHeader] =
              'Bearer ${UserConfig.accessToken}',
          (a) => null);
      return opts;
    }
    return opts;
  }

  @override
  Future onResponse(Response response) async {
    return response;
  }
}
