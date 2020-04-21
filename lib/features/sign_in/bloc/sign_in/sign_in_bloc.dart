import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:mydeck/core/error/auth_failure.dart';
import 'package:mydeck/features/sign_in/data/models/value_object.dart';
import 'package:mydeck/features/sign_in/helpers/auth_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stack/stack.dart';

import 'package:mydeck/features/sign_in/data/models/email_address.dart';
import 'package:mydeck/features/sign_in/data/models/login.dart';
import 'package:mydeck/features/sign_in/data/models/password.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part "sign_in_bloc.freezed.dart";

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final IAuthFacade authFacade;

  EmailAddress _userEmail = EmailAddress('');
  Login _userLogin = Login('');
  Password _userPassword = Password('');

  Stack<SignInState> _statesStack = Stack()..push(SignInState.initial());

  SignInBloc(this.authFacade);
  @override
  SignInState get initialState => SignInState.initial();

  @override
  Stream<SignInState> mapEventToState(
    SignInEvent event,
  ) async* {
    yield* event.map(
      emailOrLoginChanged: (e) async* {
        print('EmailAddress or Login: ${e.emailOrLoginStr}');
        yield* EmailAddress(e.emailOrLoginStr).value.fold((failure) async* {
          _userLogin = Login(e.emailOrLoginStr);

          final topState = _statesStack.top();
          if (topState is SignInCredInput) {
            yield topState.copyWith(emailOrLogin: _userLogin);
          } else {
            yield (topState as _SignInState).copyWith(emailOrLogin: _userLogin);
          }
        }, (value) async* {
          _userEmail = EmailAddress(value);

          final topState = _statesStack.top();
          if (topState is SignInCredInput) {
            yield topState.copyWith(emailOrLogin: _userEmail);
          } else {
            yield (topState as _SignInState).copyWith(emailOrLogin: _userEmail);
          }
        });
      },
      emailChanged: (e) async* {
        _userEmail = EmailAddress(e.emailStr);
        print('EmailAddress: ${e.emailStr}');
        final topState = _statesStack.top();
        if (topState is EmailInput) {
          yield topState.copyWith(
            emailAddress: _userEmail,
          );
        }
      },
      passwordChanged: (e) async* {
        _userPassword = Password(e.passwordStr);
        yield* updateTopStatePassword();
      },
      loginChanged: (e) async* {
        _userLogin = Login(e.loginStr);
        final topState = _statesStack.top();
        if (topState is LoginInput) {
          yield topState.copyWith(
            login: _userLogin,
          );
        }
      },
      signInWithGooglePressed: (e) async* {
        yield (_statesStack.top() as _SignInState).copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        );

        final authResult = await authFacade.signInWithGoogle();

        yield (_statesStack.top() as _SignInState).copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: some(authResult),
        );
      },
      signInPressed: (e) async* {
        if (_userEmail.isValid) {
          _statesStack.push(SignInState.signInCredInput(
              emailOrLogin: _userEmail,
              password: _userPassword,
              showErrorMessages: false,
              isSubmitting: false,
              authFailureOrSuccessOption: none()));
        } else {
          _statesStack.push(SignInState.signInCredInput(
              emailOrLogin: _userLogin,
              password: _userPassword,
              showErrorMessages: false,
              isSubmitting: false,
              authFailureOrSuccessOption: none()));
        }
        yield _statesStack.top();
      },
      signUpPressed: (e) async* {
        if (_userLogin.isValid) {
          _userEmail = EmailAddress('');

          _statesStack.push(SignInState.emailInput(
              emailAddress: _userEmail,
              showErrorMessages: false,
              isSubmitting: false,
              authFailureOrSuccessOption: none()));
        } else if (_userEmail.isValid) {
          _userLogin = Login('');

          _statesStack.push(SignInState.loginInput(
              login: _userLogin,
              showErrorMessages: false,
              isSubmitting: false,
              authFailureOrSuccessOption: none()));
        }

        yield _statesStack.top();
      },
      confirmLoginPressed: (e) async* {
        if (_userEmail.isValid) {
          _statesStack.push(SignInState.passwordInput(
              password: _userPassword,
              confirmPassword: _userPassword,
              showErrorMessages: false,
              isSubmitting: false,
              authFailureOrSuccessOption: none()));
        } else {
          _userEmail = EmailAddress('');
          _statesStack.push(SignInState.emailInput(
              emailAddress: _userEmail,
              showErrorMessages: false,
              isSubmitting: false,
              authFailureOrSuccessOption: none()));
        }

        yield _statesStack.top();
      },
      confirmEmailPressed: (e) async* {
        if (_userLogin.isValid) {
          _statesStack.push(SignInState.passwordInput(
              password: _userPassword,
              confirmPassword: _userPassword,
              showErrorMessages: false,
              isSubmitting: false,
              authFailureOrSuccessOption: none()));
        } else {
          _userLogin = Login('');
          _statesStack.push(SignInState.loginInput(
              login: _userLogin,
              showErrorMessages: false,
              isSubmitting: false,
              authFailureOrSuccessOption: none()));
        }
        yield _statesStack.top();
      },
      confirmEmailCodePressed: (e) async* {},
      confirmPasswordPressed: (e) async* {
        yield (_statesStack.top() as PasswordInput).copyWith(
          isSubmitting:true,
          authFailureOrSuccessOption: none()
        );

        yield (_statesStack.top() as PasswordInput).copyWith(
          isSubmitting:false,
          authFailureOrSuccessOption: some(right(unit))
        );

      },
      confirmSignInCredentialsPressed: (e) async* {},
      popStatesStack: (e) async* {
        if (_statesStack.isNotEmpty) _statesStack.pop();

        if (_statesStack.isNotEmpty) {
          yield _statesStack.top();
        } else {
          _statesStack.push(SignInState.initial());
          yield _statesStack.top();
        }
      },
    );
  }

  Stream<SignInState> updateTopStatePassword() async* {
    final topState = _statesStack.top();
    if (topState is PasswordInput) {
      yield topState.copyWith(
        password: _userPassword,
      );
    } else if (topState is SignInCredInput) {
      yield topState.copyWith(
        password: _userPassword,
        authFailureOrSuccessOption: none(),
      );
    }
  }
}

