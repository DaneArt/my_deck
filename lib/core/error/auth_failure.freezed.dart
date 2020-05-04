// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  CanselledByUser canselledByuser() {
    return CanselledByUser();
  }

  ServerError serverError() {
    return ServerError();
  }

  EmailAlreadyInUse emailAreadyInUse() {
    return EmailAlreadyInUse();
  }

  LoginAlreadyInUse loginAreadyInUse() {
    return LoginAlreadyInUse();
  }

  UserNotFound userNotFound() {
    return UserNotFound();
  }

  WrongPassword wrongPassword() {
    return WrongPassword();
  }

  NoInternetConnection noInternetConnection() {
    return NoInternetConnection();
  }

  TokenExpired tokenExpired() {
    return TokenExpired();
  }
}

// ignore: unused_element
const $AuthFailure = _$AuthFailureTearOff();

mixin _$AuthFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result canselledByuser(),
    @required Result serverError(),
    @required Result emailAreadyInUse(),
    @required Result loginAreadyInUse(),
    @required Result userNotFound(),
    @required Result wrongPassword(),
    @required Result noInternetConnection(),
    @required Result tokenExpired(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result canselledByuser(),
    Result serverError(),
    Result emailAreadyInUse(),
    Result loginAreadyInUse(),
    Result userNotFound(),
    Result wrongPassword(),
    Result noInternetConnection(),
    Result tokenExpired(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result canselledByuser(CanselledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAreadyInUse(EmailAlreadyInUse value),
    @required Result loginAreadyInUse(LoginAlreadyInUse value),
    @required Result userNotFound(UserNotFound value),
    @required Result wrongPassword(WrongPassword value),
    @required Result noInternetConnection(NoInternetConnection value),
    @required Result tokenExpired(TokenExpired value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result canselledByuser(CanselledByUser value),
    Result serverError(ServerError value),
    Result emailAreadyInUse(EmailAlreadyInUse value),
    Result loginAreadyInUse(LoginAlreadyInUse value),
    Result userNotFound(UserNotFound value),
    Result wrongPassword(WrongPassword value),
    Result noInternetConnection(NoInternetConnection value),
    Result tokenExpired(TokenExpired value),
    @required Result orElse(),
  });
}

abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

abstract class $CanselledByUserCopyWith<$Res> {
  factory $CanselledByUserCopyWith(
          CanselledByUser value, $Res Function(CanselledByUser) then) =
      _$CanselledByUserCopyWithImpl<$Res>;
}

class _$CanselledByUserCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $CanselledByUserCopyWith<$Res> {
  _$CanselledByUserCopyWithImpl(
      CanselledByUser _value, $Res Function(CanselledByUser) _then)
      : super(_value, (v) => _then(v as CanselledByUser));

  @override
  CanselledByUser get _value => super._value as CanselledByUser;
}

class _$CanselledByUser implements CanselledByUser {
  _$CanselledByUser();

  bool _didmessage = false;
  String _message;

  @override
  String get message {
    if (_didmessage == false) {
      _didmessage = true;
      _message = this.map(
          canselledByuser: null,
          serverError: null,
          emailAreadyInUse: null,
          loginAreadyInUse: null,
          userNotFound: null,
          wrongPassword: null,
          noInternetConnection: null,
          tokenExpired: null);
    }
    return _message;
  }

  @override
  String toString() {
    return 'AuthFailure.canselledByuser(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CanselledByUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result canselledByuser(),
    @required Result serverError(),
    @required Result emailAreadyInUse(),
    @required Result loginAreadyInUse(),
    @required Result userNotFound(),
    @required Result wrongPassword(),
    @required Result noInternetConnection(),
    @required Result tokenExpired(),
  }) {
    assert(canselledByuser != null);
    assert(serverError != null);
    assert(emailAreadyInUse != null);
    assert(loginAreadyInUse != null);
    assert(userNotFound != null);
    assert(wrongPassword != null);
    assert(noInternetConnection != null);
    assert(tokenExpired != null);
    return canselledByuser();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result canselledByuser(),
    Result serverError(),
    Result emailAreadyInUse(),
    Result loginAreadyInUse(),
    Result userNotFound(),
    Result wrongPassword(),
    Result noInternetConnection(),
    Result tokenExpired(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (canselledByuser != null) {
      return canselledByuser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result canselledByuser(CanselledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAreadyInUse(EmailAlreadyInUse value),
    @required Result loginAreadyInUse(LoginAlreadyInUse value),
    @required Result userNotFound(UserNotFound value),
    @required Result wrongPassword(WrongPassword value),
    @required Result noInternetConnection(NoInternetConnection value),
    @required Result tokenExpired(TokenExpired value),
  }) {
    assert(canselledByuser != null);
    assert(serverError != null);
    assert(emailAreadyInUse != null);
    assert(loginAreadyInUse != null);
    assert(userNotFound != null);
    assert(wrongPassword != null);
    assert(noInternetConnection != null);
    assert(tokenExpired != null);
    return canselledByuser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result canselledByuser(CanselledByUser value),
    Result serverError(ServerError value),
    Result emailAreadyInUse(EmailAlreadyInUse value),
    Result loginAreadyInUse(LoginAlreadyInUse value),
    Result userNotFound(UserNotFound value),
    Result wrongPassword(WrongPassword value),
    Result noInternetConnection(NoInternetConnection value),
    Result tokenExpired(TokenExpired value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (canselledByuser != null) {
      return canselledByuser(this);
    }
    return orElse();
  }
}

abstract class CanselledByUser implements AuthFailure {
  factory CanselledByUser() = _$CanselledByUser;
}

abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

class _$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

class _$ServerError implements ServerError {
  _$ServerError();

  bool _didmessage = false;
  String _message;

  @override
  String get message {
    if (_didmessage == false) {
      _didmessage = true;
      _message = this.map(
          canselledByuser: null,
          serverError: null,
          emailAreadyInUse: null,
          loginAreadyInUse: null,
          userNotFound: null,
          wrongPassword: null,
          noInternetConnection: null,
          tokenExpired: null);
    }
    return _message;
  }

  @override
  String toString() {
    return 'AuthFailure.serverError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result canselledByuser(),
    @required Result serverError(),
    @required Result emailAreadyInUse(),
    @required Result loginAreadyInUse(),
    @required Result userNotFound(),
    @required Result wrongPassword(),
    @required Result noInternetConnection(),
    @required Result tokenExpired(),
  }) {
    assert(canselledByuser != null);
    assert(serverError != null);
    assert(emailAreadyInUse != null);
    assert(loginAreadyInUse != null);
    assert(userNotFound != null);
    assert(wrongPassword != null);
    assert(noInternetConnection != null);
    assert(tokenExpired != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result canselledByuser(),
    Result serverError(),
    Result emailAreadyInUse(),
    Result loginAreadyInUse(),
    Result userNotFound(),
    Result wrongPassword(),
    Result noInternetConnection(),
    Result tokenExpired(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result canselledByuser(CanselledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAreadyInUse(EmailAlreadyInUse value),
    @required Result loginAreadyInUse(LoginAlreadyInUse value),
    @required Result userNotFound(UserNotFound value),
    @required Result wrongPassword(WrongPassword value),
    @required Result noInternetConnection(NoInternetConnection value),
    @required Result tokenExpired(TokenExpired value),
  }) {
    assert(canselledByuser != null);
    assert(serverError != null);
    assert(emailAreadyInUse != null);
    assert(loginAreadyInUse != null);
    assert(userNotFound != null);
    assert(wrongPassword != null);
    assert(noInternetConnection != null);
    assert(tokenExpired != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result canselledByuser(CanselledByUser value),
    Result serverError(ServerError value),
    Result emailAreadyInUse(EmailAlreadyInUse value),
    Result loginAreadyInUse(LoginAlreadyInUse value),
    Result userNotFound(UserNotFound value),
    Result wrongPassword(WrongPassword value),
    Result noInternetConnection(NoInternetConnection value),
    Result tokenExpired(TokenExpired value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  factory ServerError() = _$ServerError;
}

abstract class $EmailAlreadyInUseCopyWith<$Res> {
  factory $EmailAlreadyInUseCopyWith(
          EmailAlreadyInUse value, $Res Function(EmailAlreadyInUse) then) =
      _$EmailAlreadyInUseCopyWithImpl<$Res>;
}

class _$EmailAlreadyInUseCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $EmailAlreadyInUseCopyWith<$Res> {
  _$EmailAlreadyInUseCopyWithImpl(
      EmailAlreadyInUse _value, $Res Function(EmailAlreadyInUse) _then)
      : super(_value, (v) => _then(v as EmailAlreadyInUse));

  @override
  EmailAlreadyInUse get _value => super._value as EmailAlreadyInUse;
}

class _$EmailAlreadyInUse implements EmailAlreadyInUse {
  _$EmailAlreadyInUse();

  bool _didmessage = false;
  String _message;

  @override
  String get message {
    if (_didmessage == false) {
      _didmessage = true;
      _message = this.map(
          canselledByuser: null,
          serverError: null,
          emailAreadyInUse: null,
          loginAreadyInUse: null,
          userNotFound: null,
          wrongPassword: null,
          noInternetConnection: null,
          tokenExpired: null);
    }
    return _message;
  }

  @override
  String toString() {
    return 'AuthFailure.emailAreadyInUse(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result canselledByuser(),
    @required Result serverError(),
    @required Result emailAreadyInUse(),
    @required Result loginAreadyInUse(),
    @required Result userNotFound(),
    @required Result wrongPassword(),
    @required Result noInternetConnection(),
    @required Result tokenExpired(),
  }) {
    assert(canselledByuser != null);
    assert(serverError != null);
    assert(emailAreadyInUse != null);
    assert(loginAreadyInUse != null);
    assert(userNotFound != null);
    assert(wrongPassword != null);
    assert(noInternetConnection != null);
    assert(tokenExpired != null);
    return emailAreadyInUse();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result canselledByuser(),
    Result serverError(),
    Result emailAreadyInUse(),
    Result loginAreadyInUse(),
    Result userNotFound(),
    Result wrongPassword(),
    Result noInternetConnection(),
    Result tokenExpired(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailAreadyInUse != null) {
      return emailAreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result canselledByuser(CanselledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAreadyInUse(EmailAlreadyInUse value),
    @required Result loginAreadyInUse(LoginAlreadyInUse value),
    @required Result userNotFound(UserNotFound value),
    @required Result wrongPassword(WrongPassword value),
    @required Result noInternetConnection(NoInternetConnection value),
    @required Result tokenExpired(TokenExpired value),
  }) {
    assert(canselledByuser != null);
    assert(serverError != null);
    assert(emailAreadyInUse != null);
    assert(loginAreadyInUse != null);
    assert(userNotFound != null);
    assert(wrongPassword != null);
    assert(noInternetConnection != null);
    assert(tokenExpired != null);
    return emailAreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result canselledByuser(CanselledByUser value),
    Result serverError(ServerError value),
    Result emailAreadyInUse(EmailAlreadyInUse value),
    Result loginAreadyInUse(LoginAlreadyInUse value),
    Result userNotFound(UserNotFound value),
    Result wrongPassword(WrongPassword value),
    Result noInternetConnection(NoInternetConnection value),
    Result tokenExpired(TokenExpired value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailAreadyInUse != null) {
      return emailAreadyInUse(this);
    }
    return orElse();
  }
}

abstract class EmailAlreadyInUse implements AuthFailure {
  factory EmailAlreadyInUse() = _$EmailAlreadyInUse;
}

abstract class $LoginAlreadyInUseCopyWith<$Res> {
  factory $LoginAlreadyInUseCopyWith(
          LoginAlreadyInUse value, $Res Function(LoginAlreadyInUse) then) =
      _$LoginAlreadyInUseCopyWithImpl<$Res>;
}

class _$LoginAlreadyInUseCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $LoginAlreadyInUseCopyWith<$Res> {
  _$LoginAlreadyInUseCopyWithImpl(
      LoginAlreadyInUse _value, $Res Function(LoginAlreadyInUse) _then)
      : super(_value, (v) => _then(v as LoginAlreadyInUse));

  @override
  LoginAlreadyInUse get _value => super._value as LoginAlreadyInUse;
}

class _$LoginAlreadyInUse implements LoginAlreadyInUse {
  _$LoginAlreadyInUse();

  bool _didmessage = false;
  String _message;

  @override
  String get message {
    if (_didmessage == false) {
      _didmessage = true;
      _message = this.map(
          canselledByuser: null,
          serverError: null,
          emailAreadyInUse: null,
          loginAreadyInUse: null,
          userNotFound: null,
          wrongPassword: null,
          noInternetConnection: null,
          tokenExpired: null);
    }
    return _message;
  }

  @override
  String toString() {
    return 'AuthFailure.loginAreadyInUse(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoginAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result canselledByuser(),
    @required Result serverError(),
    @required Result emailAreadyInUse(),
    @required Result loginAreadyInUse(),
    @required Result userNotFound(),
    @required Result wrongPassword(),
    @required Result noInternetConnection(),
    @required Result tokenExpired(),
  }) {
    assert(canselledByuser != null);
    assert(serverError != null);
    assert(emailAreadyInUse != null);
    assert(loginAreadyInUse != null);
    assert(userNotFound != null);
    assert(wrongPassword != null);
    assert(noInternetConnection != null);
    assert(tokenExpired != null);
    return loginAreadyInUse();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result canselledByuser(),
    Result serverError(),
    Result emailAreadyInUse(),
    Result loginAreadyInUse(),
    Result userNotFound(),
    Result wrongPassword(),
    Result noInternetConnection(),
    Result tokenExpired(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginAreadyInUse != null) {
      return loginAreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result canselledByuser(CanselledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAreadyInUse(EmailAlreadyInUse value),
    @required Result loginAreadyInUse(LoginAlreadyInUse value),
    @required Result userNotFound(UserNotFound value),
    @required Result wrongPassword(WrongPassword value),
    @required Result noInternetConnection(NoInternetConnection value),
    @required Result tokenExpired(TokenExpired value),
  }) {
    assert(canselledByuser != null);
    assert(serverError != null);
    assert(emailAreadyInUse != null);
    assert(loginAreadyInUse != null);
    assert(userNotFound != null);
    assert(wrongPassword != null);
    assert(noInternetConnection != null);
    assert(tokenExpired != null);
    return loginAreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result canselledByuser(CanselledByUser value),
    Result serverError(ServerError value),
    Result emailAreadyInUse(EmailAlreadyInUse value),
    Result loginAreadyInUse(LoginAlreadyInUse value),
    Result userNotFound(UserNotFound value),
    Result wrongPassword(WrongPassword value),
    Result noInternetConnection(NoInternetConnection value),
    Result tokenExpired(TokenExpired value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loginAreadyInUse != null) {
      return loginAreadyInUse(this);
    }
    return orElse();
  }
}

abstract class LoginAlreadyInUse implements AuthFailure {
  factory LoginAlreadyInUse() = _$LoginAlreadyInUse;
}

abstract class $UserNotFoundCopyWith<$Res> {
  factory $UserNotFoundCopyWith(
          UserNotFound value, $Res Function(UserNotFound) then) =
      _$UserNotFoundCopyWithImpl<$Res>;
}

class _$UserNotFoundCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $UserNotFoundCopyWith<$Res> {
  _$UserNotFoundCopyWithImpl(
      UserNotFound _value, $Res Function(UserNotFound) _then)
      : super(_value, (v) => _then(v as UserNotFound));

  @override
  UserNotFound get _value => super._value as UserNotFound;
}

class _$UserNotFound implements UserNotFound {
  _$UserNotFound();

  bool _didmessage = false;
  String _message;

  @override
  String get message {
    if (_didmessage == false) {
      _didmessage = true;
      _message = this.map(
          canselledByuser: null,
          serverError: null,
          emailAreadyInUse: null,
          loginAreadyInUse: null,
          userNotFound: null,
          wrongPassword: null,
          noInternetConnection: null,
          tokenExpired: null);
    }
    return _message;
  }

  @override
  String toString() {
    return 'AuthFailure.userNotFound(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result canselledByuser(),
    @required Result serverError(),
    @required Result emailAreadyInUse(),
    @required Result loginAreadyInUse(),
    @required Result userNotFound(),
    @required Result wrongPassword(),
    @required Result noInternetConnection(),
    @required Result tokenExpired(),
  }) {
    assert(canselledByuser != null);
    assert(serverError != null);
    assert(emailAreadyInUse != null);
    assert(loginAreadyInUse != null);
    assert(userNotFound != null);
    assert(wrongPassword != null);
    assert(noInternetConnection != null);
    assert(tokenExpired != null);
    return userNotFound();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result canselledByuser(),
    Result serverError(),
    Result emailAreadyInUse(),
    Result loginAreadyInUse(),
    Result userNotFound(),
    Result wrongPassword(),
    Result noInternetConnection(),
    Result tokenExpired(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userNotFound != null) {
      return userNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result canselledByuser(CanselledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAreadyInUse(EmailAlreadyInUse value),
    @required Result loginAreadyInUse(LoginAlreadyInUse value),
    @required Result userNotFound(UserNotFound value),
    @required Result wrongPassword(WrongPassword value),
    @required Result noInternetConnection(NoInternetConnection value),
    @required Result tokenExpired(TokenExpired value),
  }) {
    assert(canselledByuser != null);
    assert(serverError != null);
    assert(emailAreadyInUse != null);
    assert(loginAreadyInUse != null);
    assert(userNotFound != null);
    assert(wrongPassword != null);
    assert(noInternetConnection != null);
    assert(tokenExpired != null);
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result canselledByuser(CanselledByUser value),
    Result serverError(ServerError value),
    Result emailAreadyInUse(EmailAlreadyInUse value),
    Result loginAreadyInUse(LoginAlreadyInUse value),
    Result userNotFound(UserNotFound value),
    Result wrongPassword(WrongPassword value),
    Result noInternetConnection(NoInternetConnection value),
    Result tokenExpired(TokenExpired value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class UserNotFound implements AuthFailure {
  factory UserNotFound() = _$UserNotFound;
}

abstract class $WrongPasswordCopyWith<$Res> {
  factory $WrongPasswordCopyWith(
          WrongPassword value, $Res Function(WrongPassword) then) =
      _$WrongPasswordCopyWithImpl<$Res>;
}

class _$WrongPasswordCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $WrongPasswordCopyWith<$Res> {
  _$WrongPasswordCopyWithImpl(
      WrongPassword _value, $Res Function(WrongPassword) _then)
      : super(_value, (v) => _then(v as WrongPassword));

  @override
  WrongPassword get _value => super._value as WrongPassword;
}

class _$WrongPassword implements WrongPassword {
  _$WrongPassword();

  bool _didmessage = false;
  String _message;

  @override
  String get message {
    if (_didmessage == false) {
      _didmessage = true;
      _message = this.map(
          canselledByuser: null,
          serverError: null,
          emailAreadyInUse: null,
          loginAreadyInUse: null,
          userNotFound: null,
          wrongPassword: null,
          noInternetConnection: null,
          tokenExpired: null);
    }
    return _message;
  }

  @override
  String toString() {
    return 'AuthFailure.wrongPassword(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WrongPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result canselledByuser(),
    @required Result serverError(),
    @required Result emailAreadyInUse(),
    @required Result loginAreadyInUse(),
    @required Result userNotFound(),
    @required Result wrongPassword(),
    @required Result noInternetConnection(),
    @required Result tokenExpired(),
  }) {
    assert(canselledByuser != null);
    assert(serverError != null);
    assert(emailAreadyInUse != null);
    assert(loginAreadyInUse != null);
    assert(userNotFound != null);
    assert(wrongPassword != null);
    assert(noInternetConnection != null);
    assert(tokenExpired != null);
    return wrongPassword();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result canselledByuser(),
    Result serverError(),
    Result emailAreadyInUse(),
    Result loginAreadyInUse(),
    Result userNotFound(),
    Result wrongPassword(),
    Result noInternetConnection(),
    Result tokenExpired(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (wrongPassword != null) {
      return wrongPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result canselledByuser(CanselledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAreadyInUse(EmailAlreadyInUse value),
    @required Result loginAreadyInUse(LoginAlreadyInUse value),
    @required Result userNotFound(UserNotFound value),
    @required Result wrongPassword(WrongPassword value),
    @required Result noInternetConnection(NoInternetConnection value),
    @required Result tokenExpired(TokenExpired value),
  }) {
    assert(canselledByuser != null);
    assert(serverError != null);
    assert(emailAreadyInUse != null);
    assert(loginAreadyInUse != null);
    assert(userNotFound != null);
    assert(wrongPassword != null);
    assert(noInternetConnection != null);
    assert(tokenExpired != null);
    return wrongPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result canselledByuser(CanselledByUser value),
    Result serverError(ServerError value),
    Result emailAreadyInUse(EmailAlreadyInUse value),
    Result loginAreadyInUse(LoginAlreadyInUse value),
    Result userNotFound(UserNotFound value),
    Result wrongPassword(WrongPassword value),
    Result noInternetConnection(NoInternetConnection value),
    Result tokenExpired(TokenExpired value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (wrongPassword != null) {
      return wrongPassword(this);
    }
    return orElse();
  }
}

abstract class WrongPassword implements AuthFailure {
  factory WrongPassword() = _$WrongPassword;
}

abstract class $NoInternetConnectionCopyWith<$Res> {
  factory $NoInternetConnectionCopyWith(NoInternetConnection value,
          $Res Function(NoInternetConnection) then) =
      _$NoInternetConnectionCopyWithImpl<$Res>;
}

class _$NoInternetConnectionCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $NoInternetConnectionCopyWith<$Res> {
  _$NoInternetConnectionCopyWithImpl(
      NoInternetConnection _value, $Res Function(NoInternetConnection) _then)
      : super(_value, (v) => _then(v as NoInternetConnection));

  @override
  NoInternetConnection get _value => super._value as NoInternetConnection;
}

class _$NoInternetConnection implements NoInternetConnection {
  _$NoInternetConnection();

  bool _didmessage = false;
  String _message;

  @override
  String get message {
    if (_didmessage == false) {
      _didmessage = true;
      _message = this.map(
          canselledByuser: null,
          serverError: null,
          emailAreadyInUse: null,
          loginAreadyInUse: null,
          userNotFound: null,
          wrongPassword: null,
          noInternetConnection: null,
          tokenExpired: null);
    }
    return _message;
  }

  @override
  String toString() {
    return 'AuthFailure.noInternetConnection(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoInternetConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result canselledByuser(),
    @required Result serverError(),
    @required Result emailAreadyInUse(),
    @required Result loginAreadyInUse(),
    @required Result userNotFound(),
    @required Result wrongPassword(),
    @required Result noInternetConnection(),
    @required Result tokenExpired(),
  }) {
    assert(canselledByuser != null);
    assert(serverError != null);
    assert(emailAreadyInUse != null);
    assert(loginAreadyInUse != null);
    assert(userNotFound != null);
    assert(wrongPassword != null);
    assert(noInternetConnection != null);
    assert(tokenExpired != null);
    return noInternetConnection();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result canselledByuser(),
    Result serverError(),
    Result emailAreadyInUse(),
    Result loginAreadyInUse(),
    Result userNotFound(),
    Result wrongPassword(),
    Result noInternetConnection(),
    Result tokenExpired(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noInternetConnection != null) {
      return noInternetConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result canselledByuser(CanselledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAreadyInUse(EmailAlreadyInUse value),
    @required Result loginAreadyInUse(LoginAlreadyInUse value),
    @required Result userNotFound(UserNotFound value),
    @required Result wrongPassword(WrongPassword value),
    @required Result noInternetConnection(NoInternetConnection value),
    @required Result tokenExpired(TokenExpired value),
  }) {
    assert(canselledByuser != null);
    assert(serverError != null);
    assert(emailAreadyInUse != null);
    assert(loginAreadyInUse != null);
    assert(userNotFound != null);
    assert(wrongPassword != null);
    assert(noInternetConnection != null);
    assert(tokenExpired != null);
    return noInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result canselledByuser(CanselledByUser value),
    Result serverError(ServerError value),
    Result emailAreadyInUse(EmailAlreadyInUse value),
    Result loginAreadyInUse(LoginAlreadyInUse value),
    Result userNotFound(UserNotFound value),
    Result wrongPassword(WrongPassword value),
    Result noInternetConnection(NoInternetConnection value),
    Result tokenExpired(TokenExpired value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noInternetConnection != null) {
      return noInternetConnection(this);
    }
    return orElse();
  }
}

abstract class NoInternetConnection implements AuthFailure {
  factory NoInternetConnection() = _$NoInternetConnection;
}

abstract class $TokenExpiredCopyWith<$Res> {
  factory $TokenExpiredCopyWith(
          TokenExpired value, $Res Function(TokenExpired) then) =
      _$TokenExpiredCopyWithImpl<$Res>;
}

class _$TokenExpiredCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $TokenExpiredCopyWith<$Res> {
  _$TokenExpiredCopyWithImpl(
      TokenExpired _value, $Res Function(TokenExpired) _then)
      : super(_value, (v) => _then(v as TokenExpired));

  @override
  TokenExpired get _value => super._value as TokenExpired;
}

class _$TokenExpired implements TokenExpired {
  _$TokenExpired();

  bool _didmessage = false;
  String _message;

  @override
  String get message {
    if (_didmessage == false) {
      _didmessage = true;
      _message = this.map(
          canselledByuser: null,
          serverError: null,
          emailAreadyInUse: null,
          loginAreadyInUse: null,
          userNotFound: null,
          wrongPassword: null,
          noInternetConnection: null,
          tokenExpired: null);
    }
    return _message;
  }

  @override
  String toString() {
    return 'AuthFailure.tokenExpired(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TokenExpired);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result canselledByuser(),
    @required Result serverError(),
    @required Result emailAreadyInUse(),
    @required Result loginAreadyInUse(),
    @required Result userNotFound(),
    @required Result wrongPassword(),
    @required Result noInternetConnection(),
    @required Result tokenExpired(),
  }) {
    assert(canselledByuser != null);
    assert(serverError != null);
    assert(emailAreadyInUse != null);
    assert(loginAreadyInUse != null);
    assert(userNotFound != null);
    assert(wrongPassword != null);
    assert(noInternetConnection != null);
    assert(tokenExpired != null);
    return tokenExpired();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result canselledByuser(),
    Result serverError(),
    Result emailAreadyInUse(),
    Result loginAreadyInUse(),
    Result userNotFound(),
    Result wrongPassword(),
    Result noInternetConnection(),
    Result tokenExpired(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (tokenExpired != null) {
      return tokenExpired();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result canselledByuser(CanselledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAreadyInUse(EmailAlreadyInUse value),
    @required Result loginAreadyInUse(LoginAlreadyInUse value),
    @required Result userNotFound(UserNotFound value),
    @required Result wrongPassword(WrongPassword value),
    @required Result noInternetConnection(NoInternetConnection value),
    @required Result tokenExpired(TokenExpired value),
  }) {
    assert(canselledByuser != null);
    assert(serverError != null);
    assert(emailAreadyInUse != null);
    assert(loginAreadyInUse != null);
    assert(userNotFound != null);
    assert(wrongPassword != null);
    assert(noInternetConnection != null);
    assert(tokenExpired != null);
    return tokenExpired(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result canselledByuser(CanselledByUser value),
    Result serverError(ServerError value),
    Result emailAreadyInUse(EmailAlreadyInUse value),
    Result loginAreadyInUse(LoginAlreadyInUse value),
    Result userNotFound(UserNotFound value),
    Result wrongPassword(WrongPassword value),
    Result noInternetConnection(NoInternetConnection value),
    Result tokenExpired(TokenExpired value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (tokenExpired != null) {
      return tokenExpired(this);
    }
    return orElse();
  }
}

abstract class TokenExpired implements AuthFailure {
  factory TokenExpired() = _$TokenExpired;
}
