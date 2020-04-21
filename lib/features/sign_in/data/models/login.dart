import 'package:mydeck/core/error/value_failure.dart';
import 'package:mydeck/features/sign_in/data/models/value_object.dart';
import 'package:mydeck/features/sign_in/helpers/value_validators.dart';

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
