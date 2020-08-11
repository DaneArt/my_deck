part of 'sign_in_bloc.dart';

@freezed
abstract class SignInState with _$SignInState {
  const factory SignInState({
    @required ValueObject<String> emailOrLogin,
    @required ValueObject<String> password,
    @required bool submitting,
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignInState;

  factory SignInState.initial() => SignInState(
      emailOrLogin: EmailAddress(''),
      submitting: false,
      authFailureOrSuccessOption: none(),
      password: Password(''));
}
