part of 'sign_in_bloc.dart';

@freezed
abstract class SignInState with _$SignInState {
  const factory SignInState({
    @required ValueObject<String> emailOrLogin,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignInState;

  factory SignInState.initial() => SignInState(
      emailOrLogin: EmailAddress(''),
      showErrorMessages: false,
      isSubmitting: false,
      authFailureOrSuccessOption: none());

  const factory SignInState.emailInput({
    @required EmailAddress emailAddress,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = EmailInput;
  const factory SignInState.loginInput({
    @required Login login,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = LoginInput;
  const factory SignInState.passwordInput({
    @required Password password,
    @required Password confirmPassword,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = PasswordInput;
  const factory SignInState.signInCredInput({
    @required ValueObject<String> emailOrLogin,
    @required Password password,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = SignInCredInput;
}

// class LoginInitial extends LoginState {
//   final ValueObject<String> emailOrLogin;

//   LoginInitial(this.emailOrLogin);
//   @override
//   List<Object> get props => [];
// }

// class AuthErrorState extends LoginState {
//   final String message;

//   AuthErrorState(this.message);

//   @override
//   List<Object> get props => [message];
// }

// class LoadingState extends LoginState {
//   @override
//   List<Object> get props => [];
// }

// class SignInState extends LoginState {
//   final ValueObject<String> mailOrLogin;

//   SignInState(this.mailOrLogin);

//   @override
//   List<Object> get props => [mailOrLogin];
// }

// class LoginInputState extends LoginState {
//   @override
//   List<Object> get props => [];
// }

// class EmailInputState extends LoginState {
//   @override
//   List<Object> get props => [];
// }

// class PasswordInputState extends LoginState {
//   @override
//   List<Object> get props => [];
// }

// class ConfirmEmailState extends LoginState {
//   @override
//   List<Object> get props => [];
// }

// class LoggedInState extends LoginState {
//   final String userName;

//   LoggedInState(this.userName);
//   @override
//   List<Object> get props => [userName];
// }
