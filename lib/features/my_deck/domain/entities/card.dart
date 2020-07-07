import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:mydeck/features/my_deck/domain/entities/unique_id.dart';

import 'card_content.dart';

part 'card.freezed.dart';

@freezed
abstract class Card implements _$Card {
  const Card._();

  const factory Card({
    @required UniqueId cardId,
    @required CardContent answer,
    @required CardContent question,
  }) = _Card;

  factory Card.basic() => Card(
        cardId: UniqueId(),
        answer: CardContent.noContent(),
        question: CardContent.noContent(),
      );
}
