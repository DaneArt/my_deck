import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:jose/jose.dart';
import 'package:logger/logger.dart';
import 'package:mydeck/errors/auth_failure.dart';
import 'package:mydeck/models/dtos/user_dto.dart';
import 'package:mydeck/utils/google_token_factory.dart';
import 'package:mydeck/utils/network_connection.dart';
import 'package:mydeck/services/usecases/usecase.dart';
import 'package:mydeck/services/datasources/user_config.dart';
import 'package:mydeck/services/datasources/user_network_datasource.dart';

const String kCheckInternetError = 'Check internet connection and try again.';

class GoogleSignInUsecase extends UseCase<AuthFailure, UserDto, NoParams> {
  final GoogleSignIn _googleSignIn;
  final UserNetworkDataSource _userDataSource;
  final GoogleTokenFactory _googleTokenFactory;

  GoogleSignInUsecase(
    this._googleSignIn,
    this._userDataSource,
    this._googleTokenFactory,
  );

  @override
  Future<Either<AuthFailure, UserDto>> call(NoParams params) async {
    try {
      final userGoogleSignIn = await _googleSignIn.signIn();
      if (userGoogleSignIn != null) {
        return _authOnServer(userGoogleSignIn);
      } else {
        return left(AuthFailure.canselledByuser());
      }
    } catch (e) {
      print(e);
      return Left(AuthFailure.serverError());
    }
  }

  Future<Either<AuthFailure, UserDto>> _authOnServer(
      GoogleSignInAccount account) async {
    final authData = await account.authentication;
    final userToken = _googleTokenFactory.create(authData.idToken);
    try {
      final userPayload =
          await _userDataSource.signInWithGoogleToken(userToken);
      Logger().d('Sign in by google successfull');
      if (userPayload.statusCode == 200) {
        await _userDataSource.updateUserConfig(userPayload.data);
        return right(UserConfig.currentUser);
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
    return left(AuthFailure.serverError());
  }
}
