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

  EmailChanged emailChanged(String emailStr) {
    return EmailChanged(
      emailStr,
    );
  }

  PasswordChanged passwordChanged(String passwordStr) {
    return PasswordChanged(
      passwordStr,
    );
  }

  LoginChanged loginChanged(String loginStr) {
    return LoginChanged(
      loginStr,
    );
  }

  PopStatesStack popStatesStack() {
    return PopStatesStack();
  }

  SignInWithGooglePressed signInWithGooglePressed() {
    return SignInWithGooglePressed();
  }

  SignInPressed signInPressed() {
    return SignInPressed();
  }

  SignUpPressed signUpPressed() {
    return SignUpPressed();
  }

  ConfirmLoginPressed confirmLoginPressed() {
    return ConfirmLoginPressed();
  }

  ConfirmEmailPressed confirmEmailPressed() {
    return ConfirmEmailPressed();
  }

  ConfirmEmailCodePressed confirmEmailCodePressed() {
    return ConfirmEmailCodePressed();
  }

  ConfirmPasswordPressed confirmPasswordPressed() {
    return ConfirmPasswordPressed();
  }

  ConfirmSignInCredentialsPressed confirmSignInCredentialsPressed() {
    return ConfirmSignInCredentialsPressed();
  }
}

// ignore: unused_element
const $SignInEvent = _$SignInEventTearOff();

