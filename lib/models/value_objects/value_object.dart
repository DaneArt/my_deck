import 'package:mydeck/errors/value_failure.dart';
import 'package:dartz/dartz.dart';

import 'package:meta/meta.dart';

@immutable
abstract class ValueObject<T> {
  Either<ValueFailure<T>, T> get value;

  const ValueObject();

  T get getOrCrash => value.fold(
      (failedValue) => throw ArgumentError(failedValue), (value) => value);

  bool get isValid => value.isRight();

  @override
  String toString() => 'Value(value: $value)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;
}
