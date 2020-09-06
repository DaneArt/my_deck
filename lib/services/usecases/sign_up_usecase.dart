import 'package:mydeck/errors/auth_failure.dart';
import 'package:mydeck/errors/exception.dart';
import 'package:mydeck/models/value_objects/email_address.dart';
import 'package:mydeck/models/value_objects/username.dart';
import 'package:mydeck/models/value_objects/password.dart';
import 'package:mydeck/models/dtos/user_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:mydeck/services/datasources/user_network_datasource.dart';

import 'package:mydeck/services/usecases/usecase.dart';

class SignUpUsecase extends UseCase<AuthFailure, void, Credentials> {
  final UserNetworkDataSource userNetworkDataSource;

  SignUpUsecase({this.userNetworkDataSource});
  @override
  Future<Either<AuthFailure, void>> call(Credentials params) async {
    try {
      final signUpResult = await userNetworkDataSource.signUp(
        params.email.getOrCrash,
        params.login.getOrCrash,
        params.password.getOrCrash,
      );
      return right(null);
    } on NetworkException catch (e) {
      switch (e.runtimeType) {
        case NetworkException:
          return left(AuthFailure.serverError());
          break;
        case EmailAlreadyInUseException:
          return left(AuthFailure.emailAreadyInUse());
          break;
        case UsernameAlreadyInUseException:
          return left(AuthFailure.loginAreadyInUse());
          break;
        default:
      }
    } on Exception catch (e) {
      return left(AuthFailure.serverError());
    }
  }
}

class Credentials {
  final EmailAddress email;
  final Username login;
  final Password password;

  Credentials(
      {@required this.email, @required this.login, @required this.password});
}
