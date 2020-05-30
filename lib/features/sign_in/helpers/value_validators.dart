import 'dart:convert';
import 'dart:io';

import 'package:jose/jose.dart';
import 'package:mydeck/core/error/auth_failure.dart';
import 'package:mydeck/core/error/value_failure.dart';
import 'package:dartz/dartz.dart';

final kPasswordRegexp =
    RegExp(r'(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z]{8,24}');
final kEmailRegexp = RegExp(r'@');
final kLoginRegexp = RegExp(r'[a-zA-Z0-9_.]{1,30}$');
final kTitleRegexp = RegExp(r'[[\^$!?]');

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  if (kEmailRegexp.hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateToken(String input) {
  print(input);
  var jws = JsonWebSignature.fromCompactSerialization(input);
  if (jws.unverifiedPayload.jsonContent['exp'] >
      DateTime.now().millisecondsSinceEpoch ~/ 1000)
    return right(input);
  else {
    return left(ValueFailure.expiredToken(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length <= 8) {
    return left(ValueFailure.shortPassword(failedValue: input));
  } else if (input.length > 24) {
    return left(ValueFailure.longPassword(failedValue: input));
  } else if (!kPasswordRegexp.hasMatch(input)) {
    return left(ValueFailure.invalidPassword(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateLogin(String input) {
  if (input.length >= 30) {
    return left(ValueFailure.longLogin(failedValue: input));
  } else if (!kLoginRegexp.hasMatch(input) ||
      kLoginRegexp.firstMatch(input)[0] != input) {
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
  }
  else if (kTitleRegexp.hasMatch(input)) {
    return left(ValueFailure.invalidDeckTitle(failedValue: input));
  }
  else {
    return right(input);
  }
}

Either<ValueFailure<File>, File> validateDeckAvatar(File input) {
  if (input == null) {
    return left(ValueFailure.fileDoesNotExists(failedValue: File('null')));
  } else if (!input.existsSync()) {
    return left(ValueFailure.fileDoesNotExists(failedValue: input));
  } else {
    return right(input);
  }
}
