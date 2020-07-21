import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mydeck/errors/exception.dart';
import 'package:mydeck/services/datasources/user_config.dart';
import 'package:mydeck/services/datasources/user_network_datasource.dart';
import 'package:mydeck/utils/value_validators.dart';

class TokenInterceptor implements InterceptorsWrapper {
  final AccessTokenValidator accessTokenValidator;
  final UserNetworkDataSource userDataSource;

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
