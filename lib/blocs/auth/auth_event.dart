part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  factory AuthEvent.emailOrLoginChanged({@required String emailOrLoginStr}) =
      EmailOrLoginChanged;
  factory AuthEvent.passwordChanged({@required String passwordStr}) =
      PasswordChanged;
  factory AuthEvent.emailChanged({@required String emailStr}) =
      EmailAddressChanged;
  factory AuthEvent.usernameChanged({@required String usernameStr}) =
      UsernameChanged;
  factory AuthEvent.signInWithGooglePressed() = SignInWithGooglePressed;
  factory AuthEvent.signInPressed() = SignInPressed;
  factory AuthEvent.signUpPressed() = SignUpPressed;
  factory AuthEvent.obscurePassword() = ObscurePassword;
}
