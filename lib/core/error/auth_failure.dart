import 'package:freezed_annotation/freezed_annotation.dart';

part "auth_failure.freezed.dart";

@freezed
abstract class AuthFailure with _$AuthFailure {
  factory AuthFailure.canselledByuser() = CanselledByUser;

  factory AuthFailure.serverError() = ServerError;

  factory AuthFailure.emailAreadyInUse() = EmailAlreadyInUse;

  factory AuthFailure.loginAreadyInUse() = LoginAlreadyInUse;

  factory AuthFailure.userNotFound() = UserNotFound;

  factory AuthFailure.wrongPassword() = WrongPassword;

  factory AuthFailure.noInternetConnection() = NoInternetConnection;

  factory AuthFailure.tokenExpired() = TokenExpired;

  @late
  String get message => this.map(
      canselledByuser: null,
      serverError: null,
      emailAreadyInUse: null,
      loginAreadyInUse: null,
      userNotFound: null,
      wrongPassword: null,
      noInternetConnection: null,
      tokenExpired: null);
}
