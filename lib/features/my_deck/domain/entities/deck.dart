import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mydeck/features/editor/domain/value_objects/deck_avatar.dart';
import 'package:mydeck/features/editor/domain/value_objects/deck_description.dart';
import 'package:mydeck/features/editor/domain/value_objects/deck_title.dart';
import 'package:mydeck/features/my_deck/data/models/deck_category.dart';
import 'package:mydeck/features/my_deck/domain/entities/unique_id.dart';
import 'package:mydeck/features/sign_in/data/datasources/user_config.dart';
import 'package:mydeck/features/sign_in/data/models/user_model.dart';

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
    @required UserModel author,
    @required DeckCategory category,
    @required bool isPrivate,
    int cardsCount,
    int subscribersCount,
    List<UserModel> subscribers,
    List<Card> cardsList,
  }) = _Deck;

  factory Deck.basic() => Deck(
      author: null,
      avatar: null,
      category: null,
      deckId: null,
      description: null,
      isPrivate: null,
      title: null);
}
