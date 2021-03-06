import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mydeck/models/dtos/deck_category.dart';
import 'package:mydeck/models/entitites/unique_id.dart';
import 'package:mydeck/models/entitites/user.dart';
import 'package:mydeck/models/value_objects/deck_avatar.dart';
import 'package:mydeck/models/value_objects/deck_description.dart';
import 'package:mydeck/models/value_objects/deck_title.dart';
import 'package:mydeck/models/dtos/user_dto.dart';
import 'package:mydeck/services/datasources/user_config.dart';

import 'card.dart';

part 'deck.freezed.dart';

@freezed
abstract class Deck implements _$Deck {
  const Deck._();

  const factory Deck({
    @required UniqueId deckId,
    @required DeckTitle title,
    @required DeckAvatar avatar,
    @required DeckDescription description,
    @required User author,
    @required DeckCategory category,
    @required bool isPrivate,
    @required bool availableQuickTrain,
    int cardsCount,
    int subscribersCount,
    List<User> subscribers,
    List<Card> cardsList,
  }) = _Deck;

  factory Deck.basic() => Deck(
        author: UserConfig.currentUser.toDomain(),
        avatar: DeckAvatar.fromFile(null),
        category: DeckCategory(categoryName: 'Others'),
        deckId: UniqueId(),
        description: DeckDescription(''),
        isPrivate: false,
        title: DeckTitle(''),
        availableQuickTrain: true,
      );
}
