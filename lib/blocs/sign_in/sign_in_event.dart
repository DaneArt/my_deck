part of 'sign_in_bloc.dart';

@freezed
abstract class SignInEvent with _$SignInEvent {
  factory SignInEvent.emailOrLoginChanged(String emailOrLoginStr) =
      EmailOrLoginChanged;
  factory SignInEvent.passwordChanged(String passwordStr) = PasswordChanged;
  factory SignInEvent.signInWithGooglePressed() = SignInWithGooglePressed;
  factory SignInEvent.signInPressed() = SignInPressed;
}
