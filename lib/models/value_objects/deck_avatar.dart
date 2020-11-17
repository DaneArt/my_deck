import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:mydeck/errors/value_failure.dart';
import 'package:mydeck/models/entitites/mde_file.dart';

import 'package:mydeck/models/value_objects/value_object.dart';
import 'package:mydeck/utils/value_validators.dart';

class DeckAvatar extends ValueObject<MDImageFile> {
  final Either<ValueFailure<MDImageFile>, MDImageFile> value;

  factory DeckAvatar(MDImageFile mdFile) => DeckAvatar._(right(mdFile));

  factory DeckAvatar.fromFile(File file) =>
      DeckAvatar._(validateDeckAvatar(file));

  const DeckAvatar._(this.value);
}