/* class LoginBloc extends Bloc<LoginEvent, SignInState> {
  final GoogleSignInUsecase _googleSignInUsecase;
  EmailAddress _userEmail;
  Password _userPassword;
  Login _userLogin;
  Stack<SignInState> _statesStack = Stack();

  LoginBloc(this._googleSignInUsecase);

  @override
  SignInState get initialState => SignInState(_userEmail ?? _userLogin);

  @override
  Stream<SignInState> mapEventToState(
    SignInEvent event,
  ) async* {
    if (event is BackToPreviousStateEvent) {
      if (_statesStack.isNotEmpty) _statesStack.pop();
      if (_statesStack.isNotEmpty) {
        yield _statesStack.top();
      } else {
        yield SignInState(_userLogin ?? _userEmail);
      }
    } else if (event is SignInEvent) {
      yield event.mailOrLogin.value.fold((failure) => SignInState(null),
          (value) {
        if (event.mailOrLogin is EmailAddress) {
          _userEmail = EmailAddress(value);
        } else {
          _userLogin = Login(value);
        }
        _statesStack.push(SignInState(_userLogin ?? _userEmail));
        return SignInState(_userLogin ?? _userEmail);
      });
    } else if (event is SignUpEvent) {
      yield event.mailOrLogin.value.fold((failure) => LoginInputState(),
          (value) {
        if (event.mailOrLogin is EmailAddress) {
          _userEmail = EmailAddress(value);
          _statesStack.push(LoginInputState());
          return LoginInputState();
        } else {
          _userLogin = Login(value);
          _statesStack.push(EmailInputState());
          return EmailInputState();
        }
      });
    } else if (event is InputLoginEvent) {
      yield LoadingState();
      _userLogin = event.login;
      _statesStack.push(PasswordInputState());
      yield PasswordInputState();
    } else if (event is InputEmailEvent) {
      yield LoadingState();
      _userEmail = event.email;
      _statesStack.push(PasswordInputState());
      yield PasswordInputState();
    } else if (event is InputPasswordEvent) {
      yield LoadingState();

      yield _userLogin.value.fold((failure) => PasswordInputState(),
          (username) => LoggedInState(username));
    } else if (event is SignInWithGoogleEvent) {
      yield LoadingState();

      final singInResult = await _googleSignInUsecase(NoParams());

      yield singInResult.fold(
          (failure) => AuthErrorState(mapFailureToMessage(failure)),
          (user) => LoggedInState(user.username));
    }
  }

  String mapFailureToMessage(AuthFailure failure) {
    return failure.map(
        canselledByuser: (canselledByuser) => 'Authentification canselled.',
        serverError: (serverError) => 'Something went wrong.Try again.',
        emailAreadyInUse: (emailAreadyInUse) =>
            'Email address already in use. Try another one or sign in.',
        loginAreadyInUse: (loginAreadyInUse) =>
            'Username already in use. Try another one or sign in.',
        userNotFound: (userNotFound) =>
            'User with entered email/username not found. Check input and try again.',
        wrongPassword: (wrongPassword) =>
            'Wrong password. Check input and try again.',
        noInternetConnection: (noInternetConnection) =>
            'Network error. Check internet connection and try again.');
  }
}
 */
