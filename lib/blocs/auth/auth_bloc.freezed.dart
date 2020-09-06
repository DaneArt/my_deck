// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  EmailOrLoginChanged emailOrLoginChanged({@required String emailOrLoginStr}) {
    return EmailOrLoginChanged(
      emailOrLoginStr: emailOrLoginStr,
    );
  }

  PasswordChanged passwordChanged({@required String passwordStr}) {
    return PasswordChanged(
      passwordStr: passwordStr,
    );
  }

  EmailAddressChanged emailChanged({@required String emailStr}) {
    return EmailAddressChanged(
      emailStr: emailStr,
    );
  }

  UsernameChanged usernameChanged({@required String usernameStr}) {
    return UsernameChanged(
      usernameStr: usernameStr,
    );
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

  ObscurePassword obscurePassword() {
    return ObscurePassword();
  }
}

// ignore: unused_element
const $AuthEvent = _$AuthEventTearOff();

mixin _$AuthEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailOrLoginChanged(String emailOrLoginStr),
    @required Result passwordChanged(String passwordStr),
    @required Result emailChanged(String emailStr),
    @required Result usernameChanged(String usernameStr),
    @required Result signInWithGooglePressed(),
    @required Result signInPressed(),
    @required Result signUpPressed(),
    @required Result obscurePassword(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailOrLoginChanged(String emailOrLoginStr),
    Result passwordChanged(String passwordStr),
    Result emailChanged(String emailStr),
    Result usernameChanged(String usernameStr),
    Result signInWithGooglePressed(),
    Result signInPressed(),
    Result signUpPressed(),
    Result obscurePassword(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailOrLoginChanged(EmailOrLoginChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result emailChanged(EmailAddressChanged value),
    @required Result usernameChanged(UsernameChanged value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInPressed(SignInPressed value),
    @required Result signUpPressed(SignUpPressed value),
    @required Result obscurePassword(ObscurePassword value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailOrLoginChanged(EmailOrLoginChanged value),
    Result passwordChanged(PasswordChanged value),
    Result emailChanged(EmailAddressChanged value),
    Result usernameChanged(UsernameChanged value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInPressed(SignInPressed value),
    Result signUpPressed(SignUpPressed value),
    Result obscurePassword(ObscurePassword value),
    @required Result orElse(),
  });
}

abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

abstract class $EmailOrLoginChangedCopyWith<$Res> {
  factory $EmailOrLoginChangedCopyWith(
          EmailOrLoginChanged value, $Res Function(EmailOrLoginChanged) then) =
      _$EmailOrLoginChangedCopyWithImpl<$Res>;
  $Res call({String emailOrLoginStr});
}

class _$EmailOrLoginChangedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
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
      emailOrLoginStr: emailOrLoginStr == freezed
          ? _value.emailOrLoginStr
          : emailOrLoginStr as String,
    ));
  }
}

class _$EmailOrLoginChanged implements EmailOrLoginChanged {
  _$EmailOrLoginChanged({@required this.emailOrLoginStr})
      : assert(emailOrLoginStr != null);

  @override
  final String emailOrLoginStr;

