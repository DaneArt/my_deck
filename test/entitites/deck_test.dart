import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:mydeck/features/my_deck/data/models/category_model.dart';
import 'package:mydeck/features/my_deck/data/models/deck_model.dart';
import 'package:mydeck/features/my_deck/domain/entities/card.dart';
import 'package:mydeck/features/my_deck/domain/entities/deck.dart';
import 'package:mydeck/features/sign_in/data/models/user_model.dart';

import '../fixtures/fixture.dart';

main() {
  test('Should correctly convert model to entity', () {
    final tDeckModel =
        DeckModel.fromJson(jsonDecode(fixture('deck_model.json')));
    final tDeck = Deck.library(
        deckId: tDeckModel.deckId,
        title: tDeckModel.title,
        icon: tDeckModel.icon,
        cardsList: [],
        category: CategoryModel(tDeckModel.categoryName),
        description: tDeckModel.description,
        subscribers: [],
        isPrivate: tDeckModel.isPrivate,
        author: UserModel(tDeckModel.author, '', '', ''));

    final deckFromModel = Deck.fromModel(tDeckModel);

    expect(tDeck, deckFromModel);
  });
  test('Should correctly convert entity to model', () {
    final tDeckModel =
        DeckModel.fromJson(jsonDecode(fixture('deck_model.json')));
    final tDeck = Deck.library(
        author: UserModel(tDeckModel.author, '', '', ''),
        cardsList: <Card>[],
        category: CategoryModel(tDeckModel.categoryName),
        deckId: tDeckModel.deckId,
        description: tDeckModel.description,
        icon: tDeckModel.icon,
        isPrivate: tDeckModel.isPrivate,
        title: tDeckModel.title);

    final modelFromDeck = tDeck.model;

    expect(tDeckModel, modelFromDeck);
  });
}
