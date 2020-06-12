import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:dio/dio.dart';
import 'package:mydeck/core/error/exception.dart';
import 'package:mydeck/core/injection/dependency_injection.dart';
import 'package:mydeck/features/my_deck/data/models/card_model.dart';

import 'package:mydeck/features/my_deck/data/models/deck_model.dart';
import 'package:mydeck/features/my_deck/data/models/category_model.dart';
import 'package:mydeck/features/my_deck/data/models/deck_with_cards_model.dart';
import 'package:mydeck/features/my_deck/domain/entities/card.dart';
import 'package:mydeck/features/my_deck/domain/entities/deck.dart';
import 'package:mydeck/features/sign_in/data/datasources/user_config.dart';
import 'package:mydeck/features/sign_in/data/datasources/user_datasource.dart';
import 'package:mydeck/features/sign_in/data/models/user_model.dart';
import 'package:mydeck/features/sign_in/helpers/value_validators.dart';
import 'package:mydeck/features/sign_in/presentation/entities/user.dart';

typedef Future<T> HttpRequest<T>();

abstract class MyDeckNetworkDataSource {
  Future<List<DeckWithCardModels>> getAllDecksOfCurrentUser();

  Future<Deck> getDeckWithCardsById(String deckUuid);

  Future<void> updateDeck(DeckModel deckModel);

  Future<void> addDeck(DeckModel deckModel);

  Future<void> deleteDeck(DeckModel deckModel);

  Future<CardModel> getCardById(String cardUuid);

  Future<void> updateCards(List<CardModel> cardModels);

  Future<void> addCards(List<CardModel> cardModels);

  Future<void> deleteCards(List<CardModel> cardModels);

  Future<List<DeckModel>> loadDecksPageForCategory(
      String categoryName, int pageCount);
}

class MyDeckNetworkDataSourceImpl implements MyDeckNetworkDataSource {
  final Dio client;

  MyDeckNetworkDataSourceImpl({
    @required this.client,
  });

  @override
  Future<void> addCards(List<CardModel> cardModels) async {
    try {
      await client.post(
        '/card/insert',
        data: json.encode(cardModels.map((c) => c.toJson()).toList()),
      );
    } on DioError catch (e) {
      throw NetworkException();
    } catch (e) {
      throw NetworkException();
    }
  }

  @override
  Future<void> addDeck(DeckModel deckModel) async {
    try {
      final deckJson = deckModel.toJson();
      deckJson['icon'] = await MultipartFile.fromFile("${deckJson['icon']}",
          filename: "upload.png");
      final formFile = FormData.fromMap(deckJson);
      await client.post(
        '/deck/insert',
        data: formFile,
      );
    } on DioError catch (e) {
      throw NetworkException();
    } catch (e) {
      throw NetworkException();
    }
  }

  @override
  Future<void> deleteCards(List<CardModel> cardModels) async {
    try {
      await client.delete(
        '/card/delete',
        data: json.encode(cardModels.map((c) => c.toJson()).toList()),
      );
    } on DioError {
      throw NetworkException();
    } catch (e) {
      throw NetworkException();
    }
  }

  @override
  Future<void> deleteDeck(DeckModel deckModel) async {
    try {
      await client.delete(
        '/deck/deletebyid/${deckModel.deckId}',
      );
    } on DioError {
      throw NetworkException();
    } catch (e) {
      throw NetworkException();
    }
  }

  @override
  Future<CardModel> getCardById(String cardUuid) async {
    try {
      final response = await client.get(
        '/card/findbyid',
      );

      final CardModel card = CardModel.fromJson(jsonDecode(response.data));
      return card;
    } on DioError {
      throw NetworkException();
    } catch (e) {
      throw NetworkException();
    }
  }

  @override
  Future<Deck> getDeckWithCardsById(String deckUuid) async {
    try {
      final response = await client.get(
        '/deck/findbyid/{$deckUuid}',
      );
      final deckJson = jsonDecode(response.data);
      final deck = DeckModel.fromJson(deckJson['deck']);
      final Map<String, dynamic> aj = deckJson['author']['user'];
      final author = UserModel.fromJson(aj);
      final List<Card> cards = (deckJson['deck']['cards'] as List)
          .map((c) => CardModel.fromJson(c))
          .toList()
          .map((c) => Card.fromModel(c))
          .toList();
      return Deck.library(
          author: author,
          cardsList: cards,
          category: CategoryModel(deck.categoryName),
          deckId: deck.deckId,
          description: deck.description,
          icon: File(deck.icon),
          isPrivate: deck.isPrivate,
          title: deck.title);
    } on DioError {
      throw NetworkException();
    } catch (e) {
      throw NetworkException();
    }
  }

  @override
  Future<void> updateDeck(DeckModel deckModel) async {
    try {
      await client.put(
        '/deck/update',
        data: jsonEncode([deckModel.toJson()]),
      );
    } on DioError {
      throw NetworkException();
    } catch (e) {
      throw NetworkException();
    }
  }

  @override
  Future<void> updateCards(List<CardModel> cardModels) async {
    try {
      await client.put(
        '/card/update',
        data: jsonEncode(cardModels.map((c) => c.toJson()).toList()),
      );
    } on DioError {
      throw NetworkException();
    } catch (e) {
      throw NetworkException();
    }
  }

  @override
  Future<List<DeckModel>> loadDecksPageForCategory(
      String categoryName, int pageCount) async {
    try {
      final response = await client.get(
        '/Deck/ChosenCategoryFeed/$categoryName/$pageCount',
      );
      final List decks = jsonDecode(response.data);
      final mappedDecks =
          decks.map((deck) => DeckModel.fromJson(deck)).toList();

      return mappedDecks;
    } on DioError catch (exception) {
      if (exception.response.statusCode == 404) {
        return [];
      } else {
        throw NetworkException();
      }
    } catch (e) {
      throw NetworkException();
    }
  }

  @override
  Future<List<DeckWithCardModels>> getAllDecksOfCurrentUser() async {
    try {
      final response = await client.get(
        '/Deck/AllUserDecks/${UserConfig.currentUser.userId}',
      );
      final List decks = jsonDecode(response.data);
      final mappedDecks = decks.map((deck) {
        final deckModel = DeckModel.fromJson(deck);
        final cards = (deck["cards"] as List)
            .map((card) => CardModel.fromJson(card))
            .toList();
        return DeckWithCardModels(deckModel, cards);
      }).toList();

      return mappedDecks;
    } on DioError catch (exception) {
      if (exception.response.statusCode == 404) {
        return [];
      } else {
        throw NetworkException();
      }
    } catch (e) {
      throw NetworkException();
    }
  }
}
