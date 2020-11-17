import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mydeck/generated/l10n.dart';

part 'value_failure.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  factory ValueFailure.invalidEmail({@required T failedValue}) =
      InvalidEmail<T>;
  factory ValueFailure.emptyEmail({@required T failedValue}) = EmptyEmail<T>;
  factory ValueFailure.shortUsername({@required T failedValue}) =
      ShortUsername<T>;
  factory ValueFailure.emptyUsername({@required T failedValue}) =
      EmptyUsername<T>;

  factory ValueFailure.shortPassword({@required T failedValue}) =
      ShortPassword<T>;
  factory ValueFailure.emptyPassword({@required T failedValue}) =
      EmptyPassword<T>;

  factory ValueFailure.invalidUniqueId({@required T failedValue}) =
      InvalidUniqueId<T>;

  factory ValueFailure.longPassword({@required T failedValue}) =
      LongPassword<T>;

  factory ValueFailure.invalidUsername({@required T failedValue}) =
      InvalidUsername<T>;

  factory ValueFailure.longUsername({@required T failedValue}) =
      LongUsername<T>;

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

  factory ValueFailure.longDeckTitle({@required T failedValue}) =
      LongDeckTitle<T>;

  @late
  String get message => this.map(
        invalidEmail: (value) => S.current.error_value_email_incorrect,
        shortPassword: (value) => S.current.error_value_short_passwor,
        invalidUsername: (value) => S.current.error_value_invalid_login,
        longUsername: (value) => S.current.error_value_long_login,
        invalidPassword: (value) => S.current.error_value_invalid_password,
        longPassword: (value) => S.current.error_value_long_password,
        fileDoesNotExists: (value) => S.current.error_value_file_inexists,
        invalidDeckTitle: (value) => S.current.error_value_invalid_title,
        shortDeckTitle: (value) => S.current.error_value_title_short,
        expiredToken: (value) => S.current.error_auth_invalid_session,
        invalidUniqueId: (value) => S.current.error_auth_invalid_session,
        wrongFileExtension: (value) => S.current.error_value_file_inexists,
        longDeckTitle: (value) =>
            'Deck title should be shorter than 30 characters',
        shortUsername: (value) => 'Username must be longer than 4 characters',
        emptyPassword: (value) => 'Password is required',
        emptyEmail: (value) => 'Email is required',
        emptyUsername: (value) => 'Username is required',
      );
}
