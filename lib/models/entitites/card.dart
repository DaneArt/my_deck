import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:mydeck/models/entitites/unique_id.dart';

import 'md_file.dart';

part 'card.freezed.dart';

@freezed
abstract class Card implements _$Card {
  const Card._();

  const factory Card({
    @required UniqueId id,
    @required MDFile answer,
    @required MDFile question,
  }) = _Card;

  factory Card.basic() => Card(
      id: UniqueId(),
      answer: TextFile(uniqueId: UniqueId()),
      question: TextFile(uniqueId: UniqueId()));
}
