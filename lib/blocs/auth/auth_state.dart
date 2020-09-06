part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    EmailAddress email,
    Username username,
    @required Password password,
    @required bool submitting,
    @required bool autovalidate,
    @required bool obscurePassword,
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignInState;

  factory AuthState.initial() => AuthState(
      username: Username(''),
      email: EmailAddress(''),
      submitting: false,
      obscurePassword: true,
      authFailureOrSuccessOption: none(),
      password: Password(''),
      autovalidate: false);
}
