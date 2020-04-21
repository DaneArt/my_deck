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

// class BackToPreviousStateEvent extends LoginEvent {
//   @override
//   List<Object> get props => [];
// }

// class SignInWithGoogleEvent extends LoginEvent {
//   @override
//   List<Object> get props => [];
// }

// class SignInEvent extends LoginEvent {
//   final ValueObject<String> mailOrLogin;

//   SignInEvent(this.mailOrLogin);

//   @override
//   List<Object> get props => [mailOrLogin];
// }

// class SignUpEvent extends LoginEvent {
//   final ValueObject<String> mailOrLogin;

//   SignUpEvent(this.mailOrLogin);

//   @override
//   List<Object> get props => [mailOrLogin];
// }

// class InputLoginEvent extends LoginEvent {
//   final ValueObject<String> login;

//   InputLoginEvent(this.login);

//   @override
//   List<Object> get props => [login];
// }

// class InputEmailEvent extends LoginEvent {
//   final ValueObject<String> email;

//   InputEmailEvent(this.email);

//   @override
//   List<Object> get props => [email];
// }

// class InputPasswordEvent extends LoginEvent {
//   final ValueObject<String> password;

//   InputPasswordEvent(this.password);

//   @override
//   List<Object> get props => [password];
// }
