import 'package:mydeck/errors/value_failure.dart';
import 'package:mydeck/models/value_objects/value_object.dart';
import 'package:mydeck/utils/value_validators.dart';

import 'package:dartz/dartz.dart';

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);
}
