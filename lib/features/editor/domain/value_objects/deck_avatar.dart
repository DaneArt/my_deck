import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:mydeck/core/error/value_failure.dart';
import 'package:mydeck/features/my_deck/domain/entities/my_deck_file.dart';
import 'package:mydeck/features/sign_in/data/models/value_object.dart';
import 'package:mydeck/features/sign_in/helpers/value_validators.dart';

class DeckAvatar extends ValueObject<MyDeckFile> {
  @override
  final Either<ValueFailure<MyDeckFile>, MyDeckFile> value;

  factory DeckAvatar(File input) {
    return DeckAvatar._(validateDeckAvatar(input));
  }

  factory DeckAvatar.fromMyDeckFile(MyDeckFile file) =>
      DeckAvatar._(right(file));

  const DeckAvatar._(this.value);
}
