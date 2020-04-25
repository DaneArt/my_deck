import 'dart:convert';

import 'package:mydeck/core/error/auth_failure.dart';
import 'package:mydeck/features/my_deck/domain/usecases/usecase.dart';

import 'package:mydeck/features/sign_in/data/models/email_address.dart';
import 'package:mydeck/features/sign_in/data/models/login.dart';
import 'package:mydeck/features/sign_in/data/models/password.dart';
import 'package:mydeck/features/sign_in/data/models/user_model.dart';
import 'package:mydeck/features/sign_in/usecases/google_signin_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<Either<AuthFailure, UserModel>> signInWithLoginAndPassword(
      {@required Login login, @required Password password});

  Future<Either<AuthFailure, UserModel>> signInWithEmailAndPassword(
      {@required EmailAddress emailAddress, @required Password password});

  Future<Either<AuthFailure, UserModel>> signUpWithCredentials(
      {@required EmailAddress emailAddress,
      @required Login login,
      @required Password password});
}

class AuthFacadeImpl implements IAuthFacade {
  final GoogleSignInUsecase googleSignInUsecase;

  AuthFacadeImpl(this.googleSignInUsecase);

  @override
  Future<Either<AuthFailure, UserModel>> signInWithEmailAndPassword(
      {EmailAddress emailAddress, Password password}) {
    // TODO: implement signInWithEmailAndPassword
    return null;
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    final authResult = await googleSignInUsecase(NoParams());

    final sharedPrefs = await SharedPreferences.getInstance();

    return authResult.fold((failure) => left(failure), (user) => right(unit));
  }

  @override
  Future<Either<AuthFailure, UserModel>> signInWithLoginAndPassword(
      {Login login, Password password}) {
    // TODO: implement signInWithLoginAndPassword
    return null;
  }

  @override
  Future<Either<AuthFailure, UserModel>> signUpWithCredentials(
      {EmailAddress emailAddress, Login login, Password password}) {
    // TODO: implement signUpWithCredentials
    return null;
  }
}
