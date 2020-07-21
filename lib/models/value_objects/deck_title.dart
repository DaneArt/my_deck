import 'package:dartz/dartz.dart';
import 'package:mydeck/errors/value_failure.dart';
import 'package:mydeck/models/value_objects/value_object.dart';
import 'package:mydeck/utils/value_validators.dart';

class DeckTitle extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory DeckTitle(String input) {
    assert(input != null);
    return DeckTitle._(validateDeckTitle(input));
  }

  DeckTitle._(this.value);
}
