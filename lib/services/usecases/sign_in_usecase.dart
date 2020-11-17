import 'package:dartz/dartz.dart';
import 'package:mydeck/errors/auth_failure.dart';
import 'package:mydeck/errors/exception.dart';
import 'package:mydeck/services/datasources/user_network_datasource.dart';
import 'package:mydeck/services/usecases/sign_up_usecase.dart';
import 'package:mydeck/services/usecases/usecase.dart';

class SignInUsecase extends UseCase<AuthFailure, void, Credentials> {
  final UserNetworkDataSource userNetworkDataSource;

  SignInUsecase(this.userNetworkDataSource);

  @override
  Future<Either<AuthFailure, void>> call(Credentials params) async {
    try {
      if (params.email != null) {
        await userNetworkDataSource.signInWithEmail(
            params.email.getOrCrash, params.password.getOrCrash);
      } else if (params.login != null) {
        await userNetworkDataSource.signInWithUsername(
            params.login.getOrCrash, params.password.getOrCrash);
      } else {
        return left(AuthFailure.invalidFields());
      }
      return right(null);
    } on NetworkException catch (e) {
      switch (e.runtimeType) {
        case NetworkException:
          return left(AuthFailure.serverError());
          break;
        case UserNotFoundException:
          return left(AuthFailure.userNotFound());
          break;
        case InvalidPasswordException:
          return left(AuthFailure.wrongPassword());
          break;
        default:
      }
    } on Exception catch (e) {
      return left(AuthFailure.serverError());
    }
  }
}
