import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mydeck/generated/l10n.dart';

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
      canselledByuser: (v) => S.current.error_auth_canselled_by_user,
      serverError: (v) => S.current.error_auth_network_error,
      emailAreadyInUse: (v) => S.current.error_auth_email_in_use,
      loginAreadyInUse: (v) => S.current.error_auth_username_in_use,
      userNotFound: (v) => S.current.error_user_not_found,
      wrongPassword: (v) => S.current.error_auth_wrong_password,
      noInternetConnection: (v) => S.current.error_auth_no_internet,
      tokenExpired: (v) => S.current.error_auth_invalid_session);
}
