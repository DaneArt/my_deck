import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:mydeck/core/error/exception.dart';
import 'package:mydeck/features/my_deck/data/models/card_dto.dart';

import 'package:mydeck/features/my_deck/data/models/deck_dto.dart';
import 'package:mydeck/features/my_deck/data/models/deck_dto_with_user_model.dart';

import 'package:mydeck/features/sign_in/data/datasources/user_config.dart';
import 'package:mydeck/features/sign_in/data/models/user_model.dart';

typedef Future<T> HttpRequest<T>();

abstract class MyDeckNetworkDataSource {
  Future<List<DeckDto>> getAllDecksOfCurrentUser();

  Future<DeckDtoWithUserModel> getDeckById(String deckUuid);

  Future<void> updateDeck(DeckDto DeckDto);

  Future<void> addDeck(DeckDto DeckDto);

  Future<void> deleteDeck(DeckDto DeckDto);

  Future<List<DeckDto>> loadDecksPageForCategory(
      String categoryName, int pageCount);
}

class MyDeckNetworkDataSourceImpl implements MyDeckNetworkDataSource {
  final Dio client;

  MyDeckNetworkDataSourceImpl({
    @required this.client,
  });

  @override
  Future<void> addDeck(DeckDto deckDto) async {
    try {
      await client.post(
        '/deck/insert',
        data: FormData.fromMap(deckDto.toJson()),
      );
    } on DioError catch (e) {
      throw NetworkException();
    } catch (e) {
      throw NetworkException();
    }
  }

  @override
  Future<void> deleteDeck(DeckDto deckDto) async {
    try {
      await client.delete(
        '/deck/deletebyid/${deckDto.deckId}',
      );
    } on DioError {
      throw NetworkException();
    } catch (e) {
      throw NetworkException();
    }
  }

  @override
  Future<DeckDtoWithUserModel> getDeckById(String deckUuid) async {
    try {
      final response = await client.get(
        '/deck/findbyid/{$deckUuid}',
      );
      final deckJson = jsonDecode(response.data);
      final deck = DeckDto.fromJson(deckJson['deck']);
      final Map<String, dynamic> aj = deckJson['author']['user'];
      final author = UserModel.fromJson(aj);

      return DeckDtoWithUserModel(deck, author);
    } on DioError {
      throw NetworkException();
    } catch (e) {
      throw NetworkException();
    }
  }

  @override
  Future<void> updateDeck(DeckDto deckDto) async {
    try {
      await client.put(
        '/deck/update',
        data: FormData.fromMap(deckDto.toJson()),
      );
    } on DioError {
      throw NetworkException();
    } catch (e) {
      throw NetworkException();
    }
  }

  @override
  Future<List<DeckDto>> loadDecksPageForCategory(
      String categoryName, int pageCount) async {
    try {
      final response = await client.get(
        '/Deck/ChosenCategoryFeed/$categoryName/$pageCount',
      );
      final List decks = jsonDecode(response.data);
      final mappedDecks = decks.map((deck) => DeckDto.fromJson(deck)).toList();

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
  Future<List<DeckDto>> getAllDecksOfCurrentUser() async {
    try {
      final response = await client.get(
        '/Deck/AllUserDecks/${UserConfig.currentUser.userId}',
      );
      final List decks = jsonDecode(response.data);
      final mappedDecks = decks.map((deck) => DeckDto.fromJson(deck)).toList();

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
