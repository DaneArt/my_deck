import 'package:mydeck/errors/value_failure.dart';
import 'package:mydeck/models/value_objects/value_object.dart';
import 'package:mydeck/utils/value_validators.dart';

import 'package:dartz/dartz.dart';

class Login extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Login(String input) {
    assert(input != null);
    return Login._(
      validateLogin(input),
    );
  }

  const Login._(this.value);
}