mixin _$SignInEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailOrLoginChanged(String emailOrLoginStr),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result loginChanged(String loginStr),
    @required Result popStatesStack(),
    @required Result signInWithGooglePressed(),
    @required Result signInPressed(),
    @required Result signUpPressed(),
    @required Result confirmLoginPressed(),
    @required Result confirmEmailPressed(),
    @required Result confirmEmailCodePressed(),
    @required Result confirmPasswordPressed(),
    @required Result confirmSignInCredentialsPressed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailOrLoginChanged(String emailOrLoginStr),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result loginChanged(String loginStr),
    Result popStatesStack(),
    Result signInWithGooglePressed(),
    Result signInPressed(),
    Result signUpPressed(),
    Result confirmLoginPressed(),
    Result confirmEmailPressed(),
    Result confirmEmailCodePressed(),
    Result confirmPasswordPressed(),
    Result confirmSignInCredentialsPressed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailOrLoginChanged(EmailOrLoginChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result loginChanged(LoginChanged value),
    @required Result popStatesStack(PopStatesStack value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInPressed(SignInPressed value),
    @required Result signUpPressed(SignUpPressed value),
    @required Result confirmLoginPressed(ConfirmLoginPressed value),
    @required Result confirmEmailPressed(ConfirmEmailPressed value),
    @required Result confirmEmailCodePressed(ConfirmEmailCodePressed value),
    @required Result confirmPasswordPressed(ConfirmPasswordPressed value),
    @required
        Result confirmSignInCredentialsPressed(
            ConfirmSignInCredentialsPressed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailOrLoginChanged(EmailOrLoginChanged value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result loginChanged(LoginChanged value),
    Result popStatesStack(PopStatesStack value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInPressed(SignInPressed value),
    Result signUpPressed(SignUpPressed value),
    Result confirmLoginPressed(ConfirmLoginPressed value),
    Result confirmEmailPressed(ConfirmEmailPressed value),
    Result confirmEmailCodePressed(ConfirmEmailCodePressed value),
    Result confirmPasswordPressed(ConfirmPasswordPressed value),
    Result confirmSignInCredentialsPressed(
        ConfirmSignInCredentialsPressed value),
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
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result loginChanged(String loginStr),
    @required Result popStatesStack(),
    @required Result signInWithGooglePressed(),
    @required Result signInPressed(),
    @required Result signUpPressed(),
    @required Result confirmLoginPressed(),
    @required Result confirmEmailPressed(),
    @required Result confirmEmailCodePressed(),
    @required Result confirmPasswordPressed(),
    @required Result confirmSignInCredentialsPressed(),
  }) {
    assert(emailOrLoginChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loginChanged != null);
    assert(popStatesStack != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    assert(signUpPressed != null);
    assert(confirmLoginPressed != null);
    assert(confirmEmailPressed != null);
    assert(confirmEmailCodePressed != null);
    assert(confirmPasswordPressed != null);
    assert(confirmSignInCredentialsPressed != null);
    return emailOrLoginChanged(emailOrLoginStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailOrLoginChanged(String emailOrLoginStr),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result loginChanged(String loginStr),
    Result popStatesStack(),
    Result signInWithGooglePressed(),
    Result signInPressed(),
    Result signUpPressed(),
    Result confirmLoginPressed(),
    Result confirmEmailPressed(),
    Result confirmEmailCodePressed(),
    Result confirmPasswordPressed(),
    Result confirmSignInCredentialsPressed(),
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
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result loginChanged(LoginChanged value),
    @required Result popStatesStack(PopStatesStack value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInPressed(SignInPressed value),
    @required Result signUpPressed(SignUpPressed value),
    @required Result confirmLoginPressed(ConfirmLoginPressed value),
    @required Result confirmEmailPressed(ConfirmEmailPressed value),
    @required Result confirmEmailCodePressed(ConfirmEmailCodePressed value),
    @required Result confirmPasswordPressed(ConfirmPasswordPressed value),
    @required
        Result confirmSignInCredentialsPressed(
            ConfirmSignInCredentialsPressed value),
  }) {
    assert(emailOrLoginChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loginChanged != null);
    assert(popStatesStack != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    assert(signUpPressed != null);
    assert(confirmLoginPressed != null);
    assert(confirmEmailPressed != null);
    assert(confirmEmailCodePressed != null);
    assert(confirmPasswordPressed != null);
    assert(confirmSignInCredentialsPressed != null);
    return emailOrLoginChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailOrLoginChanged(EmailOrLoginChanged value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result loginChanged(LoginChanged value),
    Result popStatesStack(PopStatesStack value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInPressed(SignInPressed value),
    Result signUpPressed(SignUpPressed value),
    Result confirmLoginPressed(ConfirmLoginPressed value),
    Result confirmEmailPressed(ConfirmEmailPressed value),
    Result confirmEmailCodePressed(ConfirmEmailCodePressed value),
    Result confirmPasswordPressed(ConfirmPasswordPressed value),
    Result confirmSignInCredentialsPressed(
        ConfirmSignInCredentialsPressed value),
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

abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

class _$EmailChangedCopyWithImpl<$Res> extends _$SignInEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object emailStr = freezed,
  }) {
    return _then(EmailChanged(
      emailStr == freezed ? _value.emailStr : emailStr as String,
    ));
  }
}

class _$EmailChanged implements EmailChanged {
  _$EmailChanged(this.emailStr) : assert(emailStr != null);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'SignInEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailStr, emailStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailStr);

  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailOrLoginChanged(String emailOrLoginStr),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result loginChanged(String loginStr),
    @required Result popStatesStack(),
    @required Result signInWithGooglePressed(),
    @required Result signInPressed(),
    @required Result signUpPressed(),
    @required Result confirmLoginPressed(),
    @required Result confirmEmailPressed(),
    @required Result confirmEmailCodePressed(),
    @required Result confirmPasswordPressed(),
    @required Result confirmSignInCredentialsPressed(),
  }) {
    assert(emailOrLoginChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loginChanged != null);
    assert(popStatesStack != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    assert(signUpPressed != null);
    assert(confirmLoginPressed != null);
    assert(confirmEmailPressed != null);
    assert(confirmEmailCodePressed != null);
    assert(confirmPasswordPressed != null);
    assert(confirmSignInCredentialsPressed != null);
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailOrLoginChanged(String emailOrLoginStr),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result loginChanged(String loginStr),
    Result popStatesStack(),
    Result signInWithGooglePressed(),
    Result signInPressed(),
    Result signUpPressed(),
    Result confirmLoginPressed(),
    Result confirmEmailPressed(),
    Result confirmEmailCodePressed(),
    Result confirmPasswordPressed(),
    Result confirmSignInCredentialsPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailOrLoginChanged(EmailOrLoginChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result loginChanged(LoginChanged value),
    @required Result popStatesStack(PopStatesStack value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInPressed(SignInPressed value),
    @required Result signUpPressed(SignUpPressed value),
    @required Result confirmLoginPressed(ConfirmLoginPressed value),
    @required Result confirmEmailPressed(ConfirmEmailPressed value),
    @required Result confirmEmailCodePressed(ConfirmEmailCodePressed value),
    @required Result confirmPasswordPressed(ConfirmPasswordPressed value),
    @required
        Result confirmSignInCredentialsPressed(
            ConfirmSignInCredentialsPressed value),
  }) {
    assert(emailOrLoginChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loginChanged != null);
    assert(popStatesStack != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    assert(signUpPressed != null);
    assert(confirmLoginPressed != null);
    assert(confirmEmailPressed != null);
    assert(confirmEmailCodePressed != null);
    assert(confirmPasswordPressed != null);
    assert(confirmSignInCredentialsPressed != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailOrLoginChanged(EmailOrLoginChanged value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result loginChanged(LoginChanged value),
    Result popStatesStack(PopStatesStack value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInPressed(SignInPressed value),
    Result signUpPressed(SignUpPressed value),
    Result confirmLoginPressed(ConfirmLoginPressed value),
    Result confirmEmailPressed(ConfirmEmailPressed value),
    Result confirmEmailCodePressed(ConfirmEmailCodePressed value),
    Result confirmPasswordPressed(ConfirmPasswordPressed value),
    Result confirmSignInCredentialsPressed(
        ConfirmSignInCredentialsPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignInEvent {
  factory EmailChanged(String emailStr) = _$EmailChanged;

  String get emailStr;
  $EmailChangedCopyWith<EmailChanged> get copyWith;
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
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result loginChanged(String loginStr),
    @required Result popStatesStack(),
    @required Result signInWithGooglePressed(),
    @required Result signInPressed(),
    @required Result signUpPressed(),
    @required Result confirmLoginPressed(),
    @required Result confirmEmailPressed(),
    @required Result confirmEmailCodePressed(),
    @required Result confirmPasswordPressed(),
    @required Result confirmSignInCredentialsPressed(),
  }) {
    assert(emailOrLoginChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loginChanged != null);
    assert(popStatesStack != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    assert(signUpPressed != null);
    assert(confirmLoginPressed != null);
    assert(confirmEmailPressed != null);
    assert(confirmEmailCodePressed != null);
    assert(confirmPasswordPressed != null);
    assert(confirmSignInCredentialsPressed != null);
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailOrLoginChanged(String emailOrLoginStr),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result loginChanged(String loginStr),
    Result popStatesStack(),
    Result signInWithGooglePressed(),
    Result signInPressed(),
    Result signUpPressed(),
    Result confirmLoginPressed(),
    Result confirmEmailPressed(),
    Result confirmEmailCodePressed(),
    Result confirmPasswordPressed(),
    Result confirmSignInCredentialsPressed(),
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
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result loginChanged(LoginChanged value),
    @required Result popStatesStack(PopStatesStack value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInPressed(SignInPressed value),
    @required Result signUpPressed(SignUpPressed value),
    @required Result confirmLoginPressed(ConfirmLoginPressed value),
    @required Result confirmEmailPressed(ConfirmEmailPressed value),
    @required Result confirmEmailCodePressed(ConfirmEmailCodePressed value),
    @required Result confirmPasswordPressed(ConfirmPasswordPressed value),
    @required
        Result confirmSignInCredentialsPressed(
            ConfirmSignInCredentialsPressed value),
  }) {
    assert(emailOrLoginChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loginChanged != null);
    assert(popStatesStack != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    assert(signUpPressed != null);
    assert(confirmLoginPressed != null);
    assert(confirmEmailPressed != null);
    assert(confirmEmailCodePressed != null);
    assert(confirmPasswordPressed != null);
    assert(confirmSignInCredentialsPressed != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailOrLoginChanged(EmailOrLoginChanged value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result loginChanged(LoginChanged value),
    Result popStatesStack(PopStatesStack value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInPressed(SignInPressed value),
    Result signUpPressed(SignUpPressed value),
    Result confirmLoginPressed(ConfirmLoginPressed value),
    Result confirmEmailPressed(ConfirmEmailPressed value),
    Result confirmEmailCodePressed(ConfirmEmailCodePressed value),
    Result confirmPasswordPressed(ConfirmPasswordPressed value),
    Result confirmSignInCredentialsPressed(
        ConfirmSignInCredentialsPressed value),
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

abstract class $LoginChangedCopyWith<$Res> {
  factory $LoginChangedCopyWith(
          LoginChanged value, $Res Function(LoginChanged) then) =
      _$LoginChangedCopyWithImpl<$Res>;
  $Res call({String loginStr});
}

class _$LoginChangedCopyWithImpl<$Res> extends _$SignInEventCopyWithImpl<$Res>
    implements $LoginChangedCopyWith<$Res> {
  _$LoginChangedCopyWithImpl(
      LoginChanged _value, $Res Function(LoginChanged) _then)
      : super(_value, (v) => _then(v as LoginChanged));

  @override
  LoginChanged get _value => super._value as LoginChanged;

  @override
  $Res call({
    Object loginStr = freezed,
  }) {
    return _then(LoginChanged(
      loginStr == freezed ? _value.loginStr : loginStr as String,
    ));
  }
}

class _$LoginChanged implements LoginChanged {
  _$LoginChanged(this.loginStr) : assert(loginStr != null);

  @override
  final String loginStr;

  @override
  String toString() {
    return 'SignInEvent.loginChanged(loginStr: $loginStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginChanged &&
            (identical(other.loginStr, loginStr) ||
                const DeepCollectionEquality()
                    .equals(other.loginStr, loginStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(loginStr);

  @override
  $LoginChangedCopyWith<LoginChanged> get copyWith =>
      _$LoginChangedCopyWithImpl<LoginChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailOrLoginChanged(String emailOrLoginStr),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result loginChanged(String loginStr),
    @required Result popStatesStack(),
    @required Result signInWithGooglePressed(),
    @required Result signInPressed(),
    @required Result signUpPressed(),
    @required Result confirmLoginPressed(),
    @required Result confirmEmailPressed(),
    @required Result confirmEmailCodePressed(),
    @required Result confirmPasswordPressed(),
    @required Result confirmSignInCredentialsPressed(),
  }) {
    assert(emailOrLoginChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loginChanged != null);
    assert(popStatesStack != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    assert(signUpPressed != null);
    assert(confirmLoginPressed != null);
    assert(confirmEmailPressed != null);
    assert(confirmEmailCodePressed != null);
    assert(confirmPasswordPressed != null);
    assert(confirmSignInCredentialsPressed != null);
    return loginChanged(loginStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailOrLoginChanged(String emailOrLoginStr),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result loginChanged(String loginStr),
    Result popStatesStack(),
    Result signInWithGooglePressed(),
    Result signInPressed(),
    Result signUpPressed(),
    Result confirmLoginPressed(),
    Result confirmEmailPressed(),
    Result confirmEmailCodePressed(),
    Result confirmPasswordPressed(),
    Result confirmSignInCredentialsPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginChanged != null) {
      return loginChanged(loginStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailOrLoginChanged(EmailOrLoginChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result loginChanged(LoginChanged value),
    @required Result popStatesStack(PopStatesStack value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInPressed(SignInPressed value),
    @required Result signUpPressed(SignUpPressed value),
    @required Result confirmLoginPressed(ConfirmLoginPressed value),
    @required Result confirmEmailPressed(ConfirmEmailPressed value),
    @required Result confirmEmailCodePressed(ConfirmEmailCodePressed value),
    @required Result confirmPasswordPressed(ConfirmPasswordPressed value),
    @required
        Result confirmSignInCredentialsPressed(
            ConfirmSignInCredentialsPressed value),
  }) {
    assert(emailOrLoginChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loginChanged != null);
    assert(popStatesStack != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    assert(signUpPressed != null);
    assert(confirmLoginPressed != null);
    assert(confirmEmailPressed != null);
    assert(confirmEmailCodePressed != null);
    assert(confirmPasswordPressed != null);
    assert(confirmSignInCredentialsPressed != null);
    return loginChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailOrLoginChanged(EmailOrLoginChanged value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result loginChanged(LoginChanged value),
    Result popStatesStack(PopStatesStack value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInPressed(SignInPressed value),
    Result signUpPressed(SignUpPressed value),
    Result confirmLoginPressed(ConfirmLoginPressed value),
    Result confirmEmailPressed(ConfirmEmailPressed value),
    Result confirmEmailCodePressed(ConfirmEmailCodePressed value),
    Result confirmPasswordPressed(ConfirmPasswordPressed value),
    Result confirmSignInCredentialsPressed(
        ConfirmSignInCredentialsPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginChanged != null) {
      return loginChanged(this);
    }
    return orElse();
  }
}

abstract class LoginChanged implements SignInEvent {
  factory LoginChanged(String loginStr) = _$LoginChanged;

  String get loginStr;
  $LoginChangedCopyWith<LoginChanged> get copyWith;
}

abstract class $PopStatesStackCopyWith<$Res> {
  factory $PopStatesStackCopyWith(
          PopStatesStack value, $Res Function(PopStatesStack) then) =
      _$PopStatesStackCopyWithImpl<$Res>;
}

class _$PopStatesStackCopyWithImpl<$Res> extends _$SignInEventCopyWithImpl<$Res>
    implements $PopStatesStackCopyWith<$Res> {
  _$PopStatesStackCopyWithImpl(
      PopStatesStack _value, $Res Function(PopStatesStack) _then)
      : super(_value, (v) => _then(v as PopStatesStack));

  @override
  PopStatesStack get _value => super._value as PopStatesStack;
}

class _$PopStatesStack implements PopStatesStack {
  _$PopStatesStack();

  @override
  String toString() {
    return 'SignInEvent.popStatesStack()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PopStatesStack);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailOrLoginChanged(String emailOrLoginStr),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result loginChanged(String loginStr),
    @required Result popStatesStack(),
    @required Result signInWithGooglePressed(),
    @required Result signInPressed(),
    @required Result signUpPressed(),
    @required Result confirmLoginPressed(),
    @required Result confirmEmailPressed(),
    @required Result confirmEmailCodePressed(),
    @required Result confirmPasswordPressed(),
    @required Result confirmSignInCredentialsPressed(),
  }) {
    assert(emailOrLoginChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loginChanged != null);
    assert(popStatesStack != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    assert(signUpPressed != null);
    assert(confirmLoginPressed != null);
    assert(confirmEmailPressed != null);
    assert(confirmEmailCodePressed != null);
    assert(confirmPasswordPressed != null);
    assert(confirmSignInCredentialsPressed != null);
    return popStatesStack();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailOrLoginChanged(String emailOrLoginStr),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result loginChanged(String loginStr),
    Result popStatesStack(),
    Result signInWithGooglePressed(),
    Result signInPressed(),
    Result signUpPressed(),
    Result confirmLoginPressed(),
    Result confirmEmailPressed(),
    Result confirmEmailCodePressed(),
    Result confirmPasswordPressed(),
    Result confirmSignInCredentialsPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (popStatesStack != null) {
      return popStatesStack();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailOrLoginChanged(EmailOrLoginChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result loginChanged(LoginChanged value),
    @required Result popStatesStack(PopStatesStack value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInPressed(SignInPressed value),
    @required Result signUpPressed(SignUpPressed value),
    @required Result confirmLoginPressed(ConfirmLoginPressed value),
    @required Result confirmEmailPressed(ConfirmEmailPressed value),
    @required Result confirmEmailCodePressed(ConfirmEmailCodePressed value),
    @required Result confirmPasswordPressed(ConfirmPasswordPressed value),
    @required
        Result confirmSignInCredentialsPressed(
            ConfirmSignInCredentialsPressed value),
  }) {
    assert(emailOrLoginChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loginChanged != null);
    assert(popStatesStack != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    assert(signUpPressed != null);
    assert(confirmLoginPressed != null);
    assert(confirmEmailPressed != null);
    assert(confirmEmailCodePressed != null);
    assert(confirmPasswordPressed != null);
    assert(confirmSignInCredentialsPressed != null);
    return popStatesStack(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailOrLoginChanged(EmailOrLoginChanged value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result loginChanged(LoginChanged value),
    Result popStatesStack(PopStatesStack value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInPressed(SignInPressed value),
    Result signUpPressed(SignUpPressed value),
    Result confirmLoginPressed(ConfirmLoginPressed value),
    Result confirmEmailPressed(ConfirmEmailPressed value),
    Result confirmEmailCodePressed(ConfirmEmailCodePressed value),
    Result confirmPasswordPressed(ConfirmPasswordPressed value),
    Result confirmSignInCredentialsPressed(
        ConfirmSignInCredentialsPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (popStatesStack != null) {
      return popStatesStack(this);
    }
    return orElse();
  }
}

abstract class PopStatesStack implements SignInEvent {
  factory PopStatesStack() = _$PopStatesStack;
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
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result loginChanged(String loginStr),
    @required Result popStatesStack(),
    @required Result signInWithGooglePressed(),
    @required Result signInPressed(),
    @required Result signUpPressed(),
    @required Result confirmLoginPressed(),
    @required Result confirmEmailPressed(),
    @required Result confirmEmailCodePressed(),
    @required Result confirmPasswordPressed(),
    @required Result confirmSignInCredentialsPressed(),
  }) {
    assert(emailOrLoginChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loginChanged != null);
    assert(popStatesStack != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    assert(signUpPressed != null);
    assert(confirmLoginPressed != null);
    assert(confirmEmailPressed != null);
    assert(confirmEmailCodePressed != null);
    assert(confirmPasswordPressed != null);
    assert(confirmSignInCredentialsPressed != null);
    return signInWithGooglePressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailOrLoginChanged(String emailOrLoginStr),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result loginChanged(String loginStr),
    Result popStatesStack(),
    Result signInWithGooglePressed(),
    Result signInPressed(),
    Result signUpPressed(),
    Result confirmLoginPressed(),
    Result confirmEmailPressed(),
    Result confirmEmailCodePressed(),
    Result confirmPasswordPressed(),
    Result confirmSignInCredentialsPressed(),
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
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result loginChanged(LoginChanged value),
    @required Result popStatesStack(PopStatesStack value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInPressed(SignInPressed value),
    @required Result signUpPressed(SignUpPressed value),
    @required Result confirmLoginPressed(ConfirmLoginPressed value),
    @required Result confirmEmailPressed(ConfirmEmailPressed value),
    @required Result confirmEmailCodePressed(ConfirmEmailCodePressed value),
    @required Result confirmPasswordPressed(ConfirmPasswordPressed value),
    @required
        Result confirmSignInCredentialsPressed(
            ConfirmSignInCredentialsPressed value),
  }) {
    assert(emailOrLoginChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loginChanged != null);
    assert(popStatesStack != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    assert(signUpPressed != null);
    assert(confirmLoginPressed != null);
    assert(confirmEmailPressed != null);
    assert(confirmEmailCodePressed != null);
    assert(confirmPasswordPressed != null);
    assert(confirmSignInCredentialsPressed != null);
    return signInWithGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailOrLoginChanged(EmailOrLoginChanged value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result loginChanged(LoginChanged value),
    Result popStatesStack(PopStatesStack value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInPressed(SignInPressed value),
    Result signUpPressed(SignUpPressed value),
    Result confirmLoginPressed(ConfirmLoginPressed value),
    Result confirmEmailPressed(ConfirmEmailPressed value),
    Result confirmEmailCodePressed(ConfirmEmailCodePressed value),
    Result confirmPasswordPressed(ConfirmPasswordPressed value),
    Result confirmSignInCredentialsPressed(
        ConfirmSignInCredentialsPressed value),
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
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result loginChanged(String loginStr),
    @required Result popStatesStack(),
    @required Result signInWithGooglePressed(),
    @required Result signInPressed(),
    @required Result signUpPressed(),
    @required Result confirmLoginPressed(),
    @required Result confirmEmailPressed(),
    @required Result confirmEmailCodePressed(),
    @required Result confirmPasswordPressed(),
    @required Result confirmSignInCredentialsPressed(),
  }) {
    assert(emailOrLoginChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loginChanged != null);
    assert(popStatesStack != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    assert(signUpPressed != null);
    assert(confirmLoginPressed != null);
    assert(confirmEmailPressed != null);
    assert(confirmEmailCodePressed != null);
    assert(confirmPasswordPressed != null);
    assert(confirmSignInCredentialsPressed != null);
    return signInPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailOrLoginChanged(String emailOrLoginStr),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result loginChanged(String loginStr),
    Result popStatesStack(),
    Result signInWithGooglePressed(),
    Result signInPressed(),
    Result signUpPressed(),
    Result confirmLoginPressed(),
    Result confirmEmailPressed(),
    Result confirmEmailCodePressed(),
    Result confirmPasswordPressed(),
    Result confirmSignInCredentialsPressed(),
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
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result loginChanged(LoginChanged value),
    @required Result popStatesStack(PopStatesStack value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInPressed(SignInPressed value),
    @required Result signUpPressed(SignUpPressed value),
    @required Result confirmLoginPressed(ConfirmLoginPressed value),
    @required Result confirmEmailPressed(ConfirmEmailPressed value),
    @required Result confirmEmailCodePressed(ConfirmEmailCodePressed value),
    @required Result confirmPasswordPressed(ConfirmPasswordPressed value),
    @required
        Result confirmSignInCredentialsPressed(
            ConfirmSignInCredentialsPressed value),
  }) {
    assert(emailOrLoginChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loginChanged != null);
    assert(popStatesStack != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    assert(signUpPressed != null);
    assert(confirmLoginPressed != null);
    assert(confirmEmailPressed != null);
    assert(confirmEmailCodePressed != null);
    assert(confirmPasswordPressed != null);
    assert(confirmSignInCredentialsPressed != null);
    return signInPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailOrLoginChanged(EmailOrLoginChanged value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result loginChanged(LoginChanged value),
    Result popStatesStack(PopStatesStack value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInPressed(SignInPressed value),
    Result signUpPressed(SignUpPressed value),
    Result confirmLoginPressed(ConfirmLoginPressed value),
    Result confirmEmailPressed(ConfirmEmailPressed value),
    Result confirmEmailCodePressed(ConfirmEmailCodePressed value),
    Result confirmPasswordPressed(ConfirmPasswordPressed value),
    Result confirmSignInCredentialsPressed(
        ConfirmSignInCredentialsPressed value),
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

abstract class $SignUpPressedCopyWith<$Res> {
  factory $SignUpPressedCopyWith(
          SignUpPressed value, $Res Function(SignUpPressed) then) =
      _$SignUpPressedCopyWithImpl<$Res>;
}

class _$SignUpPressedCopyWithImpl<$Res> extends _$SignInEventCopyWithImpl<$Res>
    implements $SignUpPressedCopyWith<$Res> {
  _$SignUpPressedCopyWithImpl(
      SignUpPressed _value, $Res Function(SignUpPressed) _then)
      : super(_value, (v) => _then(v as SignUpPressed));

  @override
  SignUpPressed get _value => super._value as SignUpPressed;
}

class _$SignUpPressed implements SignUpPressed {
  _$SignUpPressed();

  @override
  String toString() {
    return 'SignInEvent.signUpPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignUpPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailOrLoginChanged(String emailOrLoginStr),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result loginChanged(String loginStr),
    @required Result popStatesStack(),
    @required Result signInWithGooglePressed(),
    @required Result signInPressed(),
    @required Result signUpPressed(),
    @required Result confirmLoginPressed(),
    @required Result confirmEmailPressed(),
    @required Result confirmEmailCodePressed(),
    @required Result confirmPasswordPressed(),
    @required Result confirmSignInCredentialsPressed(),
  }) {
    assert(emailOrLoginChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loginChanged != null);
    assert(popStatesStack != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    assert(signUpPressed != null);
    assert(confirmLoginPressed != null);
    assert(confirmEmailPressed != null);
    assert(confirmEmailCodePressed != null);
    assert(confirmPasswordPressed != null);
    assert(confirmSignInCredentialsPressed != null);
    return signUpPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailOrLoginChanged(String emailOrLoginStr),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result loginChanged(String loginStr),
    Result popStatesStack(),
    Result signInWithGooglePressed(),
    Result signInPressed(),
    Result signUpPressed(),
    Result confirmLoginPressed(),
    Result confirmEmailPressed(),
    Result confirmEmailCodePressed(),
    Result confirmPasswordPressed(),
    Result confirmSignInCredentialsPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signUpPressed != null) {
      return signUpPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailOrLoginChanged(EmailOrLoginChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result loginChanged(LoginChanged value),
    @required Result popStatesStack(PopStatesStack value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInPressed(SignInPressed value),
    @required Result signUpPressed(SignUpPressed value),
    @required Result confirmLoginPressed(ConfirmLoginPressed value),
    @required Result confirmEmailPressed(ConfirmEmailPressed value),
    @required Result confirmEmailCodePressed(ConfirmEmailCodePressed value),
    @required Result confirmPasswordPressed(ConfirmPasswordPressed value),
    @required
        Result confirmSignInCredentialsPressed(
            ConfirmSignInCredentialsPressed value),
  }) {
    assert(emailOrLoginChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loginChanged != null);
    assert(popStatesStack != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    assert(signUpPressed != null);
    assert(confirmLoginPressed != null);
    assert(confirmEmailPressed != null);
    assert(confirmEmailCodePressed != null);
    assert(confirmPasswordPressed != null);
    assert(confirmSignInCredentialsPressed != null);
    return signUpPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailOrLoginChanged(EmailOrLoginChanged value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result loginChanged(LoginChanged value),
    Result popStatesStack(PopStatesStack value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInPressed(SignInPressed value),
    Result signUpPressed(SignUpPressed value),
    Result confirmLoginPressed(ConfirmLoginPressed value),
    Result confirmEmailPressed(ConfirmEmailPressed value),
    Result confirmEmailCodePressed(ConfirmEmailCodePressed value),
    Result confirmPasswordPressed(ConfirmPasswordPressed value),
    Result confirmSignInCredentialsPressed(
        ConfirmSignInCredentialsPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signUpPressed != null) {
      return signUpPressed(this);
    }
    return orElse();
  }
}

abstract class SignUpPressed implements SignInEvent {
  factory SignUpPressed() = _$SignUpPressed;
}

abstract class $ConfirmLoginPressedCopyWith<$Res> {
  factory $ConfirmLoginPressedCopyWith(
          ConfirmLoginPressed value, $Res Function(ConfirmLoginPressed) then) =
      _$ConfirmLoginPressedCopyWithImpl<$Res>;
}

class _$ConfirmLoginPressedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements $ConfirmLoginPressedCopyWith<$Res> {
  _$ConfirmLoginPressedCopyWithImpl(
      ConfirmLoginPressed _value, $Res Function(ConfirmLoginPressed) _then)
      : super(_value, (v) => _then(v as ConfirmLoginPressed));

  @override
  ConfirmLoginPressed get _value => super._value as ConfirmLoginPressed;
}

class _$ConfirmLoginPressed implements ConfirmLoginPressed {
  _$ConfirmLoginPressed();

  @override
  String toString() {
    return 'SignInEvent.confirmLoginPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ConfirmLoginPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailOrLoginChanged(String emailOrLoginStr),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result loginChanged(String loginStr),
    @required Result popStatesStack(),
    @required Result signInWithGooglePressed(),
    @required Result signInPressed(),
    @required Result signUpPressed(),
    @required Result confirmLoginPressed(),
    @required Result confirmEmailPressed(),
    @required Result confirmEmailCodePressed(),
    @required Result confirmPasswordPressed(),
    @required Result confirmSignInCredentialsPressed(),
  }) {
    assert(emailOrLoginChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loginChanged != null);
    assert(popStatesStack != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    assert(signUpPressed != null);
    assert(confirmLoginPressed != null);
    assert(confirmEmailPressed != null);
    assert(confirmEmailCodePressed != null);
    assert(confirmPasswordPressed != null);
    assert(confirmSignInCredentialsPressed != null);
    return confirmLoginPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailOrLoginChanged(String emailOrLoginStr),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result loginChanged(String loginStr),
    Result popStatesStack(),
    Result signInWithGooglePressed(),
    Result signInPressed(),
    Result signUpPressed(),
    Result confirmLoginPressed(),
    Result confirmEmailPressed(),
    Result confirmEmailCodePressed(),
    Result confirmPasswordPressed(),
    Result confirmSignInCredentialsPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (confirmLoginPressed != null) {
      return confirmLoginPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailOrLoginChanged(EmailOrLoginChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result loginChanged(LoginChanged value),
    @required Result popStatesStack(PopStatesStack value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInPressed(SignInPressed value),
    @required Result signUpPressed(SignUpPressed value),
    @required Result confirmLoginPressed(ConfirmLoginPressed value),
    @required Result confirmEmailPressed(ConfirmEmailPressed value),
    @required Result confirmEmailCodePressed(ConfirmEmailCodePressed value),
    @required Result confirmPasswordPressed(ConfirmPasswordPressed value),
    @required
        Result confirmSignInCredentialsPressed(
            ConfirmSignInCredentialsPressed value),
  }) {
    assert(emailOrLoginChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loginChanged != null);
    assert(popStatesStack != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    assert(signUpPressed != null);
    assert(confirmLoginPressed != null);
    assert(confirmEmailPressed != null);
    assert(confirmEmailCodePressed != null);
    assert(confirmPasswordPressed != null);
    assert(confirmSignInCredentialsPressed != null);
    return confirmLoginPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailOrLoginChanged(EmailOrLoginChanged value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result loginChanged(LoginChanged value),
    Result popStatesStack(PopStatesStack value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInPressed(SignInPressed value),
    Result signUpPressed(SignUpPressed value),
    Result confirmLoginPressed(ConfirmLoginPressed value),
    Result confirmEmailPressed(ConfirmEmailPressed value),
    Result confirmEmailCodePressed(ConfirmEmailCodePressed value),
    Result confirmPasswordPressed(ConfirmPasswordPressed value),
    Result confirmSignInCredentialsPressed(
        ConfirmSignInCredentialsPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (confirmLoginPressed != null) {
      return confirmLoginPressed(this);
    }
    return orElse();
  }
}

abstract class ConfirmLoginPressed implements SignInEvent {
  factory ConfirmLoginPressed() = _$ConfirmLoginPressed;
}

abstract class $ConfirmEmailPressedCopyWith<$Res> {
  factory $ConfirmEmailPressedCopyWith(
          ConfirmEmailPressed value, $Res Function(ConfirmEmailPressed) then) =
      _$ConfirmEmailPressedCopyWithImpl<$Res>;
}

class _$ConfirmEmailPressedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements $ConfirmEmailPressedCopyWith<$Res> {
  _$ConfirmEmailPressedCopyWithImpl(
      ConfirmEmailPressed _value, $Res Function(ConfirmEmailPressed) _then)
      : super(_value, (v) => _then(v as ConfirmEmailPressed));

  @override
  ConfirmEmailPressed get _value => super._value as ConfirmEmailPressed;
}

class _$ConfirmEmailPressed implements ConfirmEmailPressed {
  _$ConfirmEmailPressed();

  @override
  String toString() {
    return 'SignInEvent.confirmEmailPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ConfirmEmailPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailOrLoginChanged(String emailOrLoginStr),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result loginChanged(String loginStr),
    @required Result popStatesStack(),
    @required Result signInWithGooglePressed(),
    @required Result signInPressed(),
    @required Result signUpPressed(),
    @required Result confirmLoginPressed(),
    @required Result confirmEmailPressed(),
    @required Result confirmEmailCodePressed(),
    @required Result confirmPasswordPressed(),
    @required Result confirmSignInCredentialsPressed(),
  }) {
    assert(emailOrLoginChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loginChanged != null);
    assert(popStatesStack != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    assert(signUpPressed != null);
    assert(confirmLoginPressed != null);
    assert(confirmEmailPressed != null);
    assert(confirmEmailCodePressed != null);
    assert(confirmPasswordPressed != null);
    assert(confirmSignInCredentialsPressed != null);
    return confirmEmailPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailOrLoginChanged(String emailOrLoginStr),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result loginChanged(String loginStr),
    Result popStatesStack(),
    Result signInWithGooglePressed(),
    Result signInPressed(),
    Result signUpPressed(),
    Result confirmLoginPressed(),
    Result confirmEmailPressed(),
    Result confirmEmailCodePressed(),
    Result confirmPasswordPressed(),
    Result confirmSignInCredentialsPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (confirmEmailPressed != null) {
      return confirmEmailPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailOrLoginChanged(EmailOrLoginChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result loginChanged(LoginChanged value),
    @required Result popStatesStack(PopStatesStack value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInPressed(SignInPressed value),
    @required Result signUpPressed(SignUpPressed value),
    @required Result confirmLoginPressed(ConfirmLoginPressed value),
    @required Result confirmEmailPressed(ConfirmEmailPressed value),
    @required Result confirmEmailCodePressed(ConfirmEmailCodePressed value),
    @required Result confirmPasswordPressed(ConfirmPasswordPressed value),
    @required
        Result confirmSignInCredentialsPressed(
            ConfirmSignInCredentialsPressed value),
  }) {
    assert(emailOrLoginChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loginChanged != null);
    assert(popStatesStack != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    assert(signUpPressed != null);
    assert(confirmLoginPressed != null);
    assert(confirmEmailPressed != null);
    assert(confirmEmailCodePressed != null);
    assert(confirmPasswordPressed != null);
    assert(confirmSignInCredentialsPressed != null);
    return confirmEmailPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailOrLoginChanged(EmailOrLoginChanged value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result loginChanged(LoginChanged value),
    Result popStatesStack(PopStatesStack value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInPressed(SignInPressed value),
    Result signUpPressed(SignUpPressed value),
    Result confirmLoginPressed(ConfirmLoginPressed value),
    Result confirmEmailPressed(ConfirmEmailPressed value),
    Result confirmEmailCodePressed(ConfirmEmailCodePressed value),
    Result confirmPasswordPressed(ConfirmPasswordPressed value),
    Result confirmSignInCredentialsPressed(
        ConfirmSignInCredentialsPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (confirmEmailPressed != null) {
      return confirmEmailPressed(this);
    }
    return orElse();
  }
}

abstract class ConfirmEmailPressed implements SignInEvent {
  factory ConfirmEmailPressed() = _$ConfirmEmailPressed;
}

abstract class $ConfirmEmailCodePressedCopyWith<$Res> {
  factory $ConfirmEmailCodePressedCopyWith(ConfirmEmailCodePressed value,
          $Res Function(ConfirmEmailCodePressed) then) =
      _$ConfirmEmailCodePressedCopyWithImpl<$Res>;
}

class _$ConfirmEmailCodePressedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements $ConfirmEmailCodePressedCopyWith<$Res> {
  _$ConfirmEmailCodePressedCopyWithImpl(ConfirmEmailCodePressed _value,
      $Res Function(ConfirmEmailCodePressed) _then)
      : super(_value, (v) => _then(v as ConfirmEmailCodePressed));

  @override
  ConfirmEmailCodePressed get _value => super._value as ConfirmEmailCodePressed;
}

class _$ConfirmEmailCodePressed implements ConfirmEmailCodePressed {
  _$ConfirmEmailCodePressed();

  @override
  String toString() {
    return 'SignInEvent.confirmEmailCodePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ConfirmEmailCodePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailOrLoginChanged(String emailOrLoginStr),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result loginChanged(String loginStr),
    @required Result popStatesStack(),
    @required Result signInWithGooglePressed(),
    @required Result signInPressed(),
    @required Result signUpPressed(),
    @required Result confirmLoginPressed(),
    @required Result confirmEmailPressed(),
    @required Result confirmEmailCodePressed(),
    @required Result confirmPasswordPressed(),
    @required Result confirmSignInCredentialsPressed(),
  }) {
    assert(emailOrLoginChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loginChanged != null);
    assert(popStatesStack != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    assert(signUpPressed != null);
    assert(confirmLoginPressed != null);
    assert(confirmEmailPressed != null);
    assert(confirmEmailCodePressed != null);
    assert(confirmPasswordPressed != null);
    assert(confirmSignInCredentialsPressed != null);
    return confirmEmailCodePressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailOrLoginChanged(String emailOrLoginStr),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result loginChanged(String loginStr),
    Result popStatesStack(),
    Result signInWithGooglePressed(),
    Result signInPressed(),
    Result signUpPressed(),
    Result confirmLoginPressed(),
    Result confirmEmailPressed(),
    Result confirmEmailCodePressed(),
    Result confirmPasswordPressed(),
    Result confirmSignInCredentialsPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (confirmEmailCodePressed != null) {
      return confirmEmailCodePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailOrLoginChanged(EmailOrLoginChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result loginChanged(LoginChanged value),
    @required Result popStatesStack(PopStatesStack value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInPressed(SignInPressed value),
    @required Result signUpPressed(SignUpPressed value),
    @required Result confirmLoginPressed(ConfirmLoginPressed value),
    @required Result confirmEmailPressed(ConfirmEmailPressed value),
    @required Result confirmEmailCodePressed(ConfirmEmailCodePressed value),
    @required Result confirmPasswordPressed(ConfirmPasswordPressed value),
    @required
        Result confirmSignInCredentialsPressed(
            ConfirmSignInCredentialsPressed value),
  }) {
    assert(emailOrLoginChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loginChanged != null);
    assert(popStatesStack != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    assert(signUpPressed != null);
    assert(confirmLoginPressed != null);
    assert(confirmEmailPressed != null);
    assert(confirmEmailCodePressed != null);
    assert(confirmPasswordPressed != null);
    assert(confirmSignInCredentialsPressed != null);
    return confirmEmailCodePressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailOrLoginChanged(EmailOrLoginChanged value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result loginChanged(LoginChanged value),
    Result popStatesStack(PopStatesStack value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInPressed(SignInPressed value),
    Result signUpPressed(SignUpPressed value),
    Result confirmLoginPressed(ConfirmLoginPressed value),
    Result confirmEmailPressed(ConfirmEmailPressed value),
    Result confirmEmailCodePressed(ConfirmEmailCodePressed value),
    Result confirmPasswordPressed(ConfirmPasswordPressed value),
    Result confirmSignInCredentialsPressed(
        ConfirmSignInCredentialsPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (confirmEmailCodePressed != null) {
      return confirmEmailCodePressed(this);
    }
    return orElse();
  }
}

abstract class ConfirmEmailCodePressed implements SignInEvent {
  factory ConfirmEmailCodePressed() = _$ConfirmEmailCodePressed;
}

abstract class $ConfirmPasswordPressedCopyWith<$Res> {
  factory $ConfirmPasswordPressedCopyWith(ConfirmPasswordPressed value,
          $Res Function(ConfirmPasswordPressed) then) =
      _$ConfirmPasswordPressedCopyWithImpl<$Res>;
}

class _$ConfirmPasswordPressedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements $ConfirmPasswordPressedCopyWith<$Res> {
  _$ConfirmPasswordPressedCopyWithImpl(ConfirmPasswordPressed _value,
      $Res Function(ConfirmPasswordPressed) _then)
      : super(_value, (v) => _then(v as ConfirmPasswordPressed));

  @override
  ConfirmPasswordPressed get _value => super._value as ConfirmPasswordPressed;
}

class _$ConfirmPasswordPressed implements ConfirmPasswordPressed {
  _$ConfirmPasswordPressed();

  @override
  String toString() {
    return 'SignInEvent.confirmPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ConfirmPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailOrLoginChanged(String emailOrLoginStr),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result loginChanged(String loginStr),
    @required Result popStatesStack(),
    @required Result signInWithGooglePressed(),
    @required Result signInPressed(),
    @required Result signUpPressed(),
    @required Result confirmLoginPressed(),
    @required Result confirmEmailPressed(),
    @required Result confirmEmailCodePressed(),
    @required Result confirmPasswordPressed(),
    @required Result confirmSignInCredentialsPressed(),
  }) {
    assert(emailOrLoginChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loginChanged != null);
    assert(popStatesStack != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    assert(signUpPressed != null);
    assert(confirmLoginPressed != null);
    assert(confirmEmailPressed != null);
    assert(confirmEmailCodePressed != null);
    assert(confirmPasswordPressed != null);
    assert(confirmSignInCredentialsPressed != null);
    return confirmPasswordPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailOrLoginChanged(String emailOrLoginStr),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result loginChanged(String loginStr),
    Result popStatesStack(),
    Result signInWithGooglePressed(),
    Result signInPressed(),
    Result signUpPressed(),
    Result confirmLoginPressed(),
    Result confirmEmailPressed(),
    Result confirmEmailCodePressed(),
    Result confirmPasswordPressed(),
    Result confirmSignInCredentialsPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (confirmPasswordPressed != null) {
      return confirmPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailOrLoginChanged(EmailOrLoginChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result loginChanged(LoginChanged value),
    @required Result popStatesStack(PopStatesStack value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInPressed(SignInPressed value),
    @required Result signUpPressed(SignUpPressed value),
    @required Result confirmLoginPressed(ConfirmLoginPressed value),
    @required Result confirmEmailPressed(ConfirmEmailPressed value),
    @required Result confirmEmailCodePressed(ConfirmEmailCodePressed value),
    @required Result confirmPasswordPressed(ConfirmPasswordPressed value),
    @required
        Result confirmSignInCredentialsPressed(
            ConfirmSignInCredentialsPressed value),
  }) {
    assert(emailOrLoginChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loginChanged != null);
    assert(popStatesStack != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    assert(signUpPressed != null);
    assert(confirmLoginPressed != null);
    assert(confirmEmailPressed != null);
    assert(confirmEmailCodePressed != null);
    assert(confirmPasswordPressed != null);
    assert(confirmSignInCredentialsPressed != null);
    return confirmPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailOrLoginChanged(EmailOrLoginChanged value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result loginChanged(LoginChanged value),
    Result popStatesStack(PopStatesStack value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInPressed(SignInPressed value),
    Result signUpPressed(SignUpPressed value),
    Result confirmLoginPressed(ConfirmLoginPressed value),
    Result confirmEmailPressed(ConfirmEmailPressed value),
    Result confirmEmailCodePressed(ConfirmEmailCodePressed value),
    Result confirmPasswordPressed(ConfirmPasswordPressed value),
    Result confirmSignInCredentialsPressed(
        ConfirmSignInCredentialsPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (confirmPasswordPressed != null) {
      return confirmPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class ConfirmPasswordPressed implements SignInEvent {
  factory ConfirmPasswordPressed() = _$ConfirmPasswordPressed;
}

abstract class $ConfirmSignInCredentialsPressedCopyWith<$Res> {
  factory $ConfirmSignInCredentialsPressedCopyWith(
          ConfirmSignInCredentialsPressed value,
          $Res Function(ConfirmSignInCredentialsPressed) then) =
      _$ConfirmSignInCredentialsPressedCopyWithImpl<$Res>;
}

class _$ConfirmSignInCredentialsPressedCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements $ConfirmSignInCredentialsPressedCopyWith<$Res> {
  _$ConfirmSignInCredentialsPressedCopyWithImpl(
      ConfirmSignInCredentialsPressed _value,
      $Res Function(ConfirmSignInCredentialsPressed) _then)
      : super(_value, (v) => _then(v as ConfirmSignInCredentialsPressed));

  @override
  ConfirmSignInCredentialsPressed get _value =>
      super._value as ConfirmSignInCredentialsPressed;
}

class _$ConfirmSignInCredentialsPressed
    implements ConfirmSignInCredentialsPressed {
  _$ConfirmSignInCredentialsPressed();

  @override
  String toString() {
    return 'SignInEvent.confirmSignInCredentialsPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ConfirmSignInCredentialsPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailOrLoginChanged(String emailOrLoginStr),
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result loginChanged(String loginStr),
    @required Result popStatesStack(),
    @required Result signInWithGooglePressed(),
    @required Result signInPressed(),
    @required Result signUpPressed(),
    @required Result confirmLoginPressed(),
    @required Result confirmEmailPressed(),
    @required Result confirmEmailCodePressed(),
    @required Result confirmPasswordPressed(),
    @required Result confirmSignInCredentialsPressed(),
  }) {
    assert(emailOrLoginChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loginChanged != null);
    assert(popStatesStack != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    assert(signUpPressed != null);
    assert(confirmLoginPressed != null);
    assert(confirmEmailPressed != null);
    assert(confirmEmailCodePressed != null);
    assert(confirmPasswordPressed != null);
    assert(confirmSignInCredentialsPressed != null);
    return confirmSignInCredentialsPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailOrLoginChanged(String emailOrLoginStr),
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result loginChanged(String loginStr),
    Result popStatesStack(),
    Result signInWithGooglePressed(),
    Result signInPressed(),
    Result signUpPressed(),
    Result confirmLoginPressed(),
    Result confirmEmailPressed(),
    Result confirmEmailCodePressed(),
    Result confirmPasswordPressed(),
    Result confirmSignInCredentialsPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (confirmSignInCredentialsPressed != null) {
      return confirmSignInCredentialsPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailOrLoginChanged(EmailOrLoginChanged value),
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result loginChanged(LoginChanged value),
    @required Result popStatesStack(PopStatesStack value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInPressed(SignInPressed value),
    @required Result signUpPressed(SignUpPressed value),
    @required Result confirmLoginPressed(ConfirmLoginPressed value),
    @required Result confirmEmailPressed(ConfirmEmailPressed value),
    @required Result confirmEmailCodePressed(ConfirmEmailCodePressed value),
    @required Result confirmPasswordPressed(ConfirmPasswordPressed value),
    @required
        Result confirmSignInCredentialsPressed(
            ConfirmSignInCredentialsPressed value),
  }) {
    assert(emailOrLoginChanged != null);
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(loginChanged != null);
    assert(popStatesStack != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    assert(signUpPressed != null);
    assert(confirmLoginPressed != null);
    assert(confirmEmailPressed != null);
    assert(confirmEmailCodePressed != null);
    assert(confirmPasswordPressed != null);
    assert(confirmSignInCredentialsPressed != null);
    return confirmSignInCredentialsPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailOrLoginChanged(EmailOrLoginChanged value),
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result loginChanged(LoginChanged value),
    Result popStatesStack(PopStatesStack value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInPressed(SignInPressed value),
    Result signUpPressed(SignUpPressed value),
    Result confirmLoginPressed(ConfirmLoginPressed value),
    Result confirmEmailPressed(ConfirmEmailPressed value),
    Result confirmEmailCodePressed(ConfirmEmailCodePressed value),
    Result confirmPasswordPressed(ConfirmPasswordPressed value),
    Result confirmSignInCredentialsPressed(
        ConfirmSignInCredentialsPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (confirmSignInCredentialsPressed != null) {
      return confirmSignInCredentialsPressed(this);
    }
    return orElse();
  }
}

abstract class ConfirmSignInCredentialsPressed implements SignInEvent {
  factory ConfirmSignInCredentialsPressed() = _$ConfirmSignInCredentialsPressed;
}

class _$SignInStateTearOff {
  const _$SignInStateTearOff();

  _SignInState call(
      {@required ValueObject<String> emailOrLogin,
      @required ValueObject<String> password,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _SignInState(
      emailOrLogin: emailOrLogin,
      password: password,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }

  EmailInput emailInput(
      {@required EmailAddress emailAddress,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return EmailInput(
      emailAddress: emailAddress,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }

  LoginInput loginInput(
      {@required Login login,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return LoginInput(
      login: login,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }

  PasswordInput passwordInput(
      {@required Password password,
      @required Password confirmPassword,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return PasswordInput(
      password: password,
      confirmPassword: confirmPassword,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }

  SignInCredInput signInCredInput(
      {@required ValueObject<String> emailOrLogin,
      @required Password password,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return SignInCredInput(
      emailOrLogin: emailOrLogin,
      password: password,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $SignInState = _$SignInStateTearOff();

mixin _$SignInState {
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;

  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        ValueObject<String> emailOrLogin,
        ValueObject<String> password,
        bool showErrorMessages,
        bool isSubmitting,
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption), {
    @required
        Result emailInput(
            EmailAddress emailAddress,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
    @required
        Result loginInput(
            Login login,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
    @required
        Result passwordInput(
            Password password,
            Password confirmPassword,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
    @required
        Result signInCredInput(
            ValueObject<String> emailOrLogin,
            Password password,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        ValueObject<String> emailOrLogin,
        ValueObject<String> password,
        bool showErrorMessages,
        bool isSubmitting,
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption), {
    Result emailInput(
        EmailAddress emailAddress,
        bool showErrorMessages,
        bool isSubmitting,
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
    Result loginInput(Login login, bool showErrorMessages, bool isSubmitting,
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
    Result passwordInput(
        Password password,
        Password confirmPassword,
        bool showErrorMessages,
        bool isSubmitting,
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
    Result signInCredInput(
        ValueObject<String> emailOrLogin,
        Password password,
        bool showErrorMessages,
        bool isSubmitting,
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_SignInState value), {
    @required Result emailInput(EmailInput value),
    @required Result loginInput(LoginInput value),
    @required Result passwordInput(PasswordInput value),
    @required Result signInCredInput(SignInCredInput value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_SignInState value), {
    Result emailInput(EmailInput value),
    Result loginInput(LoginInput value),
    Result passwordInput(PasswordInput value),
    Result signInCredInput(SignInCredInput value),
    @required Result orElse(),
  });

  $SignInStateCopyWith<SignInState> get copyWith;
}

abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res>;
  $Res call(
      {bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

class _$SignInStateCopyWithImpl<$Res> implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  final SignInState _value;
  // ignore: unused_field
  final $Res Function(SignInState) _then;

  @override
  $Res call({
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
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
      bool showErrorMessages,
      bool isSubmitting,
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
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_SignInState(
      emailOrLogin: emailOrLogin == freezed
          ? _value.emailOrLogin
          : emailOrLogin as ValueObject<String>,
      password: password == freezed
          ? _value.password
          : password as ValueObject<String>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
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
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.authFailureOrSuccessOption})
      : assert(emailOrLogin != null),
        assert(password != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(authFailureOrSuccessOption != null);

  @override
  final ValueObject<String> emailOrLogin;
  @override
  final ValueObject<String> password;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'SignInState(emailOrLogin: $emailOrLogin, password: $password, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
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
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
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
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @override
  _$SignInStateCopyWith<_SignInState> get copyWith =>
      __$SignInStateCopyWithImpl<_SignInState>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        ValueObject<String> emailOrLogin,
        ValueObject<String> password,
        bool showErrorMessages,
        bool isSubmitting,
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption), {
    @required
        Result emailInput(
            EmailAddress emailAddress,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
    @required
        Result loginInput(
            Login login,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
    @required
        Result passwordInput(
            Password password,
            Password confirmPassword,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
    @required
        Result signInCredInput(
            ValueObject<String> emailOrLogin,
            Password password,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
  }) {
    assert($default != null);
    assert(emailInput != null);
    assert(loginInput != null);
    assert(passwordInput != null);
    assert(signInCredInput != null);
    return $default(emailOrLogin, password, showErrorMessages, isSubmitting,
        authFailureOrSuccessOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        ValueObject<String> emailOrLogin,
        ValueObject<String> password,
        bool showErrorMessages,
        bool isSubmitting,
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption), {
    Result emailInput(
        EmailAddress emailAddress,
        bool showErrorMessages,
        bool isSubmitting,
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
    Result loginInput(Login login, bool showErrorMessages, bool isSubmitting,
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
    Result passwordInput(
        Password password,
        Password confirmPassword,
        bool showErrorMessages,
        bool isSubmitting,
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
    Result signInCredInput(
        ValueObject<String> emailOrLogin,
        Password password,
        bool showErrorMessages,
        bool isSubmitting,
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(emailOrLogin, password, showErrorMessages, isSubmitting,
          authFailureOrSuccessOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_SignInState value), {
    @required Result emailInput(EmailInput value),
    @required Result loginInput(LoginInput value),
    @required Result passwordInput(PasswordInput value),
    @required Result signInCredInput(SignInCredInput value),
  }) {
    assert($default != null);
    assert(emailInput != null);
    assert(loginInput != null);
    assert(passwordInput != null);
    assert(signInCredInput != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_SignInState value), {
    Result emailInput(EmailInput value),
    Result loginInput(LoginInput value),
    Result passwordInput(PasswordInput value),
    Result signInCredInput(SignInCredInput value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _SignInState implements SignInState {
  const factory _SignInState(
          {@required
              ValueObject<String> emailOrLogin,
          @required
              ValueObject<String> password,
          @required
              bool showErrorMessages,
          @required
              bool isSubmitting,
          @required
              Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) =
      _$_SignInState;

  ValueObject<String> get emailOrLogin;
  ValueObject<String> get password;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  _$SignInStateCopyWith<_SignInState> get copyWith;
}

abstract class $EmailInputCopyWith<$Res> implements $SignInStateCopyWith<$Res> {
  factory $EmailInputCopyWith(
          EmailInput value, $Res Function(EmailInput) then) =
      _$EmailInputCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

class _$EmailInputCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
    implements $EmailInputCopyWith<$Res> {
  _$EmailInputCopyWithImpl(EmailInput _value, $Res Function(EmailInput) _then)
      : super(_value, (v) => _then(v as EmailInput));

  @override
  EmailInput get _value => super._value as EmailInput;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(EmailInput(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

class _$EmailInput implements EmailInput {
  const _$EmailInput(
      {@required this.emailAddress,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.authFailureOrSuccessOption})
      : assert(emailAddress != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(authFailureOrSuccessOption != null);

  @override
  final EmailAddress emailAddress;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'SignInState.emailInput(emailAddress: $emailAddress, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailInput &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @override
  $EmailInputCopyWith<EmailInput> get copyWith =>
      _$EmailInputCopyWithImpl<EmailInput>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        ValueObject<String> emailOrLogin,
        ValueObject<String> password,
        bool showErrorMessages,
        bool isSubmitting,
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption), {
    @required
        Result emailInput(
            EmailAddress emailAddress,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
    @required
        Result loginInput(
            Login login,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
    @required
        Result passwordInput(
            Password password,
            Password confirmPassword,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
    @required
        Result signInCredInput(
            ValueObject<String> emailOrLogin,
            Password password,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
  }) {
    assert($default != null);
    assert(emailInput != null);
    assert(loginInput != null);
    assert(passwordInput != null);
    assert(signInCredInput != null);
    return emailInput(emailAddress, showErrorMessages, isSubmitting,
        authFailureOrSuccessOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        ValueObject<String> emailOrLogin,
        ValueObject<String> password,
        bool showErrorMessages,
        bool isSubmitting,
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption), {
    Result emailInput(
        EmailAddress emailAddress,
        bool showErrorMessages,
        bool isSubmitting,
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
    Result loginInput(Login login, bool showErrorMessages, bool isSubmitting,
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
    Result passwordInput(
        Password password,
        Password confirmPassword,
        bool showErrorMessages,
        bool isSubmitting,
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
    Result signInCredInput(
        ValueObject<String> emailOrLogin,
        Password password,
        bool showErrorMessages,
        bool isSubmitting,
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailInput != null) {
      return emailInput(emailAddress, showErrorMessages, isSubmitting,
          authFailureOrSuccessOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_SignInState value), {
    @required Result emailInput(EmailInput value),
    @required Result loginInput(LoginInput value),
    @required Result passwordInput(PasswordInput value),
    @required Result signInCredInput(SignInCredInput value),
  }) {
    assert($default != null);
    assert(emailInput != null);
    assert(loginInput != null);
    assert(passwordInput != null);
    assert(signInCredInput != null);
    return emailInput(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_SignInState value), {
    Result emailInput(EmailInput value),
    Result loginInput(LoginInput value),
    Result passwordInput(PasswordInput value),
    Result signInCredInput(SignInCredInput value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailInput != null) {
      return emailInput(this);
    }
    return orElse();
  }
}

abstract class EmailInput implements SignInState {
  const factory EmailInput(
          {@required
              EmailAddress emailAddress,
          @required
              bool showErrorMessages,
          @required
              bool isSubmitting,
          @required
              Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) =
      _$EmailInput;

  EmailAddress get emailAddress;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  $EmailInputCopyWith<EmailInput> get copyWith;
}

abstract class $LoginInputCopyWith<$Res> implements $SignInStateCopyWith<$Res> {
  factory $LoginInputCopyWith(
          LoginInput value, $Res Function(LoginInput) then) =
      _$LoginInputCopyWithImpl<$Res>;
  @override
  $Res call(
      {Login login,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

class _$LoginInputCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
    implements $LoginInputCopyWith<$Res> {
  _$LoginInputCopyWithImpl(LoginInput _value, $Res Function(LoginInput) _then)
      : super(_value, (v) => _then(v as LoginInput));

  @override
  LoginInput get _value => super._value as LoginInput;

  @override
  $Res call({
    Object login = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(LoginInput(
      login: login == freezed ? _value.login : login as Login,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

class _$LoginInput implements LoginInput {
  const _$LoginInput(
      {@required this.login,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.authFailureOrSuccessOption})
      : assert(login != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(authFailureOrSuccessOption != null);

  @override
  final Login login;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'SignInState.loginInput(login: $login, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginInput &&
            (identical(other.login, login) ||
                const DeepCollectionEquality().equals(other.login, login)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(login) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @override
  $LoginInputCopyWith<LoginInput> get copyWith =>
      _$LoginInputCopyWithImpl<LoginInput>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        ValueObject<String> emailOrLogin,
        ValueObject<String> password,
        bool showErrorMessages,
        bool isSubmitting,
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption), {
    @required
        Result emailInput(
            EmailAddress emailAddress,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
    @required
        Result loginInput(
            Login login,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
    @required
        Result passwordInput(
            Password password,
            Password confirmPassword,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
    @required
        Result signInCredInput(
            ValueObject<String> emailOrLogin,
            Password password,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
  }) {
    assert($default != null);
    assert(emailInput != null);
    assert(loginInput != null);
    assert(passwordInput != null);
    assert(signInCredInput != null);
    return loginInput(
        login, showErrorMessages, isSubmitting, authFailureOrSuccessOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        ValueObject<String> emailOrLogin,
        ValueObject<String> password,
        bool showErrorMessages,
        bool isSubmitting,
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption), {
    Result emailInput(
        EmailAddress emailAddress,
        bool showErrorMessages,
        bool isSubmitting,
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
    Result loginInput(Login login, bool showErrorMessages, bool isSubmitting,
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
    Result passwordInput(
        Password password,
        Password confirmPassword,
        bool showErrorMessages,
        bool isSubmitting,
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
    Result signInCredInput(
        ValueObject<String> emailOrLogin,
        Password password,
        bool showErrorMessages,
        bool isSubmitting,
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginInput != null) {
      return loginInput(
          login, showErrorMessages, isSubmitting, authFailureOrSuccessOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_SignInState value), {
    @required Result emailInput(EmailInput value),
    @required Result loginInput(LoginInput value),
    @required Result passwordInput(PasswordInput value),
    @required Result signInCredInput(SignInCredInput value),
  }) {
    assert($default != null);
    assert(emailInput != null);
    assert(loginInput != null);
    assert(passwordInput != null);
    assert(signInCredInput != null);
    return loginInput(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_SignInState value), {
    Result emailInput(EmailInput value),
    Result loginInput(LoginInput value),
    Result passwordInput(PasswordInput value),
    Result signInCredInput(SignInCredInput value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginInput != null) {
      return loginInput(this);
    }
    return orElse();
  }
}

abstract class LoginInput implements SignInState {
  const factory LoginInput(
          {@required
              Login login,
          @required
              bool showErrorMessages,
          @required
              bool isSubmitting,
          @required
              Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) =
      _$LoginInput;

  Login get login;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  $LoginInputCopyWith<LoginInput> get copyWith;
}

abstract class $PasswordInputCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory $PasswordInputCopyWith(
          PasswordInput value, $Res Function(PasswordInput) then) =
      _$PasswordInputCopyWithImpl<$Res>;
  @override
  $Res call(
      {Password password,
      Password confirmPassword,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

class _$PasswordInputCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
    implements $PasswordInputCopyWith<$Res> {
  _$PasswordInputCopyWithImpl(
      PasswordInput _value, $Res Function(PasswordInput) _then)
      : super(_value, (v) => _then(v as PasswordInput));

  @override
  PasswordInput get _value => super._value as PasswordInput;

  @override
  $Res call({
    Object password = freezed,
    Object confirmPassword = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(PasswordInput(
      password: password == freezed ? _value.password : password as Password,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

class _$PasswordInput implements PasswordInput {
  const _$PasswordInput(
      {@required this.password,
      @required this.confirmPassword,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.authFailureOrSuccessOption})
      : assert(password != null),
        assert(confirmPassword != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(authFailureOrSuccessOption != null);

  @override
  final Password password;
  @override
  final Password confirmPassword;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'SignInState.passwordInput(password: $password, confirmPassword: $confirmPassword, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordInput &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.confirmPassword, confirmPassword) ||
                const DeepCollectionEquality()
                    .equals(other.confirmPassword, confirmPassword)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(confirmPassword) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @override
  $PasswordInputCopyWith<PasswordInput> get copyWith =>
      _$PasswordInputCopyWithImpl<PasswordInput>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        ValueObject<String> emailOrLogin,
        ValueObject<String> password,
        bool showErrorMessages,
        bool isSubmitting,
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption), {
    @required
        Result emailInput(
            EmailAddress emailAddress,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
    @required
        Result loginInput(
            Login login,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
    @required
        Result passwordInput(
            Password password,
            Password confirmPassword,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
    @required
        Result signInCredInput(
            ValueObject<String> emailOrLogin,
            Password password,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
  }) {
    assert($default != null);
    assert(emailInput != null);
    assert(loginInput != null);
    assert(passwordInput != null);
    assert(signInCredInput != null);
    return passwordInput(password, confirmPassword, showErrorMessages,
        isSubmitting, authFailureOrSuccessOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        ValueObject<String> emailOrLogin,
        ValueObject<String> password,
        bool showErrorMessages,
        bool isSubmitting,
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption), {
    Result emailInput(
        EmailAddress emailAddress,
        bool showErrorMessages,
        bool isSubmitting,
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
    Result loginInput(Login login, bool showErrorMessages, bool isSubmitting,
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
    Result passwordInput(
        Password password,
        Password confirmPassword,
        bool showErrorMessages,
        bool isSubmitting,
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
    Result signInCredInput(
        ValueObject<String> emailOrLogin,
        Password password,
        bool showErrorMessages,
        bool isSubmitting,
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordInput != null) {
      return passwordInput(password, confirmPassword, showErrorMessages,
          isSubmitting, authFailureOrSuccessOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_SignInState value), {
    @required Result emailInput(EmailInput value),
    @required Result loginInput(LoginInput value),
    @required Result passwordInput(PasswordInput value),
    @required Result signInCredInput(SignInCredInput value),
  }) {
    assert($default != null);
    assert(emailInput != null);
    assert(loginInput != null);
    assert(passwordInput != null);
    assert(signInCredInput != null);
    return passwordInput(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_SignInState value), {
    Result emailInput(EmailInput value),
    Result loginInput(LoginInput value),
    Result passwordInput(PasswordInput value),
    Result signInCredInput(SignInCredInput value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordInput != null) {
      return passwordInput(this);
    }
    return orElse();
  }
}

abstract class PasswordInput implements SignInState {
  const factory PasswordInput(
          {@required
              Password password,
          @required
              Password confirmPassword,
          @required
              bool showErrorMessages,
          @required
              bool isSubmitting,
          @required
              Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) =
      _$PasswordInput;

  Password get password;
  Password get confirmPassword;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  $PasswordInputCopyWith<PasswordInput> get copyWith;
}

abstract class $SignInCredInputCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory $SignInCredInputCopyWith(
          SignInCredInput value, $Res Function(SignInCredInput) then) =
      _$SignInCredInputCopyWithImpl<$Res>;
  @override
  $Res call(
      {ValueObject<String> emailOrLogin,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

class _$SignInCredInputCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res>
    implements $SignInCredInputCopyWith<$Res> {
  _$SignInCredInputCopyWithImpl(
      SignInCredInput _value, $Res Function(SignInCredInput) _then)
      : super(_value, (v) => _then(v as SignInCredInput));

  @override
  SignInCredInput get _value => super._value as SignInCredInput;

  @override
  $Res call({
    Object emailOrLogin = freezed,
    Object password = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(SignInCredInput(
      emailOrLogin: emailOrLogin == freezed
          ? _value.emailOrLogin
          : emailOrLogin as ValueObject<String>,
      password: password == freezed ? _value.password : password as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

class _$SignInCredInput implements SignInCredInput {
  const _$SignInCredInput(
      {@required this.emailOrLogin,
      @required this.password,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.authFailureOrSuccessOption})
      : assert(emailOrLogin != null),
        assert(password != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(authFailureOrSuccessOption != null);

  @override
  final ValueObject<String> emailOrLogin;
  @override
  final Password password;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'SignInState.signInCredInput(emailOrLogin: $emailOrLogin, password: $password, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignInCredInput &&
            (identical(other.emailOrLogin, emailOrLogin) ||
                const DeepCollectionEquality()
                    .equals(other.emailOrLogin, emailOrLogin)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
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
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @override
  $SignInCredInputCopyWith<SignInCredInput> get copyWith =>
      _$SignInCredInputCopyWithImpl<SignInCredInput>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>(
    Result $default(
        ValueObject<String> emailOrLogin,
        ValueObject<String> password,
        bool showErrorMessages,
        bool isSubmitting,
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption), {
    @required
        Result emailInput(
            EmailAddress emailAddress,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
    @required
        Result loginInput(
            Login login,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
    @required
        Result passwordInput(
            Password password,
            Password confirmPassword,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
    @required
        Result signInCredInput(
            ValueObject<String> emailOrLogin,
            Password password,
            bool showErrorMessages,
            bool isSubmitting,
            Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
  }) {
    assert($default != null);
    assert(emailInput != null);
    assert(loginInput != null);
    assert(passwordInput != null);
    assert(signInCredInput != null);
    return signInCredInput(emailOrLogin, password, showErrorMessages,
        isSubmitting, authFailureOrSuccessOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>(
    Result $default(
        ValueObject<String> emailOrLogin,
        ValueObject<String> password,
        bool showErrorMessages,
        bool isSubmitting,
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption), {
    Result emailInput(
        EmailAddress emailAddress,
        bool showErrorMessages,
        bool isSubmitting,
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
    Result loginInput(Login login, bool showErrorMessages, bool isSubmitting,
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
    Result passwordInput(
        Password password,
        Password confirmPassword,
        bool showErrorMessages,
        bool isSubmitting,
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
    Result signInCredInput(
        ValueObject<String> emailOrLogin,
        Password password,
        bool showErrorMessages,
        bool isSubmitting,
        Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInCredInput != null) {
      return signInCredInput(emailOrLogin, password, showErrorMessages,
          isSubmitting, authFailureOrSuccessOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>(
    Result $default(_SignInState value), {
    @required Result emailInput(EmailInput value),
    @required Result loginInput(LoginInput value),
    @required Result passwordInput(PasswordInput value),
    @required Result signInCredInput(SignInCredInput value),
  }) {
    assert($default != null);
    assert(emailInput != null);
    assert(loginInput != null);
    assert(passwordInput != null);
    assert(signInCredInput != null);
    return signInCredInput(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>(
    Result $default(_SignInState value), {
    Result emailInput(EmailInput value),
    Result loginInput(LoginInput value),
    Result passwordInput(PasswordInput value),
    Result signInCredInput(SignInCredInput value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInCredInput != null) {
      return signInCredInput(this);
    }
    return orElse();
  }
}

abstract class SignInCredInput implements SignInState {
  const factory SignInCredInput(
          {@required
              ValueObject<String> emailOrLogin,
          @required
              Password password,
          @required
              bool showErrorMessages,
          @required
              bool isSubmitting,
          @required
              Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) =
      _$SignInCredInput;

  ValueObject<String> get emailOrLogin;
  Password get password;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  $SignInCredInputCopyWith<SignInCredInput> get copyWith;
}
