import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:mydeck/core/error/value_failure.dart';
import 'package:mydeck/features/my_deck/domain/entities/my_deck_file.dart';
import 'package:mydeck/features/sign_in/data/models/value_object.dart';
import 'package:mydeck/features/sign_in/helpers/value_validators.dart';

class DeckAvatar extends ValueObject<ImageFile> {
  final Either<ValueFailure<ImageFile>, ImageFile> value;

  factory DeckAvatar(ImageFile mdFile) => DeckAvatar._(right(mdFile));

  factory DeckAvatar.makeNewFromFile(File file) =>
      DeckAvatar._(validateDeckAvatar(file));

  const DeckAvatar._(this.value);
}
