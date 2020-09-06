import 'package:mydeck/errors/value_failure.dart';
import 'package:mydeck/models/value_objects/value_object.dart';
import 'package:mydeck/utils/value_validators.dart';

import 'package:dartz/dartz.dart';

class Password extends ValueObject<List<int>> {
  @override
  final Either<ValueFailure<List<int>>, List<int>> value;

  factory Password(String input) {
    assert(input != null);
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);
}
