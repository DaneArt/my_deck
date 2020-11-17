import 'package:mydeck/errors/value_failure.dart';
import 'package:mydeck/models/value_objects/value_object.dart';
import 'package:mydeck/utils/value_validators.dart';

import 'package:dartz/dartz.dart';

class Username extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Username(String input) {
    assert(input != null);
    return Username._(
      validateUsername(input),
    );
  }

  const Username._(this.value);
}
