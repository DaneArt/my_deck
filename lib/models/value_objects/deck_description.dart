import 'package:dartz/dartz.dart';
import 'package:mydeck/errors/value_failure.dart';
import 'package:mydeck/models/value_objects/value_object.dart';
import 'package:mydeck/utils/value_validators.dart';

class DeckDescription extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory DeckDescription(String input) {
    assert(input != null);
    return DeckDescription._(
      validateDeckDescription(input),
    );
  }

  const DeckDescription._(this.value);
}
