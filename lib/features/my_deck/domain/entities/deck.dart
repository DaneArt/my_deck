import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mydeck/features/editor/domain/value_objects/deck_avatar.dart';
import 'package:mydeck/features/editor/domain/value_objects/deck_description.dart';
import 'package:mydeck/features/editor/domain/value_objects/deck_title.dart';
import 'package:mydeck/features/my_deck/data/models/category_model.dart';
import 'package:mydeck/features/my_deck/domain/entities/unique_id.dart';
import 'package:mydeck/features/sign_in/data/datasources/user_config.dart';
import 'package:mydeck/features/sign_in/data/models/user_model.dart';

import 'card.dart';

part 'deck.freezed.dart';

@freezed
abstract class Deck implements _$Deck {
  const Deck._();

  factory Deck.online({
    @required int subscribersCount,
    @required UniqueId deckId,
    @required DeckTitle title,
    @required DeckAvatar avatar,
    @required DeckDescription description,
    @required UserModel author,
    @required CategoryModel category,
    @required bool isPrivate,
    @required int cardsCount,
  }) = DeckOnline;

  factory Deck.basic() => DeckLibrary(
      author: UserConfig.currentUser,
      cardsList: <Card>[],
      category: CategoryModel('Others'),
      deckId: UniqueId(),
      description: DeckDescription(''),
      avatar: DeckAvatar(''),
      isPrivate: true,
      title: DeckTitle(''));

  factory Deck.library({
    List<UserModel> subscribers,
    @required UniqueId deckId,
    @required DeckTitle title,
    @required DeckAvatar avatar,
    @required DeckDescription description,
    @required UserModel author,
    @required CategoryModel category,
    @required bool isPrivate,
    @required List<Card> cardsList,
  }) = DeckLibrary;
}
