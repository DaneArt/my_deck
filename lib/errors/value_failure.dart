import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:mydeck/generated/l10n.dart';

part 'value_failure.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  factory ValueFailure.invalidEmail({@required T failedValue}) =
      InvalidEmail<T>;

  factory ValueFailure.shortPassword({@required T failedValue}) =
      ShortPassword<T>;

  factory ValueFailure.invalidUniqueId({@required T failedValue}) =
      InvalidUniqueId<T>;

  factory ValueFailure.longPassword({@required T failedValue}) =
      LongPassword<T>;

  factory ValueFailure.invalidLogin({@required T failedValue}) =
      InvalidLogin<T>;

  factory ValueFailure.longLogin({@required T failedValue}) = LongLogin<T>;

  factory ValueFailure.invalidPassword({@required T failedValue}) =
      InvalidPassword<T>;

  factory ValueFailure.fileDoesNotExists({@required T failedValue}) =
      FileDoesNotExists<T>;

  factory ValueFailure.shortDeckTitle({@required T failedValue}) =
      ShortDeckTitle<T>;

  factory ValueFailure.invalidDeckTitle({@required T failedValue}) =
      InvalidDeckTitle<T>;

  factory ValueFailure.expiredToken({@required T failedValue}) =
      ExpiredToken<T>;

  factory ValueFailure.wrongFileExtension({@required T failedValue}) =
      WrongFileExtension<T>;

  @late
  String get message => this.map(
        invalidEmail: (value) => S.current.error_value_email_incorrect,
        shortPassword: (value) => S.current.error_value_short_passwor,
        invalidLogin: (value) => S.current.error_value_invalid_login,
        longLogin: (value) => S.current.error_value_long_login,
        invalidPassword: (value) => S.current.error_value_invalid_password,
        longPassword: (value) => S.current.error_value_long_password,
        fileDoesNotExists: (value) => S.current.error_value_file_inexists,
        invalidDeckTitle: (value) => S.current.error_value_invalid_title,
        shortDeckTitle: (value) => S.current.error_value_title_short,
        expiredToken: (value) => S.current.error_auth_invalid_session,
        invalidUniqueId: (value) => S.current.error_auth_invalid_session,
        wrongFileExtension: (value) => S.current.error_value_file_inexists,
      );
}
