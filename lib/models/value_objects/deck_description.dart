
import 'package:dartz/dartz.dart';
import 'package:mydeck/core/error/value_failure.dart';
import 'package:mydeck/features/sign_in/data/models/value_object.dart';
import 'package:mydeck/features/sign_in/helpers/value_validators.dart';

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
