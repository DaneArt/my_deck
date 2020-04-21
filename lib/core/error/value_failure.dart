import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part "value_failure.freezed.dart";

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  factory ValueFailure.invalidEmail({@required T failedValue}) =
      InvalidEmail<T>;
  factory ValueFailure.shortPassword({@required T failedValue}) =
      ShortPassword<T>;
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

  @late
  String get message => this.map(
      invalidEmail: (value) => 'Email is incorrect.',
      shortPassword: (value) => 'Password must be longer than 8 characters.',
      invalidLogin: (value) =>
          "Login could contain letters, numbers, '.' or '_'.",
      longLogin: (value) => 'Login must be shorter than 30 characters.',
      invalidPassword: (value) =>
          'Pasword must contain at least 1 number, 1 uppercase letter and 1 bottomcase letter.',
      longPassword: (value) => 'Password must be shorter than 24 characters.',
      fileDoesNotExists: (value) => "File doesn't exists.",
      invalidDeckTitle: (value) =>
          "Title could contain letters, numbers, '.' or '_'.",
      shortDeckTitle: (value) => 'Title must be longer than 6 characters.');
}
