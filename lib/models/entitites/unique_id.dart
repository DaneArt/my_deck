import 'package:dartz/dartz.dart';
import 'package:mydeck/errors/value_failure.dart';
import 'package:mydeck/models/value_objects/value_object.dart';
import 'package:mydeck/utils/value_validators.dart';
import 'package:uuid/uuid.dart';

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const UniqueId._(this.value);
  factory UniqueId() => UniqueId._(right(Uuid().v4()));
  factory UniqueId.fromString(String value) =>
      UniqueId._(validateUniqueId(value));
}
