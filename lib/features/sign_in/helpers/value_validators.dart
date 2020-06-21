import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:jose/jose.dart';
import 'package:mydeck/core/error/value_failure.dart';

final _kPasswordRegexp =
    RegExp(r'(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z]{8,24}');
final _kEmailRegexp = RegExp(r'@');
final _kLoginRegexp = RegExp(r'[a-zA-Z0-9_.]{1,30}$');
final _kTitleRegexp = RegExp(r'[[\^$!?]');
final _kUUIDREgexp = RegExp(
    r'[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}');

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  if (_kEmailRegexp.hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateUniqueId(String input) {
  if (_kUUIDREgexp.hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidUniqueId(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length <= 8) {
    return left(ValueFailure.shortPassword(failedValue: input));
  } else if (input.length > 24) {
    return left(ValueFailure.longPassword(failedValue: input));
  } else if (!_kPasswordRegexp.hasMatch(input)) {
    return left(ValueFailure.invalidPassword(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateLogin(String input) {
  if (input.length >= 30) {
    return left(ValueFailure.longLogin(failedValue: input));
  } else if (!_kLoginRegexp.hasMatch(input) ||
      _kLoginRegexp.firstMatch(input)[0] != input) {
    return left(ValueFailure.invalidLogin(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateDeckDescription(String input) {
  return right(input);
}

Either<ValueFailure<String>, String> validateDeckTitle(String input) {
  if (input.length <= 6) {
    return left(ValueFailure.shortDeckTitle(failedValue: input));
  } else if (_kTitleRegexp.hasMatch(input)) {
    return left(ValueFailure.invalidDeckTitle(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateDeckAvatar(String input) {
  if (input == null || input.isEmpty) {
    return left(ValueFailure.fileDoesNotExists(failedValue: 'null'));
  } else if (!File(input).existsSync()) {
    return left(ValueFailure.fileDoesNotExists(failedValue: input));
  } else {
    return right(input);
  }
}

class AccessTokenValidator {
  Either<ValueFailure<String>, String> call(String input) {
    var jws = JsonWebSignature.fromCompactSerialization(input);
    if (jws.unverifiedPayload.jsonContent['exp'] >
        DateTime.now().millisecondsSinceEpoch ~/ 1000)
      return right(input);
    else {
      return left(ValueFailure.expiredToken(failedValue: input));
    }
  }
}
