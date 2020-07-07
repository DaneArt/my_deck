
import 'package:dartz/dartz.dart';
import 'package:mydeck/core/error/value_failure.dart';
import 'package:mydeck/features/sign_in/data/models/value_object.dart';
import 'package:mydeck/features/sign_in/helpers/value_validators.dart';

class DeckAvatar extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory DeckAvatar(String input) {
    return DeckAvatar._(
      validateDeckAvatar(input),
    );
  }

  const DeckAvatar._(this.value);
}
