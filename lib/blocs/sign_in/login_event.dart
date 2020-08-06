part of 'login_bloc.dart';

@freezed
abstract class LoginEvent with _$LoginEvent {
  factory LoginEvent.emailOrLoginChanged(String emailOrLoginStr) =
      EmailOrLoginChanged;
  factory LoginEvent.emailChanged(String emailStr) = EmailChanged;
  factory LoginEvent.passwordChanged(String passwordStr) = PasswordChanged;
  factory LoginEvent.loginChanged(String loginStr) = LoginChanged;
  factory LoginEvent.popStatesStack() = PopStatesStack;
  factory LoginEvent.signInWithGooglePressed() = SignInWithGooglePressed;
  factory LoginEvent.signInPressed() = SignInPressed;
  factory LoginEvent.signUpPressed() = SignUpPressed;
  factory LoginEvent.confirmLoginPressed() = ConfirmLoginPressed;
  factory LoginEvent.confirmEmailPressed() = ConfirmEmailPressed;
  factory LoginEvent.confirmEmailCodePressed() = ConfirmEmailCodePressed;
  factory LoginEvent.confirmPasswordPressed() = ConfirmPasswordPressed;
  factory LoginEvent.confirmSignInCredentialsPressed() =
      ConfirmSignInCredentialsPressed;
}
