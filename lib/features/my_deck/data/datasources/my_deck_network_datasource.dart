import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:chopper/chopper.dart';
import 'package:dio/dio.dart';
import 'package:mydeck/core/error/exception.dart';
import 'package:mydeck/features/my_deck/data/models/card_model.dart';

import 'package:mydeck/features/my_deck/data/models/deck_model.dart';
import 'package:mydeck/features/my_deck/domain/entities/card.dart';
import 'package:mydeck/features/my_deck/domain/entities/deck.dart';
import 'package:mydeck/features/sign_in/data/datasources/user_service.dart';
import 'package:mydeck/features/sign_in/presentation/entities/user.dart';

abstract class MyDeckNetworkDataSource {
  Future<List<DeckModel>> getAllDecks();

  Future<List<Deck>> getAllDecksOfCurrentUser();

  Future<DeckModel> getDeckById(String deckUuid);

  Future<void> updateDeck(DeckModel deckModel);

  Future<void> addDeck(DeckModel deckModel);

  Future<void> deleteDeck(DeckModel deckModel);

  Future<List<CardModel>> getAllCards();

  Future<CardModel> getCardById(String cardUuid);

  Future<List<CardModel>> getCardsForDeck(String deckUuid);

  Future<void> updateCard(CardModel cardModel);

  Future<void> updateCards(List<CardModel> cardModels);

  Future<void> addCard(CardModel cardModel);

  Future<void> addCards(List<CardModel> cardModels);

  Future<void> deleteCard(CardModel cardModel);

  Future<void> deleteCards(List<CardModel> cardModels);
}

class MyDeckNetworkDataSourceImpl implements MyDeckNetworkDataSource {
  final Dio client;
  final UserService userService;
  static const String _kBaseUrl =
      'http://nypifok-001-site1.gtempurl.com/mydeckapi';

  MyDeckNetworkDataSourceImpl(
      {@required this.client, @required this.userService});

  @override
  Future<void> addCard(CardModel cardModel) async {
    final response = await client.post(
      _kBaseUrl + '/card/insert',
      data: jsonEncode([cardModel.toJson()]),
      options: Options(
          headers: {HttpHeaders.authorizationHeader: userService.accessToken}),
    );
    if (response.statusCode != 200) {
      throw NetworkException();
    }
  }

  @override
  Future<void> addCards(List<CardModel> cardModels) async {
    final response = await client.post(
      _kBaseUrl + '/card/insert',
      data: json.encode(cardModels.map((c) => c.toJson()).toList()),
      options: Options(
          headers: {HttpHeaders.authorizationHeader: userService.accessToken}),
    );
    if (response.statusCode != 200) {
      throw NetworkException();
    }
  }

  @override
  Future<void> addDeck(DeckModel deckModel) async {
    final response = await client.post(
      _kBaseUrl + '/deck/insert',
      data: jsonEncode([deckModel.toJson()]),
      options: Options(
          headers: {HttpHeaders.authorizationHeader: userService.accessToken}),
    );
    if (response.statusCode != 200) {
      throw NetworkException();
    }
  }

  @override
  Future<void> deleteCard(CardModel cardModel) async {
    final response = await client.delete(
      _kBaseUrl + '/card/deletebyid/${cardModel.cardId}',
      options: Options(
          headers: {HttpHeaders.authorizationHeader: userService.accessToken}),
    );
    if (response.statusCode != 200) {
      throw NetworkException();
    }
  }

  @override
  Future<void> deleteCards(List<CardModel> cardModels) {
    // TODO: implement deleteCards
    return null;
  }

  @override
  Future<void> deleteDeck(DeckModel deckModel) async {
    final response = await client.delete(
      _kBaseUrl + '/deck/deletebyid/${deckModel.deckId}',
      options: Options(headers: {
        HttpHeaders.authorizationHeader: await userService.accessToken
      }),
    );
    if (response.statusCode != 200) {
      throw NetworkException();
    }
  }

