import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:jose/jose.dart';
import 'package:logger/logger.dart';
import 'package:mydeck/errors/auth_failure.dart';
import 'package:mydeck/models/value_objects/user_model.dart';
import 'package:mydeck/utils/network_connection.dart';
import 'package:mydeck/services/usecases/usecase.dart';
import 'package:mydeck/services/datasources/user_config.dart';
import 'package:mydeck/services/datasources/user_network_datasource.dart';

const String kCheckInternetError = 'Check internet connection and try again.';

class GoogleSignInUsecase extends UseCase<AuthFailure, UserModel, NoParams> {
  final GoogleSignIn _googleSignIn;
  final NetworkConnection _networkConnection;
  final UserNetworkDataSource _userDataSource;

  final String kSecretKey =
      'tLECRAH5TZ7e9ktUUGct2tvPdcsE98luk55wIUvPTegOnOkwficlKZWlXauoUeFs';

  GoogleSignInUsecase(
    this._googleSignIn,
    this._networkConnection,
    this._userDataSource,
  );

  @override
  Future<Either<AuthFailure, UserModel>> call(NoParams params) async {
    try {
      if (await _networkConnection.isConnected) {
        final userGoogleSignIn = await _googleSignIn.signIn();
        if (userGoogleSignIn != null) {
          return authOnServer(userGoogleSignIn);
        } else {
          return left(AuthFailure.userNotFound());
        }
      } else {
        return left(AuthFailure.noInternetConnection());
      }
    } catch (e) {
      print(e);
      return Left(AuthFailure.serverError());
    }
  }

  Future<Either<AuthFailure, UserModel>> authOnServer(
      GoogleSignInAccount account) async {
    final authData = await account.authentication;
    final userToken = await generateTokenFromGoogleIdToken(authData.idToken);
    try {
      final userPayload =
          await _userDataSource.signInWithGoogleToken(userToken);
      Logger().d('Sign in by google successfull');
      if (userPayload.statusCode == 200) {
        await _setupUserConfig(userPayload.data);
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
  }

  Future<String> generateTokenFromGoogleIdToken(String idToken) async {
    final jwt = JsonWebToken.unverified(idToken);

    final builder = new JsonWebSignatureBuilder();

    // set the content
    builder.jsonContent = jwt.claims;

    // add a key to sign, can only add one for JWT
    builder.addRecipient(
      JsonWebKey.fromJson({
        'kty': 'oct',
        'k': kSecretKey,
      }),
      algorithm: "HS256",
    );

    // build the jws
    var jws = builder.build();
    return jws.toCompactSerialization();
  }

  _setupUserConfig(String userData) async {
    final userId = json.decode(userData)['user_id'];
    final accessToken = json.decode(userData)['access_token'];
    final refreshToken = json.decode(userData)['refresh_token'];
    UserConfig.accessToken = accessToken;
    UserConfig.refreshToken = refreshToken;

    try {
      UserConfig.currentUser = await _userDataSource.getUserById(userId);
    } on DioError catch (e) {
      rethrow;
    }
  }
}
