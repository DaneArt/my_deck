import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:mydeck/errors/auth_failure.dart';
import 'package:mydeck/models/value_objects/value_object.dart';
import 'package:mydeck/utils/auth_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mydeck/models/value_objects/email_address.dart';
import 'package:mydeck/models/value_objects/username.dart';
import 'package:mydeck/models/value_objects/password.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade authFacade;

  AuthBloc(this.authFacade) : super(AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      emailOrLoginChanged: (e) async* {
        if (EmailAddress(e.emailOrLoginStr).isValid) {
          yield state.copyWith(
            email: EmailAddress(e.emailOrLoginStr),
          );
        } else {
          yield state.copyWith(
            username: Username(e.emailOrLoginStr),
          );
        }
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordStr),
        );
      },
      signInWithGooglePressed: (e) async* {
        yield state.copyWith(
          submitting: true,
          authFailureOrSuccessOption: (none()),
        );
        final result = await authFacade.signInWithGoogle();
        yield result.fold(
          (failure) => state.copyWith(
            submitting: false,
            authFailureOrSuccessOption: some(
              left(failure),
            ),
          ),
          (success) => state.copyWith(
            submitting: false,
            authFailureOrSuccessOption: some(
              right(unit),
            ),
          ),
        );
      },
      signInPressed: (e) async* {
        yield state.copyWith(
          submitting: true,
          autovalidate: true,
          authFailureOrSuccessOption: (none()),
        );
        if (_canSignIn()) {
          final result = await authFacade.signInWithCredentials(
            emailOrLogin: state.email != null && state.email.isValid
                ? state.email
                : state.username,
            password: state.password,
          );
          yield result.fold(
            (failure) => state.copyWith(
              submitting: false,
              authFailureOrSuccessOption: some(
                left(failure),
              ),
            ),
            (success) => state.copyWith(
              submitting: false,
              authFailureOrSuccessOption: some(
                right(unit),
              ),
            ),
          );
        } else if (!state.email.isValid && !state.username.isValid) {
          yield state.copyWith(
            submitting: false,
            autovalidate: true,
            authFailureOrSuccessOption: some(
              left(
                AuthFailure.userNotFound(),
              ),
            ),
          );
        } else {
          yield state.copyWith(
            submitting: false,
            authFailureOrSuccessOption: some(
              left(
                AuthFailure.wrongPassword(),
              ),
            ),
          );
        }
      },
      obscurePassword: (e) async* {
        yield state.copyWith(
          obscurePassword: !state.obscurePassword,
        );
      },
      emailChanged: (e) async* {
        yield state.copyWith(
          email: EmailAddress(e.emailStr),
        );
      },
      usernameChanged: (e) async* {
        yield state.copyWith(
          username: Username(e.usernameStr),
        );
      },
      signUpPressed: (e) async* {
        yield state.copyWith(
          submitting: true,
          autovalidate: true,
          authFailureOrSuccessOption: (none()),
        );
        if (_canSignUp()) {
          final authResult = await authFacade.signUpWithCredentials(
              emailAddress: state.email,
              username: state.username,
              password: state.password);
          yield authResult.fold(
            (l) => state.copyWith(
              submitting: false,
              autovalidate: true,
              authFailureOrSuccessOption: some(
                left(l),
              ),
            ),
            (r) => state.copyWith(
              submitting: false,
              autovalidate: true,
              authFailureOrSuccessOption: some(
                right(unit),
              ),
            ),
          );
        } else {
          yield state.copyWith(
            submitting: false,
            autovalidate: true,
            authFailureOrSuccessOption: some(
              left(
                AuthFailure.invalidFields(),
              ),
            ),
          );
        }
      },
    );
  }

  bool _canSignIn() =>
      ((state.email?.isValid ?? false) || (state.username?.isValid ?? false)) &&
      (state.password?.isValid ?? false);
  bool _canSignUp() =>
      state.email.isValid && state.username.isValid && state.password.isValid;

  bool _isFieldsValid() =>
      state.email.isValid && state.password.isValid && state.username.isValid;
}
