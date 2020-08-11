// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SignInEventTearOff {
  const _$SignInEventTearOff();

  EmailOrLoginChanged emailOrLoginChanged(String emailOrLoginStr) {
    return EmailOrLoginChanged(
      emailOrLoginStr,
    );
  }

  PasswordChanged passwordChanged(String passwordStr) {
    return PasswordChanged(
      passwordStr,
    );
  }

  SignInWithGooglePressed signInWithGooglePressed() {
    return SignInWithGooglePressed();
  }

  SignInPressed signInPressed() {
    return SignInPressed();
  }
}

// ignore: unused_element
const $SignInEvent = _$SignInEventTearOff();

mixin _$SignInEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailOrLoginChanged(String emailOrLoginStr),
    @required Result passwordChanged(String passwordStr),
    @required Result signInWithGooglePressed(),
    @required Result signInPressed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailOrLoginChanged(String emailOrLoginStr),
    Result passwordChanged(String passwordStr),
    Result signInWithGooglePressed(),
    Result signInPressed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailOrLoginChanged(EmailOrLoginChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInPressed(SignInPressed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailOrLoginChanged(EmailOrLoginChanged value),
    Result passwordChanged(PasswordChanged value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInPressed(SignInPressed value),
    @required Result orElse(),
  });
}

abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res>;
}

class _$SignInEventCopyWithImpl<$Res> implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  final SignInEvent _value;
  // ignore: unused_field
  final $Res Function(SignInEvent) _then;
}

abstract class $EmailOrLoginChangedCopyWith<$Res> {
  factory $EmailOrLoginChangedCopyWith(
          EmailOrLoginChanged value, $Res Function(EmailOrLoginChanged) then) =
      _$EmailOrLoginChangedCopyWithImpl<$Res>;
  $Res call({String emailOrLoginStr});
}

class _$EmailOrLoginChangedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements $EmailOrLoginChangedCopyWith<$Res> {
  _$EmailOrLoginChangedCopyWithImpl(
      EmailOrLoginChanged _value, $Res Function(EmailOrLoginChanged) _then)
      : super(_value, (v) => _then(v as EmailOrLoginChanged));

  @override
  EmailOrLoginChanged get _value => super._value as EmailOrLoginChanged;

  @override
  $Res call({
    Object emailOrLoginStr = freezed,
  }) {
    return _then(EmailOrLoginChanged(
      emailOrLoginStr == freezed
          ? _value.emailOrLoginStr
          : emailOrLoginStr as String,
    ));
  }
}

class _$EmailOrLoginChanged implements EmailOrLoginChanged {
  _$EmailOrLoginChanged(this.emailOrLoginStr) : assert(emailOrLoginStr != null);

  @override
  final String emailOrLoginStr;

