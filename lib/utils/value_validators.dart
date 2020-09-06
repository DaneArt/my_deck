import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:dartz/dartz.dart';
import 'package:jose/jose.dart';
import 'package:mydeck/errors/value_failure.dart';
import 'package:mydeck/models/entitites/md_file.dart';
import 'package:mydeck/models/entitites/unique_id.dart';
import 'package:mydeck/utils/file_extensions.dart';

final _kPasswordRegexp =
    RegExp(r'[~!"#$%&()*+,-./:;<=>?@[\]^_`{|}~0-9a-zA-Z]{8,32}');
final _kEmailRegexp = RegExp(r'@');
final _kLoginRegexp = RegExp(r'[a-zA-Z0-9_.]{1,30}$');
final _kTitleRegexp = RegExp(r'[[\^$!?]');
final _kUUIDREgexp = RegExp(
    r'[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}');

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  if (input == null || input.isEmpty) {
    return left(ValueFailure.emptyEmail(failedValue: input));
  } else if (_kEmailRegexp.hasMatch(input)) {
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

Either<ValueFailure<List<int>>, List<int>> validatePassword(String input) {
  final encodedPass = sha256.convert(utf8.encode(input)).bytes;
  if (input == null || input.isEmpty) {
    return left(ValueFailure.emptyPassword(failedValue: encodedPass));
  } else if (input.length < 8) {
    return left(ValueFailure.shortPassword(failedValue: encodedPass));
  } else if (input.length > 24) {
    return left(ValueFailure.longPassword(failedValue: encodedPass));
  } else if (!_kPasswordRegexp.hasMatch(input) ||
      _kPasswordRegexp.firstMatch(input)[0] != input) {
    return left(ValueFailure.invalidPassword(failedValue: encodedPass));
  } else {
    return right(encodedPass);
  }
}

Either<ValueFailure<String>, String> validateUsername(String input) {
  if (input == null || input.isEmpty) {
    return left(ValueFailure.emptyUsername(failedValue: input));
  } else if (input.length < 4) {
    return left(ValueFailure.shortUsername(failedValue: input));
  } else if (input.length > 30) {
    return left(ValueFailure.longUsername(failedValue: input));
  } else if (!_kLoginRegexp.hasMatch(input) ||
      _kLoginRegexp.firstMatch(input)[0] != input) {
    return left(ValueFailure.invalidUsername(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateDeckDescription(String input) {
  return right(input);
}

Either<ValueFailure<String>, String> validateDeckTitle(String input) {
  if (input.length > 30) {
    return left(ValueFailure.longDeckTitle(failedValue: input));
  } else if (_kTitleRegexp.hasMatch(input)) {
    return left(ValueFailure.invalidDeckTitle(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<ImageFile>, ImageFile> validateDeckAvatar(File input) {
  if (input == null) {
    return left(
      ValueFailure.fileDoesNotExists(
        failedValue: ImageFile(
          file: input,
          uniqueId: UniqueId(),
        ),
      ),
    );
  } else if (!input.existsSync()) {
    return left(
      ValueFailure.fileDoesNotExists(
        failedValue: ImageFile(
          file: input,
          uniqueId: UniqueId(),
        ),
      ),
    );
  } else if (input.extension != 'jpg' ||
      input.extension != 'png' ||
      input.extension != 'jpeg') {
    return left(
      ValueFailure.wrongFileExtension(
        failedValue: ImageFile(
          file: input,
          uniqueId: UniqueId(),
        ),
      ),
    );
  } else {
    return right(
      ImageFile(
        file: input,
        uniqueId: UniqueId(),
      ),
    );
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