  @override
  String toString() {
    return 'AuthEvent.emailOrLoginChanged(emailOrLoginStr: $emailOrLoginStr)';
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
    @required Result emailChanged(String emailStr),
    @required Result usernameChanged(String usernameStr),
    @required Result signInWithGooglePressed(),
    @required Result signInPressed(),
    @required Result signUpPressed(),
    @required Result obscurePassword(),
  }) {
    assert(emailOrLoginChanged != null);
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(usernameChanged != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    assert(signUpPressed != null);
    assert(obscurePassword != null);
    return emailOrLoginChanged(emailOrLoginStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailOrLoginChanged(String emailOrLoginStr),
    Result passwordChanged(String passwordStr),
    Result emailChanged(String emailStr),
    Result usernameChanged(String usernameStr),
    Result signInWithGooglePressed(),
    Result signInPressed(),
    Result signUpPressed(),
    Result obscurePassword(),
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
    @required Result emailChanged(EmailAddressChanged value),
    @required Result usernameChanged(UsernameChanged value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInPressed(SignInPressed value),
    @required Result signUpPressed(SignUpPressed value),
    @required Result obscurePassword(ObscurePassword value),
  }) {
    assert(emailOrLoginChanged != null);
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(usernameChanged != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    assert(signUpPressed != null);
    assert(obscurePassword != null);
    return emailOrLoginChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailOrLoginChanged(EmailOrLoginChanged value),
    Result passwordChanged(PasswordChanged value),
    Result emailChanged(EmailAddressChanged value),
    Result usernameChanged(UsernameChanged value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInPressed(SignInPressed value),
    Result signUpPressed(SignUpPressed value),
    Result obscurePassword(ObscurePassword value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailOrLoginChanged != null) {
      return emailOrLoginChanged(this);
    }
    return orElse();
  }
}

abstract class EmailOrLoginChanged implements AuthEvent {
  factory EmailOrLoginChanged({@required String emailOrLoginStr}) =
      _$EmailOrLoginChanged;

  String get emailOrLoginStr;
  $EmailOrLoginChangedCopyWith<EmailOrLoginChanged> get copyWith;
}

abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

class _$PasswordChangedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
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
      passwordStr:
          passwordStr == freezed ? _value.passwordStr : passwordStr as String,
    ));
  }
}

