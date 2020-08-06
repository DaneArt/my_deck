import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:mydeck/errors/auth_failure.dart';
import 'package:mydeck/models/value_objects/value_object.dart';
import 'package:mydeck/utils/auth_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stack/stack.dart';

import 'package:mydeck/models/value_objects/email_address.dart';
import 'package:mydeck/models/value_objects/login.dart';
import 'package:mydeck/models/value_objects/password.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final IAuthFacade authFacade;

  EmailAddress _userEmail = EmailAddress('');
  Login _userLogin = Login('');
  Password _userPassword = Password('');

  Stack<LoginState> _statesStack = Stack()..push(LoginState.initial());

  LoginBloc(this.authFacade);
  @override
  LoginState get initialState => LoginState.initial();

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    yield* event.map(
      emailOrLoginChanged: (e) async* {
        print('EmailAddress or Login: ${e.emailOrLoginStr}');
        yield* EmailAddress(e.emailOrLoginStr).value.fold((failure) async* {
          _userLogin = Login(e.emailOrLoginStr);

          final topState = _statesStack.top();

          yield (topState as _LoginState).copyWith(emailOrLogin: _userLogin);
        }, (value) async* {
          _userEmail = EmailAddress(value);

          final topState = _statesStack.top();

          yield (topState as _LoginState).copyWith(emailOrLogin: _userEmail);
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
        yield (_statesStack.top() as _LoginState).copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        );

        final authResult = await authFacade.signInWithGoogle();

        yield (_statesStack.top() as _LoginState).copyWith(
          isSubmitting: false,
          authFailureOrSuccessOption: some(authResult),
        );
      },
      signInPressed: (e) async* {
        if (_userEmail.isValid && _userPassword.isValid) {
          yield (_statesStack.top() as _LoginState).copyWith(
              emailOrLogin: _userEmail,
              password: _userPassword,
              showErrorMessages: false,
              isSubmitting: false,
              authFailureOrSuccessOption: some(right(unit)));
        } else {
          yield (_statesStack.top() as _LoginState).copyWith(
              emailOrLogin: _userLogin,
              password: _userPassword,
              showErrorMessages: false,
              isSubmitting: false,
              authFailureOrSuccessOption: none());
        }
      },
      signUpPressed: (e) async* {
        if (_userLogin.isValid) {
          _userEmail = EmailAddress('');
          _statesStack.push(LoginState.emailInput(
              emailAddress: _userEmail,
              showErrorMessages: false,
              isSubmitting: false,
              authFailureOrSuccessOption: none()));
        } else if (_userEmail.isValid) {
          _userLogin = Login('');
          _statesStack.push(LoginState.loginInput(
              login: _userLogin,
              showErrorMessages: false,
              isSubmitting: false,
              authFailureOrSuccessOption: none()));
        }

        yield _statesStack.top();
      },
      confirmLoginPressed: (e) async* {
        if (_userEmail.isValid) {
          // _statesStack.push(SignInState.passwordInput(
          //     password: _userPassword,
          //     confirmPassword: _userPassword,
          //     showErrorMessages: false,
          //     isSubmitting: false,
          //     authFailureOrSuccessOption: none()));
        } else {
          _userEmail = EmailAddress('');
          _statesStack.push(LoginState.emailInput(
              emailAddress: _userEmail,
              showErrorMessages: false,
              isSubmitting: false,
              authFailureOrSuccessOption: none()));
        }

        yield _statesStack.top();
      },
      confirmEmailPressed: (e) async* {
        if (_userLogin.isValid) {
          // _statesStack.push(SignInState.passwordInput(
          //     password: _userPassword,
          //     confirmPassword: _userPassword,
          //     showErrorMessages: false,
          //     isSubmitting: false,
          //     authFailureOrSuccessOption: none()));
        } else {
          _userLogin = Login('');
          _statesStack.push(LoginState.loginInput(
              login: _userLogin,
              showErrorMessages: false,
              isSubmitting: false,
              authFailureOrSuccessOption: none()));
        }
        yield _statesStack.top();
      },
      confirmEmailCodePressed: (e) async* {},
      confirmPasswordPressed: (e) async* {
        // yield (_statesStack.top() as PasswordInput)
        //     .copyWith(isSubmitting: true, authFailureOrSuccessOption: none());

        // yield (_statesStack.top() as PasswordInput).copyWith(
        //     isSubmitting: false, authFailureOrSuccessOption: some(right(unit)));
      },
      confirmSignInCredentialsPressed: (e) async* {},
      popStatesStack: (e) async* {
        if (_statesStack.isNotEmpty) _statesStack.pop();

        if (_statesStack.isNotEmpty) {
          yield _statesStack.top();
        } else {
          _statesStack.push(LoginState.initial());
          yield _statesStack.top();
        }
      },
    );
  }

  Stream<LoginState> updateTopStatePassword() async* {
    final topState = _statesStack.top();
    // if (topState is PasswordInput) {
    //   yield topState.copyWith(
    //     password: _userPassword,
    //   );
    // } else if (topState is SignInCredInput) {
    //   yield topState.copyWith(
    //     password: _userPassword,
    //     authFailureOrSuccessOption: none(),
    //   );
    // }
  }
}
