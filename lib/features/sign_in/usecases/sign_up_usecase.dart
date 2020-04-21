import 'package:mydeck/core/error/auth_failure.dart';
import 'package:mydeck/features/sign_in/data/models/email_address.dart';
import 'package:mydeck/features/sign_in/data/models/login.dart';
import 'package:mydeck/features/sign_in/data/models/password.dart';
import 'package:mydeck/features/sign_in/data/models/user_model.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import 'package:mydeck/features/my_deck/domain/usecases/usecase.dart';

class SignInUsecase extends UseCase<AuthFailure, UserModel, Credentials> {
  @override
  Future<Either<AuthFailure, UserModel>> call(Credentials params) {
    // TODO: implement call
    return null;
  }
}

class Credentials {
  final EmailAddress email;
  final Login login;
  final Password password;

  Credentials(
      {@required EmailAddress email,
      @required Login login,
      @required Password password})
      : assert(email != null),
        assert(login != null),
        assert(password != null),
        this.email = email,
        this.password = password,
        this.login = login;
}
