import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:mydeck/errors/auth_failure.dart';
import 'package:mydeck/models/value_objects/value_object.dart';
import 'package:mydeck/utils/auth_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mydeck/models/value_objects/email_address.dart';
import 'package:mydeck/models/value_objects/login.dart';
import 'package:mydeck/models/value_objects/password.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final IAuthFacade authFacade;

  SignInBloc(this.authFacade) : super(SignInState.initial());

  @override
  Stream<SignInState> mapEventToState(
    SignInEvent event,
  ) async* {
    yield* event.map(
      emailOrLoginChanged: (e) async* {
        yield state.copyWith(
          emailOrLogin: EmailAddress(e.emailOrLoginStr).value.fold(
                (l) => Login(e.emailOrLoginStr),
                (r) => EmailAddress(e.emailOrLoginStr),
              ),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(password: Password(e.passwordStr));
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
          authFailureOrSuccessOption: (none()),
        );
        final result = await authFacade.signInWithCredentials(
          emailOrLogin: state.emailOrLogin,
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
      },
    );
  }
}