  @override
  String toString() {
    return 'SignInEvent.emailOrLoginChanged(emailOrLoginStr: $emailOrLoginStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailOrLoginChanged &&
            (identical(other.emailOrLoginStr, emailOrLoginStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailOrLoginStr, emailOrLoginStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailOrLoginStr);

  @override
  $EmailOrLoginChangedCopyWith<EmailOrLoginChanged> get copyWith =>
      _$EmailOrLoginChangedCopyWithImpl<EmailOrLoginChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailOrLoginChanged(String emailOrLoginStr),
    @required Result passwordChanged(String passwordStr),
    @required Result signInWithGooglePressed(),
    @required Result signInPressed(),
  }) {
    assert(emailOrLoginChanged != null);
    assert(passwordChanged != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    return emailOrLoginChanged(emailOrLoginStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailOrLoginChanged(String emailOrLoginStr),
    Result passwordChanged(String passwordStr),
    Result signInWithGooglePressed(),
    Result signInPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailOrLoginChanged != null) {
      return emailOrLoginChanged(emailOrLoginStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailOrLoginChanged(EmailOrLoginChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInPressed(SignInPressed value),
  }) {
    assert(emailOrLoginChanged != null);
    assert(passwordChanged != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    return emailOrLoginChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailOrLoginChanged(EmailOrLoginChanged value),
    Result passwordChanged(PasswordChanged value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInPressed(SignInPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailOrLoginChanged != null) {
      return emailOrLoginChanged(this);
    }
    return orElse();
  }
}

abstract class EmailOrLoginChanged implements SignInEvent {
  factory EmailOrLoginChanged(String emailOrLoginStr) = _$EmailOrLoginChanged;

  String get emailOrLoginStr;
  $EmailOrLoginChangedCopyWith<EmailOrLoginChanged> get copyWith;
}

abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

class _$PasswordChangedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object passwordStr = freezed,
  }) {
    return _then(PasswordChanged(
      passwordStr == freezed ? _value.passwordStr : passwordStr as String,
    ));
  }
}

class _$PasswordChanged implements PasswordChanged {
  _$PasswordChanged(this.passwordStr) : assert(passwordStr != null);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'SignInEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                const DeepCollectionEquality()
                    .equals(other.passwordStr, passwordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(passwordStr);

  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailOrLoginChanged(String emailOrLoginStr),
    @required Result passwordChanged(String passwordStr),
    @required Result signInWithGooglePressed(),
    @required Result signInPressed(),
  }) {
    assert(emailOrLoginChanged != null);
    assert(passwordChanged != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailOrLoginChanged(String emailOrLoginStr),
    Result passwordChanged(String passwordStr),
    Result signInWithGooglePressed(),
    Result signInPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailOrLoginChanged(EmailOrLoginChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInPressed(SignInPressed value),
  }) {
    assert(emailOrLoginChanged != null);
    assert(passwordChanged != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailOrLoginChanged(EmailOrLoginChanged value),
    Result passwordChanged(PasswordChanged value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInPressed(SignInPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignInEvent {
  factory PasswordChanged(String passwordStr) = _$PasswordChanged;

  String get passwordStr;
  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
}

abstract class $SignInWithGooglePressedCopyWith<$Res> {
  factory $SignInWithGooglePressedCopyWith(SignInWithGooglePressed value,
          $Res Function(SignInWithGooglePressed) then) =
      _$SignInWithGooglePressedCopyWithImpl<$Res>;
}

class _$SignInWithGooglePressedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements $SignInWithGooglePressedCopyWith<$Res> {
  _$SignInWithGooglePressedCopyWithImpl(SignInWithGooglePressed _value,
      $Res Function(SignInWithGooglePressed) _then)
      : super(_value, (v) => _then(v as SignInWithGooglePressed));

  @override
  SignInWithGooglePressed get _value => super._value as SignInWithGooglePressed;
}

class _$SignInWithGooglePressed implements SignInWithGooglePressed {
  _$SignInWithGooglePressed();

  @override
  String toString() {
    return 'SignInEvent.signInWithGooglePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInWithGooglePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailOrLoginChanged(String emailOrLoginStr),
    @required Result passwordChanged(String passwordStr),
    @required Result signInWithGooglePressed(),
    @required Result signInPressed(),
  }) {
    assert(emailOrLoginChanged != null);
    assert(passwordChanged != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    return signInWithGooglePressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailOrLoginChanged(String emailOrLoginStr),
    Result passwordChanged(String passwordStr),
    Result signInWithGooglePressed(),
    Result signInPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailOrLoginChanged(EmailOrLoginChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInPressed(SignInPressed value),
  }) {
    assert(emailOrLoginChanged != null);
    assert(passwordChanged != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    return signInWithGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailOrLoginChanged(EmailOrLoginChanged value),
    Result passwordChanged(PasswordChanged value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInPressed(SignInPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed(this);
    }
    return orElse();
  }
}

abstract class SignInWithGooglePressed implements SignInEvent {
  factory SignInWithGooglePressed() = _$SignInWithGooglePressed;
}

abstract class $SignInPressedCopyWith<$Res> {
  factory $SignInPressedCopyWith(
          SignInPressed value, $Res Function(SignInPressed) then) =
      _$SignInPressedCopyWithImpl<$Res>;
}

class _$SignInPressedCopyWithImpl<$Res> extends _$SignInEventCopyWithImpl<$Res>
    implements $SignInPressedCopyWith<$Res> {
  _$SignInPressedCopyWithImpl(
      SignInPressed _value, $Res Function(SignInPressed) _then)
      : super(_value, (v) => _then(v as SignInPressed));

  @override
  SignInPressed get _value => super._value as SignInPressed;
}

class _$SignInPressed implements SignInPressed {
  _$SignInPressed();

  @override
  String toString() {
    return 'SignInEvent.signInPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailOrLoginChanged(String emailOrLoginStr),
    @required Result passwordChanged(String passwordStr),
    @required Result signInWithGooglePressed(),
    @required Result signInPressed(),
  }) {
    assert(emailOrLoginChanged != null);
    assert(passwordChanged != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    return signInPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailOrLoginChanged(String emailOrLoginStr),
    Result passwordChanged(String passwordStr),
    Result signInWithGooglePressed(),
    Result signInPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInPressed != null) {
      return signInPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailOrLoginChanged(EmailOrLoginChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInPressed(SignInPressed value),
  }) {
    assert(emailOrLoginChanged != null);
    assert(passwordChanged != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    return signInPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailOrLoginChanged(EmailOrLoginChanged value),
    Result passwordChanged(PasswordChanged value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInPressed(SignInPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInPressed != null) {
      return signInPressed(this);
    }
    return orElse();
  }
}

abstract class SignInPressed implements SignInEvent {
  factory SignInPressed() = _$SignInPressed;
}

class _$SignInStateTearOff {
  const _$SignInStateTearOff();

  _SignInState call(
      {@required ValueObject<String> emailOrLogin,
      @required ValueObject<String> password,
      @required bool submitting,
      @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _SignInState(
      emailOrLogin: emailOrLogin,
      password: password,
      submitting: submitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $SignInState = _$SignInStateTearOff();

mixin _$SignInState {
  ValueObject<String> get emailOrLogin;
  ValueObject<String> get password;
  bool get submitting;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;

  $SignInStateCopyWith<SignInState> get copyWith;
}

abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res>;
  $Res call(
      {ValueObject<String> emailOrLogin,
      ValueObject<String> password,
      bool submitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

class _$SignInStateCopyWithImpl<$Res> implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  final SignInState _value;
  // ignore: unused_field
  final $Res Function(SignInState) _then;

  @override
  $Res call({
    Object emailOrLogin = freezed,
    Object password = freezed,
    Object submitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      emailOrLogin: emailOrLogin == freezed
          ? _value.emailOrLogin
          : emailOrLogin as ValueObject<String>,
      password: password == freezed
          ? _value.password
          : password as ValueObject<String>,
      submitting:
          submitting == freezed ? _value.submitting : submitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

abstract class _$SignInStateCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$SignInStateCopyWith(
          _SignInState value, $Res Function(_SignInState) then) =
      __$SignInStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ValueObject<String> emailOrLogin,
      ValueObject<String> password,
      bool submitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

class __$SignInStateCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
    implements _$SignInStateCopyWith<$Res> {
  __$SignInStateCopyWithImpl(
      _SignInState _value, $Res Function(_SignInState) _then)
      : super(_value, (v) => _then(v as _SignInState));

  @override
  _SignInState get _value => super._value as _SignInState;

  @override
  $Res call({
    Object emailOrLogin = freezed,
    Object password = freezed,
    Object submitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_SignInState(
      emailOrLogin: emailOrLogin == freezed
          ? _value.emailOrLogin
          : emailOrLogin as ValueObject<String>,
      password: password == freezed
          ? _value.password
          : password as ValueObject<String>,
      submitting:
          submitting == freezed ? _value.submitting : submitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

class _$_SignInState implements _SignInState {
  const _$_SignInState(
      {@required this.emailOrLogin,
      @required this.password,
      @required this.submitting,
      @required this.authFailureOrSuccessOption})
      : assert(emailOrLogin != null),
        assert(password != null),
        assert(submitting != null),
        assert(authFailureOrSuccessOption != null);

  @override
  final ValueObject<String> emailOrLogin;
  @override
  final ValueObject<String> password;
  @override
  final bool submitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'SignInState(emailOrLogin: $emailOrLogin, password: $password, submitting: $submitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInState &&
            (identical(other.emailOrLogin, emailOrLogin) ||
                const DeepCollectionEquality()
                    .equals(other.emailOrLogin, emailOrLogin)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.submitting, submitting) ||
                const DeepCollectionEquality()
                    .equals(other.submitting, submitting)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailOrLogin) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(submitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @override
  _$SignInStateCopyWith<_SignInState> get copyWith =>
      __$SignInStateCopyWithImpl<_SignInState>(this, _$identity);
}

abstract class _SignInState implements SignInState {
  const factory _SignInState(
          {@required
              ValueObject<String> emailOrLogin,
          @required
              ValueObject<String> password,
          @required
              bool submitting,
          @required
              Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) =
      _$_SignInState;

  @override
  ValueObject<String> get emailOrLogin;
  @override
  ValueObject<String> get password;
  @override
  bool get submitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  _$SignInStateCopyWith<_SignInState> get copyWith;
}
