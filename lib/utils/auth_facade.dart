import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:mydeck/errors/auth_failure.dart';
import 'package:mydeck/models/value_objects/value_object.dart';
import 'package:mydeck/services/usecases/usecase.dart';
import 'package:mydeck/models/value_objects/email_address.dart';
import 'package:mydeck/models/value_objects/login.dart';
import 'package:mydeck/models/value_objects/password.dart';
import 'package:mydeck/models/value_objects/user_model.dart';
import 'package:mydeck/services/usecases/google_signin_usecase.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<Either<AuthFailure, UserModel>> signInWithCredentials(
      {@required ValueObject<String> emailOrLogin,
      @required Password password});

  Future<Either<AuthFailure, UserModel>> signUpWithCredentials(
      {@required EmailAddress emailAddress,
      @required Login login,
      @required Password password});
}

class AuthFacadeImpl implements IAuthFacade {
  final GoogleSignInUsecase googleSignInUsecase;

  AuthFacadeImpl(this.googleSignInUsecase);

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    final authResult = await googleSignInUsecase(NoParams());

    return authResult.fold((failure) => left(failure), (user) => right(unit));
  }

  @override
  Future<Either<AuthFailure, UserModel>> signUpWithCredentials(
      {EmailAddress emailAddress, Login login, Password password}) {
    // TODO: implement signUpWithCredentials
    return null;
  }

  @override
  Future<Either<AuthFailure, UserModel>> signInWithCredentials(
      {ValueObject<String> emailOrLogin, Password password}) {
    // TODO: implement signInWithCredentials
    return null;
  }
}
