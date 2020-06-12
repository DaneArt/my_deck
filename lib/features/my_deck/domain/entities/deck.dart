import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mydeck/core/injection/dependency_injection.dart';
import 'package:mydeck/features/my_deck/data/models/category_model.dart';
import 'package:mydeck/features/my_deck/data/models/deck_model.dart';
import 'package:mydeck/features/sign_in/data/datasources/user_config.dart';
import 'package:mydeck/features/sign_in/data/models/user_model.dart';
import 'package:uuid/uuid.dart';

import 'card.dart';
part 'deck.freezed.dart';

@freezed
abstract class Deck with _$Deck {
  factory Deck.online({
    @required int subscribersCount,
    @required String deckId,
    @required String title,
    @required File icon,
    @required String description,
    @required UserModel author,
    @required CategoryModel category,
    @required bool isPrivate,
    @required int cardsCount,
  }) = DeckOnline;

  factory Deck.basic() => DeckLibrary(
      author: UserConfig.currentUser,
      cardsList: <Card>[],
      category: CategoryModel('others'),
      deckId: Uuid().v4(),
      description: '',
      icon: File(''),
      isPrivate: true,
      title: '');

  factory Deck.library({
    List<UserModel> subscribers,
    @required String deckId,
    @required String title,
    @required File icon,
    @required String description,
    @required UserModel author,
    @required CategoryModel category,
    @required bool isPrivate,
    @required List<Card> cardsList,
  }) = DeckLibrary;

  factory Deck.fromModel(DeckModel model) =>
      model.cardsCount != null || model.subscribersCount != null
          ? Deck.online(
              subscribersCount: model.subscribersCount ?? 0,
              deckId: model.deckId,
              title: model.title,
              icon: File(model.icon),
              description: model.description,
              author: UserModel(model.author, '', '', ''),
              category: CategoryModel(model.categoryName),
              isPrivate: model.isPrivate,
              cardsCount: model.cardsCount ?? 0)
          : Deck.library(
              deckId: model.deckId,
              title: model.title,
              icon: File(model.icon),
              cardsList: [],
              category: CategoryModel(model.categoryName),
              description: model.description,
              subscribers: [],
              isPrivate: model.isPrivate,
              author: UserModel(model.author, '', '', ''));
  @late
  DeckModel get model => this.map(
      online: (d) => DeckModel(
            d.deckId,
            d.title,
            d.icon.path,
            d.description,
            d.category.categoryName,
            d.isPrivate,
            d.author.userId,
            d.subscribersCount,
            d.cardsCount,
          ),
      library: (d) => DeckModel(
          d.deckId,
          d.title,
          d.icon.path,
          d.description,
          d.category.categoryName,
          d.isPrivate,
          d.author.userId,
          d.subscribers.length,
          d.cardsList.length));
}
