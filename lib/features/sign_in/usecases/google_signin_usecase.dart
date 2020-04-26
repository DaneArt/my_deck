import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:mydeck/core/error/auth_failure.dart';
import 'package:mydeck/features/sign_in/data/datasources/user_service.dart';
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
  final UserService _userService;

  final String kSecretKey =
      'tLECRAH5TZ7e9ktUUGct2tvPdcsE98luk55wIUvPTegOnOkwficlKZWlXauoUeFs';

  GoogleSignInUsecase(
    this._googleSignIn,
    this._networkConnection,
    this._userService,
  );

  Future<Either<AuthFailure, UserModel>> authOnServer(
      GoogleSignInAccount account) async {
    final authData = await account.authentication;
    final userToken = await generateTokenFromGoogleIdToken(authData.idToken);
    final userResponse = await sendGoogleSignInToken(userToken);
    if (userResponse.statusCode == 200) {
      final userId = json.decode(userResponse.body)['userid'];
      final accessToken = json.decode(userResponse.body)['access_token'];
      final refreshToken = json.decode(userResponse.body)['refresh_token'];
      final userGet = await http.get(
          'http://nypifok-001-site1.gtempurl.com/mydeckapi/user/findbyid/$userId',
          headers: {
            'Authorization':
                'Bearer ${json.decode(userResponse.body)['access_token']}',
          });

      final user = UserModel.fromJson(json.decode(userGet.body)['value']);
      _userService.currentUser = user;
      _userService.accessToken = accessToken;
      _userService.refreshToken = refreshToken;
      return right(user);
    } else {
      return Left(AuthFailure.serverError());
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

  Future<http.Response> sendGoogleSignInToken(String idtoken) => http.post(
      'http://nypifok-001-site1.gtempurl.com/mydeckapi/user/signinbygoogle',
      headers: {'idtoken': idtoken});

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
}
