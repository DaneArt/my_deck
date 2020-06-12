import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:mydeck/core/error/auth_failure.dart';
import 'package:mydeck/core/injection/dependency_injection.dart';
import 'package:mydeck/features/my_deck/data/repositories/my_deck_repository.dart';
import 'package:mydeck/features/sign_in/data/datasources/user_config.dart';
import 'package:mydeck/features/sign_in/data/datasources/user_datasource.dart';
import 'package:mydeck/features/sign_in/data/models/user_model.dart';
import 'package:dartz/dartz.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:mydeck/core/network/network_connection.dart';

import 'package:mydeck/features/my_deck/domain/usecases/usecase.dart';

import 'package:http/http.dart' as http;
import 'package:jose/jose.dart';

const String kCheckInternetError = 'Check internet connection and try again.';

class GoogleSignInUsecase extends UseCase<AuthFailure, UserModel, NoParams> {
  final GoogleSignIn _googleSignIn;
  final NetworkConnection _networkConnection;
  final UserDataSource _userDataSource;


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
    final userId = json.decode(userData)['userid'];
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
