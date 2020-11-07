import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:mydeck/models/value_objects/unique_id.dart';
import 'mde_file.dart';
import 'mde_statistics.dart';


part 'mde_card.freezed.dart';

@freezed
abstract class MDECard implements _$MDECard {
  const MDECard._();

  const factory MDECard(
      {@required UniqueId id,
      @required MDEFile answer,
      @required MDEFile question,
      MDEStatistics statistics}) = _MDECard;

  factory MDECard.basic() {
    return MDECard(
        id: UniqueId(),
        answer: MDTextFile(uniqueId: UniqueId(), text: ""),
        question: MDTextFile(uniqueId: UniqueId(), text: ""),
        statistics: MDEStatistics(xp: 0));
  }
}