class _$PasswordChanged implements PasswordChanged {
  _$PasswordChanged({@required this.passwordStr}) : assert(passwordStr != null);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'AuthEvent.passwordChanged(passwordStr: $passwordStr)';
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
    @required Result emailChanged(String emailStr),
    @required Result usernameChanged(String usernameStr),
    @required Result signInWithGooglePressed(),
    @required Result signInPressed(),
    @required Result signUpPressed(),
    @required Result obscurePassword(),
  }) {
    assert(emailOrLoginChanged != null);
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(usernameChanged != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    assert(signUpPressed != null);
    assert(obscurePassword != null);
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailOrLoginChanged(String emailOrLoginStr),
    Result passwordChanged(String passwordStr),
    Result emailChanged(String emailStr),
    Result usernameChanged(String usernameStr),
    Result signInWithGooglePressed(),
    Result signInPressed(),
    Result signUpPressed(),
    Result obscurePassword(),
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
    @required Result emailChanged(EmailAddressChanged value),
    @required Result usernameChanged(UsernameChanged value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInPressed(SignInPressed value),
    @required Result signUpPressed(SignUpPressed value),
    @required Result obscurePassword(ObscurePassword value),
  }) {
    assert(emailOrLoginChanged != null);
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(usernameChanged != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    assert(signUpPressed != null);
    assert(obscurePassword != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailOrLoginChanged(EmailOrLoginChanged value),
    Result passwordChanged(PasswordChanged value),
    Result emailChanged(EmailAddressChanged value),
    Result usernameChanged(UsernameChanged value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInPressed(SignInPressed value),
    Result signUpPressed(SignUpPressed value),
    Result obscurePassword(ObscurePassword value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements AuthEvent {
  factory PasswordChanged({@required String passwordStr}) = _$PasswordChanged;

  String get passwordStr;
  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
}

abstract class $EmailAddressChangedCopyWith<$Res> {
  factory $EmailAddressChangedCopyWith(
          EmailAddressChanged value, $Res Function(EmailAddressChanged) then) =
      _$EmailAddressChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

class _$EmailAddressChangedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $EmailAddressChangedCopyWith<$Res> {
  _$EmailAddressChangedCopyWithImpl(
      EmailAddressChanged _value, $Res Function(EmailAddressChanged) _then)
      : super(_value, (v) => _then(v as EmailAddressChanged));

  @override
  EmailAddressChanged get _value => super._value as EmailAddressChanged;

  @override
  $Res call({
    Object emailStr = freezed,
  }) {
    return _then(EmailAddressChanged(
      emailStr: emailStr == freezed ? _value.emailStr : emailStr as String,
    ));
  }
}

class _$EmailAddressChanged implements EmailAddressChanged {
  _$EmailAddressChanged({@required this.emailStr}) : assert(emailStr != null);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'AuthEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailAddressChanged &&
            (identical(other.emailStr, emailStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailStr, emailStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailStr);

  @override
  $EmailAddressChangedCopyWith<EmailAddressChanged> get copyWith =>
      _$EmailAddressChangedCopyWithImpl<EmailAddressChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailOrLoginChanged(String emailOrLoginStr),
    @required Result passwordChanged(String passwordStr),
    @required Result emailChanged(String emailStr),
    @required Result usernameChanged(String usernameStr),
    @required Result signInWithGooglePressed(),
    @required Result signInPressed(),
    @required Result signUpPressed(),
    @required Result obscurePassword(),
  }) {
    assert(emailOrLoginChanged != null);
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(usernameChanged != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    assert(signUpPressed != null);
    assert(obscurePassword != null);
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailOrLoginChanged(String emailOrLoginStr),
    Result passwordChanged(String passwordStr),
    Result emailChanged(String emailStr),
    Result usernameChanged(String usernameStr),
    Result signInWithGooglePressed(),
    Result signInPressed(),
    Result signUpPressed(),
    Result obscurePassword(),
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
    @required Result passwordChanged(PasswordChanged value),
    @required Result emailChanged(EmailAddressChanged value),
    @required Result usernameChanged(UsernameChanged value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInPressed(SignInPressed value),
    @required Result signUpPressed(SignUpPressed value),
    @required Result obscurePassword(ObscurePassword value),
  }) {
    assert(emailOrLoginChanged != null);
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(usernameChanged != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    assert(signUpPressed != null);
    assert(obscurePassword != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailOrLoginChanged(EmailOrLoginChanged value),
    Result passwordChanged(PasswordChanged value),
    Result emailChanged(EmailAddressChanged value),
    Result usernameChanged(UsernameChanged value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInPressed(SignInPressed value),
    Result signUpPressed(SignUpPressed value),
    Result obscurePassword(ObscurePassword value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailAddressChanged implements AuthEvent {
  factory EmailAddressChanged({@required String emailStr}) =
      _$EmailAddressChanged;

  String get emailStr;
  $EmailAddressChangedCopyWith<EmailAddressChanged> get copyWith;
}

abstract class $UsernameChangedCopyWith<$Res> {
  factory $UsernameChangedCopyWith(
          UsernameChanged value, $Res Function(UsernameChanged) then) =
      _$UsernameChangedCopyWithImpl<$Res>;
  $Res call({String usernameStr});
}

class _$UsernameChangedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $UsernameChangedCopyWith<$Res> {
  _$UsernameChangedCopyWithImpl(
      UsernameChanged _value, $Res Function(UsernameChanged) _then)
      : super(_value, (v) => _then(v as UsernameChanged));

  @override
  UsernameChanged get _value => super._value as UsernameChanged;

  @override
  $Res call({
    Object usernameStr = freezed,
  }) {
    return _then(UsernameChanged(
      usernameStr:
          usernameStr == freezed ? _value.usernameStr : usernameStr as String,
    ));
  }
}

class _$UsernameChanged implements UsernameChanged {
  _$UsernameChanged({@required this.usernameStr}) : assert(usernameStr != null);

  @override
  final String usernameStr;

  @override
  String toString() {
    return 'AuthEvent.usernameChanged(usernameStr: $usernameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UsernameChanged &&
            (identical(other.usernameStr, usernameStr) ||
                const DeepCollectionEquality()
                    .equals(other.usernameStr, usernameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(usernameStr);

  @override
  $UsernameChangedCopyWith<UsernameChanged> get copyWith =>
      _$UsernameChangedCopyWithImpl<UsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailOrLoginChanged(String emailOrLoginStr),
    @required Result passwordChanged(String passwordStr),
    @required Result emailChanged(String emailStr),
    @required Result usernameChanged(String usernameStr),
    @required Result signInWithGooglePressed(),
    @required Result signInPressed(),
    @required Result signUpPressed(),
    @required Result obscurePassword(),
  }) {
    assert(emailOrLoginChanged != null);
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(usernameChanged != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    assert(signUpPressed != null);
    assert(obscurePassword != null);
    return usernameChanged(usernameStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailOrLoginChanged(String emailOrLoginStr),
    Result passwordChanged(String passwordStr),
    Result emailChanged(String emailStr),
    Result usernameChanged(String usernameStr),
    Result signInWithGooglePressed(),
    Result signInPressed(),
    Result signUpPressed(),
    Result obscurePassword(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (usernameChanged != null) {
      return usernameChanged(usernameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailOrLoginChanged(EmailOrLoginChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result emailChanged(EmailAddressChanged value),
    @required Result usernameChanged(UsernameChanged value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInPressed(SignInPressed value),
    @required Result signUpPressed(SignUpPressed value),
    @required Result obscurePassword(ObscurePassword value),
  }) {
    assert(emailOrLoginChanged != null);
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(usernameChanged != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    assert(signUpPressed != null);
    assert(obscurePassword != null);
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailOrLoginChanged(EmailOrLoginChanged value),
    Result passwordChanged(PasswordChanged value),
    Result emailChanged(EmailAddressChanged value),
    Result usernameChanged(UsernameChanged value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInPressed(SignInPressed value),
    Result signUpPressed(SignUpPressed value),
    Result obscurePassword(ObscurePassword value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class UsernameChanged implements AuthEvent {
  factory UsernameChanged({@required String usernameStr}) = _$UsernameChanged;

  String get usernameStr;
  $UsernameChangedCopyWith<UsernameChanged> get copyWith;
}

abstract class $SignInWithGooglePressedCopyWith<$Res> {
  factory $SignInWithGooglePressedCopyWith(SignInWithGooglePressed value,
          $Res Function(SignInWithGooglePressed) then) =
      _$SignInWithGooglePressedCopyWithImpl<$Res>;
}

class _$SignInWithGooglePressedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
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
    return 'AuthEvent.signInWithGooglePressed()';
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
    @required Result emailChanged(String emailStr),
    @required Result usernameChanged(String usernameStr),
    @required Result signInWithGooglePressed(),
    @required Result signInPressed(),
    @required Result signUpPressed(),
    @required Result obscurePassword(),
  }) {
    assert(emailOrLoginChanged != null);
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(usernameChanged != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    assert(signUpPressed != null);
    assert(obscurePassword != null);
    return signInWithGooglePressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailOrLoginChanged(String emailOrLoginStr),
    Result passwordChanged(String passwordStr),
    Result emailChanged(String emailStr),
    Result usernameChanged(String usernameStr),
    Result signInWithGooglePressed(),
    Result signInPressed(),
    Result signUpPressed(),
    Result obscurePassword(),
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
    @required Result emailChanged(EmailAddressChanged value),
    @required Result usernameChanged(UsernameChanged value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInPressed(SignInPressed value),
    @required Result signUpPressed(SignUpPressed value),
    @required Result obscurePassword(ObscurePassword value),
  }) {
    assert(emailOrLoginChanged != null);
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(usernameChanged != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    assert(signUpPressed != null);
    assert(obscurePassword != null);
    return signInWithGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailOrLoginChanged(EmailOrLoginChanged value),
    Result passwordChanged(PasswordChanged value),
    Result emailChanged(EmailAddressChanged value),
    Result usernameChanged(UsernameChanged value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInPressed(SignInPressed value),
    Result signUpPressed(SignUpPressed value),
    Result obscurePassword(ObscurePassword value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed(this);
    }
    return orElse();
  }
}

abstract class SignInWithGooglePressed implements AuthEvent {
  factory SignInWithGooglePressed() = _$SignInWithGooglePressed;
}

abstract class $SignInPressedCopyWith<$Res> {
  factory $SignInPressedCopyWith(
          SignInPressed value, $Res Function(SignInPressed) then) =
      _$SignInPressedCopyWithImpl<$Res>;
}

class _$SignInPressedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
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
    return 'AuthEvent.signInPressed()';
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
    @required Result emailChanged(String emailStr),
    @required Result usernameChanged(String usernameStr),
    @required Result signInWithGooglePressed(),
    @required Result signInPressed(),
    @required Result signUpPressed(),
    @required Result obscurePassword(),
  }) {
    assert(emailOrLoginChanged != null);
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(usernameChanged != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    assert(signUpPressed != null);
    assert(obscurePassword != null);
    return signInPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailOrLoginChanged(String emailOrLoginStr),
    Result passwordChanged(String passwordStr),
    Result emailChanged(String emailStr),
    Result usernameChanged(String usernameStr),
    Result signInWithGooglePressed(),
    Result signInPressed(),
    Result signUpPressed(),
    Result obscurePassword(),
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
    @required Result emailChanged(EmailAddressChanged value),
    @required Result usernameChanged(UsernameChanged value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInPressed(SignInPressed value),
    @required Result signUpPressed(SignUpPressed value),
    @required Result obscurePassword(ObscurePassword value),
  }) {
    assert(emailOrLoginChanged != null);
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(usernameChanged != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    assert(signUpPressed != null);
    assert(obscurePassword != null);
    return signInPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailOrLoginChanged(EmailOrLoginChanged value),
    Result passwordChanged(PasswordChanged value),
    Result emailChanged(EmailAddressChanged value),
    Result usernameChanged(UsernameChanged value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInPressed(SignInPressed value),
    Result signUpPressed(SignUpPressed value),
    Result obscurePassword(ObscurePassword value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInPressed != null) {
      return signInPressed(this);
    }
    return orElse();
  }
}

abstract class SignInPressed implements AuthEvent {
  factory SignInPressed() = _$SignInPressed;
}

abstract class $SignUpPressedCopyWith<$Res> {
  factory $SignUpPressedCopyWith(
          SignUpPressed value, $Res Function(SignUpPressed) then) =
      _$SignUpPressedCopyWithImpl<$Res>;
}

class _$SignUpPressedCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
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
    return 'AuthEvent.signUpPressed()';
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
    @required Result passwordChanged(String passwordStr),
    @required Result emailChanged(String emailStr),
    @required Result usernameChanged(String usernameStr),
    @required Result signInWithGooglePressed(),
    @required Result signInPressed(),
    @required Result signUpPressed(),
    @required Result obscurePassword(),
  }) {
    assert(emailOrLoginChanged != null);
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(usernameChanged != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    assert(signUpPressed != null);
    assert(obscurePassword != null);
    return signUpPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailOrLoginChanged(String emailOrLoginStr),
    Result passwordChanged(String passwordStr),
    Result emailChanged(String emailStr),
    Result usernameChanged(String usernameStr),
    Result signInWithGooglePressed(),
    Result signInPressed(),
    Result signUpPressed(),
    Result obscurePassword(),
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
    @required Result passwordChanged(PasswordChanged value),
    @required Result emailChanged(EmailAddressChanged value),
    @required Result usernameChanged(UsernameChanged value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInPressed(SignInPressed value),
    @required Result signUpPressed(SignUpPressed value),
    @required Result obscurePassword(ObscurePassword value),
  }) {
    assert(emailOrLoginChanged != null);
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(usernameChanged != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    assert(signUpPressed != null);
    assert(obscurePassword != null);
    return signUpPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailOrLoginChanged(EmailOrLoginChanged value),
    Result passwordChanged(PasswordChanged value),
    Result emailChanged(EmailAddressChanged value),
    Result usernameChanged(UsernameChanged value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInPressed(SignInPressed value),
    Result signUpPressed(SignUpPressed value),
    Result obscurePassword(ObscurePassword value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signUpPressed != null) {
      return signUpPressed(this);
    }
    return orElse();
  }
}

abstract class SignUpPressed implements AuthEvent {
  factory SignUpPressed() = _$SignUpPressed;
}

abstract class $ObscurePasswordCopyWith<$Res> {
  factory $ObscurePasswordCopyWith(
          ObscurePassword value, $Res Function(ObscurePassword) then) =
      _$ObscurePasswordCopyWithImpl<$Res>;
}

class _$ObscurePasswordCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $ObscurePasswordCopyWith<$Res> {
  _$ObscurePasswordCopyWithImpl(
      ObscurePassword _value, $Res Function(ObscurePassword) _then)
      : super(_value, (v) => _then(v as ObscurePassword));

  @override
  ObscurePassword get _value => super._value as ObscurePassword;
}

class _$ObscurePassword implements ObscurePassword {
  _$ObscurePassword();

  @override
  String toString() {
    return 'AuthEvent.obscurePassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ObscurePassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailOrLoginChanged(String emailOrLoginStr),
    @required Result passwordChanged(String passwordStr),
    @required Result emailChanged(String emailStr),
    @required Result usernameChanged(String usernameStr),
    @required Result signInWithGooglePressed(),
    @required Result signInPressed(),
    @required Result signUpPressed(),
    @required Result obscurePassword(),
  }) {
    assert(emailOrLoginChanged != null);
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(usernameChanged != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    assert(signUpPressed != null);
    assert(obscurePassword != null);
    return obscurePassword();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailOrLoginChanged(String emailOrLoginStr),
    Result passwordChanged(String passwordStr),
    Result emailChanged(String emailStr),
    Result usernameChanged(String usernameStr),
    Result signInWithGooglePressed(),
    Result signInPressed(),
    Result signUpPressed(),
    Result obscurePassword(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (obscurePassword != null) {
      return obscurePassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailOrLoginChanged(EmailOrLoginChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required Result emailChanged(EmailAddressChanged value),
    @required Result usernameChanged(UsernameChanged value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInPressed(SignInPressed value),
    @required Result signUpPressed(SignUpPressed value),
    @required Result obscurePassword(ObscurePassword value),
  }) {
    assert(emailOrLoginChanged != null);
    assert(passwordChanged != null);
    assert(emailChanged != null);
    assert(usernameChanged != null);
    assert(signInWithGooglePressed != null);
    assert(signInPressed != null);
    assert(signUpPressed != null);
    assert(obscurePassword != null);
    return obscurePassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailOrLoginChanged(EmailOrLoginChanged value),
    Result passwordChanged(PasswordChanged value),
    Result emailChanged(EmailAddressChanged value),
    Result usernameChanged(UsernameChanged value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInPressed(SignInPressed value),
    Result signUpPressed(SignUpPressed value),
    Result obscurePassword(ObscurePassword value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (obscurePassword != null) {
      return obscurePassword(this);
    }
    return orElse();
  }
}

abstract class ObscurePassword implements AuthEvent {
  factory ObscurePassword() = _$ObscurePassword;
}

class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _SignInState call(
      {EmailAddress email,
      Username username,
      @required Password password,
      @required bool submitting,
      @required bool autovalidate,
      @required bool obscurePassword,
      @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _SignInState(
      email: email,
      username: username,
      password: password,
      submitting: submitting,
      autovalidate: autovalidate,
      obscurePassword: obscurePassword,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

mixin _$AuthState {
  EmailAddress get email;
  Username get username;
  Password get password;
  bool get submitting;
  bool get autovalidate;
  bool get obscurePassword;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;

  $AuthStateCopyWith<AuthState> get copyWith;
}

abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress email,
      Username username,
      Password password,
      bool submitting,
      bool autovalidate,
      bool obscurePassword,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;

  @override
  $Res call({
    Object email = freezed,
    Object username = freezed,
    Object password = freezed,
    Object submitting = freezed,
    Object autovalidate = freezed,
    Object obscurePassword = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as EmailAddress,
      username: username == freezed ? _value.username : username as Username,
      password: password == freezed ? _value.password : password as Password,
      submitting:
          submitting == freezed ? _value.submitting : submitting as bool,
      autovalidate:
          autovalidate == freezed ? _value.autovalidate : autovalidate as bool,
      obscurePassword: obscurePassword == freezed
          ? _value.obscurePassword
          : obscurePassword as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

abstract class _$SignInStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$SignInStateCopyWith(
          _SignInState value, $Res Function(_SignInState) then) =
      __$SignInStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress email,
      Username username,
      Password password,
      bool submitting,
      bool autovalidate,
      bool obscurePassword,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

class __$SignInStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$SignInStateCopyWith<$Res> {
  __$SignInStateCopyWithImpl(
      _SignInState _value, $Res Function(_SignInState) _then)
      : super(_value, (v) => _then(v as _SignInState));

  @override
  _SignInState get _value => super._value as _SignInState;

  @override
  $Res call({
    Object email = freezed,
    Object username = freezed,
    Object password = freezed,
    Object submitting = freezed,
    Object autovalidate = freezed,
    Object obscurePassword = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_SignInState(
      email: email == freezed ? _value.email : email as EmailAddress,
      username: username == freezed ? _value.username : username as Username,
      password: password == freezed ? _value.password : password as Password,
      submitting:
          submitting == freezed ? _value.submitting : submitting as bool,
      autovalidate:
          autovalidate == freezed ? _value.autovalidate : autovalidate as bool,
      obscurePassword: obscurePassword == freezed
          ? _value.obscurePassword
          : obscurePassword as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

class _$_SignInState implements _SignInState {
  const _$_SignInState(
      {this.email,
      this.username,
      @required this.password,
      @required this.submitting,
      @required this.autovalidate,
      @required this.obscurePassword,
      @required this.authFailureOrSuccessOption})
      : assert(password != null),
        assert(submitting != null),
        assert(autovalidate != null),
        assert(obscurePassword != null),
        assert(authFailureOrSuccessOption != null);

  @override
  final EmailAddress email;
  @override
  final Username username;
  @override
  final Password password;
  @override
  final bool submitting;
  @override
  final bool autovalidate;
  @override
  final bool obscurePassword;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'AuthState(email: $email, username: $username, password: $password, submitting: $submitting, autovalidate: $autovalidate, obscurePassword: $obscurePassword, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInState &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.submitting, submitting) ||
                const DeepCollectionEquality()
                    .equals(other.submitting, submitting)) &&
            (identical(other.autovalidate, autovalidate) ||
                const DeepCollectionEquality()
                    .equals(other.autovalidate, autovalidate)) &&
            (identical(other.obscurePassword, obscurePassword) ||
                const DeepCollectionEquality()
                    .equals(other.obscurePassword, obscurePassword)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(submitting) ^
      const DeepCollectionEquality().hash(autovalidate) ^
      const DeepCollectionEquality().hash(obscurePassword) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @override
  _$SignInStateCopyWith<_SignInState> get copyWith =>
      __$SignInStateCopyWithImpl<_SignInState>(this, _$identity);
}

abstract class _SignInState implements AuthState {
  const factory _SignInState(
          {EmailAddress email,
          Username username,
          @required
              Password password,
          @required
              bool submitting,
          @required
              bool autovalidate,
          @required
              bool obscurePassword,
          @required
              Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) =
      _$_SignInState;

  @override
  EmailAddress get email;
  @override
  Username get username;
  @override
  Password get password;
  @override
  bool get submitting;
  @override
  bool get autovalidate;
  @override
  bool get obscurePassword;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  _$SignInStateCopyWith<_SignInState> get copyWith;
}
