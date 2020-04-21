import 'package:chopper/chopper.dart';
import 'package:mydeck/core/error/exception.dart';
import 'package:mydeck/features/my_deck/data/datasources/retrofit/my_deck_api.dart';
import 'package:mydeck/features/my_deck/data/models/card_model.dart';

import 'package:mydeck/features/my_deck/data/models/deck_model.dart';

abstract class MyDeckNetworkDataSource {
  Future<List<DeckModel>> getAllDecks();

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
  final ChopperClient client;

  MyDeckApiService get server => client.getService<MyDeckApiService>();

  MyDeckNetworkDataSourceImpl(this.client);

  @override
  Future<void> addCard(CardModel cardModel) async {
    final response = await server.addCards([cardModel]);
    if (!response.isSuccessful) {
      throw NetworkException();
    }
  }

  @override
  Future<void> addCards(List<CardModel> cardModels) async {
    final response = await server.addCards(cardModels);
    if (!response.isSuccessful) {
      throw NetworkException();
    }
  }

  @override
  Future<void> addDeck(DeckModel deckModel) async {
    final response = await server.addDecks([deckModel]);
    if (!response.isSuccessful) {
      throw NetworkException();
    }
  }

  @override
  Future<void> deleteCard(CardModel cardModel) async {
    final response = await server.deleteCardById(cardModel.cardId);
    if (!response.isSuccessful) {
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
    final response = await server.deleteDeckById(deckModel.deckId);
    if (!response.isSuccessful) {
      throw NetworkException();
    }
  }

  @override
  Future<List<CardModel>> getAllCards() async {
    final response = await server.getAllCards();
    if (!response.isSuccessful) {
      throw NetworkException();
    }
    return response.body;
  }

  @override
  Future<List<DeckModel>> getAllDecks() async {
    final response = await server.getAllDecks();
    if (!response.isSuccessful) {
      throw NetworkException();
    }
    return response.body;
  }

  @override
  Future<CardModel> getCardById(String cardUuid) async {
    final response = await server.getCardById(cardUuid);
    if (!response.isSuccessful) {
      throw NetworkException();
    }
    return response.body;
  }

  @override
  Future<List<CardModel>> getCardsForDeck(String deckUuid) {
    // TODO: implement getCardsForDeck
    return null;
  }

  @override
  Future<DeckModel> getDeckById(String deckUuid) async {
    final response = await server.getDeckById(deckUuid);
    if (!response.isSuccessful) {
      throw NetworkException();
    }
    return response.body;
  }

  @override
  Future<void> updateCard(CardModel cardModel) async {
    final response = await server.updateCards([cardModel]);
    if (!response.isSuccessful) {
      throw NetworkException();
    }
  }

  @override
  Future<void> updateDeck(DeckModel deckModel) async {
    final response = await server.updateDecks([deckModel]);
    if (!response.isSuccessful) {
      throw NetworkException();
    }
  }

  @override
  Future<void> updateCards(List<CardModel> cardModels) async {
    final response = await server.updateCards(cardModels);
    if (!response.isSuccessful) {
      throw NetworkException();
    }
  }
}
