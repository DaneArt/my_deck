import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:mydeck/errors/auth_failure.dart';
import 'package:mydeck/models/value_objects/value_object.dart';
import 'package:mydeck/services/usecases/sign_in_usecase.dart';
import 'package:mydeck/services/usecases/usecase.dart';
import 'package:mydeck/models/value_objects/email_address.dart';
import 'package:mydeck/models/value_objects/username.dart';
import 'package:mydeck/models/value_objects/password.dart';
import 'package:mydeck/models/dtos/user_dto.dart';
import 'package:mydeck/services/usecases/google_signin_usecase.dart';
import 'package:mydeck/services/usecases/sign_up_usecase.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<Either<AuthFailure, void>> signInWithCredentials(
      {@required ValueObject<String> emailOrLogin,
      @required Password password});

  Future<Either<AuthFailure, void>> signUpWithCredentials(
      {@required EmailAddress emailAddress,
      @required Username username,
      @required Password password});
}

class AuthFacadeImpl implements IAuthFacade {
  final GoogleSignInUsecase googleSignInUsecase;
  final SignUpUsecase signUpUsecase;
  final SignInUsecase signInUsecase;

  AuthFacadeImpl(
      this.googleSignInUsecase, this.signUpUsecase, this.signInUsecase);

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    final authResult = await googleSignInUsecase(NoParams());

    return authResult.fold((failure) => left(failure), (user) => right(unit));
  }

  @override
  Future<Either<AuthFailure, void>> signUpWithCredentials(
      {EmailAddress emailAddress, Username username, Password password}) async {
    return signUpUsecase(
        Credentials(email: emailAddress, login: username, password: password));
  }

  @override
  Future<Either<AuthFailure, void>> signInWithCredentials(
      {ValueObject<String> emailOrLogin, Password password}) {
    if (EmailAddress(emailOrLogin.getOrCrash).isValid) {
      return signInUsecase(Credentials(
          email: EmailAddress(emailOrLogin.getOrCrash),
          login: null,
          password: password));
    } else {
      return signInUsecase(Credentials(
          email: null,
          login: Username(emailOrLogin.getOrCrash),
          password: password));
    }
  }
}
