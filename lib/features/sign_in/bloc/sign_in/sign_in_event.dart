part of 'sign_in_bloc.dart';

@freezed
abstract class SignInEvent with _$SignInEvent {
  factory SignInEvent.emailOrLoginChanged(String emailOrLoginStr) =
      EmailOrLoginChanged;
  factory SignInEvent.emailChanged(String emailStr) = EmailChanged;
  factory SignInEvent.passwordChanged(String passwordStr) = PasswordChanged;
  factory SignInEvent.loginChanged(String loginStr) = LoginChanged;
  factory SignInEvent.popStatesStack() = PopStatesStack;
  factory SignInEvent.signInWithGooglePressed() = SignInWithGooglePressed;
  factory SignInEvent.signInPressed() = SignInPressed;
  factory SignInEvent.signUpPressed() = SignUpPressed;
  factory SignInEvent.confirmLoginPressed() = ConfirmLoginPressed;
  factory SignInEvent.confirmEmailPressed() = ConfirmEmailPressed;
  factory SignInEvent.confirmEmailCodePressed() = ConfirmEmailCodePressed;
  factory SignInEvent.confirmPasswordPressed() = ConfirmPasswordPressed;
  factory SignInEvent.confirmSignInCredentialsPressed() =
      ConfirmSignInCredentialsPressed;
}