  @override
  Future<List<CardModel>> getAllCards() async {
    final response = await client.get(
      _kBaseUrl + '/card/findAll',
      options: Options(headers: {
        HttpHeaders.authorizationHeader: await userService.accessToken
      }),
    );
    if (response.statusCode != 200) {
      throw NetworkException();
    }
    final List cardsArray = jsonDecode(response.data);
    final List<CardModel> cards =
        cardsArray.map((c) => CardModel.fromJson(c)).toList();
    return cards;
  }

  @override
  Future<List<DeckModel>> getAllDecks() async {
    final response = await client.get(
      _kBaseUrl + '/deck/findAll',
      options: Options(headers: {
        HttpHeaders.authorizationHeader: await userService.accessToken
      }),
    );
    if (response.statusCode != 200) {
      throw NetworkException();
    }
    final List decksArray = jsonDecode(response.data);
    final List<DeckModel> decks =
        decksArray.map((c) => DeckModel.fromJson(c)).toList();
    return decks;
  }

  @override
  Future<CardModel> getCardById(String cardUuid) async {
    final response = await client.get(
      _kBaseUrl + '/card/findbyid',
      options: Options(headers: {
        HttpHeaders.authorizationHeader: await userService.accessToken
      }),
    );
    if (response.statusCode != 200) {
      throw NetworkException();
    }
    final CardModel card = CardModel.fromJson(jsonDecode(response.data));
    return card;
  }

  @override
  Future<List<CardModel>> getCardsForDeck(String deckUuid) {
    // TODO: implement getCardsForDeck
    return null;
  }

  @override
  Future<DeckModel> getDeckById(String deckUuid) async {
    final response = await client.get(
      _kBaseUrl + '/deck/findbyid',
      options: Options(headers: {
        HttpHeaders.authorizationHeader: await userService.accessToken
      }),
    );
    if (response.statusCode != 200) {
      throw NetworkException();
    }
    final DeckModel deck = DeckModel.fromJson(jsonDecode(response.data));
    return deck;
  }

  @override
  Future<void> updateCard(CardModel cardModel) async {
    final response = await client.put(
      _kBaseUrl + '/card/update',
      data: jsonEncode([cardModel.toJson()]),
      options: Options(
          headers: {HttpHeaders.authorizationHeader: userService.accessToken}),
    );
    if (response.statusCode != 200) {
      throw NetworkException();
    }
  }

  @override
  Future<void> updateDeck(DeckModel deckModel) async {
    final response = await client.put(
      _kBaseUrl + '/deck/update',
      data: jsonEncode([deckModel.toJson()]),
      options: Options(
          headers: {HttpHeaders.authorizationHeader: userService.accessToken}),
    );
    if (response.statusCode != 200) {
      throw NetworkException();
    }
  }

  @override
  Future<void> updateCards(List<CardModel> cardModels) async {
    final response = await client.put(
      _kBaseUrl + '/card/update',
      data: jsonEncode(cardModels.map((c) => c.toJson()).toList()),
      options: Options(headers: {
        HttpHeaders.authorizationHeader: await userService.accessToken
      }),
    );
    if (response.statusCode != 200) {
      throw NetworkException();
    }
  }

  @override
  Future<List<Deck>> getAllDecksOfCurrentUser() async {
    final response = await client.get(
      _kBaseUrl +
          '/deck/AllCurrentUserDecksWithCards/${userService.currentUser.username}',
      options: Options(
          headers: {HttpHeaders.authorizationHeader: userService.accessToken}),
    );
    if (response.statusCode != 200) {
      throw NetworkException();
    }
    final List decks = jsonDecode(response.data);

    final mappedDecks = decks.map((dJ) {
      final deck = Deck.fromModel(DeckModel.fromJson(dJ));
      final cards = (dJ["Cards"] as List)
          .map((c) => Card.fromModel(CardModel.fromJson(c)))
          .toList();
      return deck.copyWith(cardsList: cards);
    }).toList();

    return mappedDecks;
  }
}
