import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:mydeck/services/datasources/user_config.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:mydeck/services/datasources/user_network_datasource.dart';
import 'package:mydeck/utils/token_interceptor.dart';
import 'package:mydeck/utils/value_validators.dart';

import 'dependency_injection.dart';

class DioClient {
  static const BASE_URL_DEV =
      "http://threetests-001-site1.gtempurl.com/mydeckapi";
  static const BASE_URL_PROD = "https://smth";
  static BaseOptions baseOptions = BaseOptions(
    baseUrl: BASE_URL_DEV,
    connectTimeout: 30000,
    receiveTimeout: 20000,
    headers: {
      HttpHeaders.authorizationHeader: 'Bearer ${UserConfig.accessToken}'
    },
  );
  static CookieJar cookieJar = CookieJar();
  static final DioClient _dioClient = DioClient._internal();
  Dio _dio = Dio(baseOptions);
  Dio get dio => _dio;

  factory DioClient() {
    return _dioClient;
  }
  DioClient._internal() {
    _dio.interceptors.add(CookieManager(cookieJar));
    _dio.interceptors.add(
      TokenInterceptor(
        accessTokenValidator: AccessTokenValidator(),
      ),
    );
  }
}
