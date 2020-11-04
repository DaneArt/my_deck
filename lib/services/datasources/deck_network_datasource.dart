import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:mydeck/errors/exception.dart';
import 'package:mydeck/models/dtos/card_dto.dart';

import 'package:mydeck/models/dtos/deck_dto.dart';
import 'package:mydeck/models/dtos/deck_dto_with_user_model.dart';
import 'package:mydeck/models/dtos/user_dto.dart';

import 'package:mydeck/services/datasources/user_config.dart';
import 'package:mydeck/services/usecases/get_decks_for_train_usecase.dart';

typedef Future<T> HttpRequest<T>();

abstract class DeckNetworkDataSource {
  Future<List<DeckDto>> getAllDecksOfCurrentUser();
  Future<List<DeckDto>> getDecksForTrain();

  Future<DeckDtoWithUserModel> getDeckById(String deckUuid);

  Future<void> updateDeck(DeckDto deckDto);

  Future<void> addDeck(DeckDto deckDto);

  Future<void> deleteDeck(DeckDto deckDto);

  Future<List<DeckDto>> loadDecksPageForCategory(
      String categoryName, int pageCount);
}

class DeckNetworkDataSourceImpl implements DeckNetworkDataSource {
  final Dio client;

  DeckNetworkDataSourceImpl({
    @required this.client,
  });

  @override
  Future<void> addDeck(DeckDto deckDto) async {
    try {
      await client.post(
        '/deck/insert',
        data: jsonEncode(deckDto.toJson()),
      );
    } on DioError catch (e) {
      if (e.type == DioErrorType.CONNECT_TIMEOUT ||
          e.type == DioErrorType.RECEIVE_TIMEOUT) {
        throw NetworkTimeoutException(
          e.message,
        );
      }
      throw NetworkException(e.message);
    } catch (e) {
      throw NetworkException();
    }
  }

  @override
  Future<List<DeckDto>> getDecksForTrain() async {
    try {
      final response = await client.post(
        '/deck/FindDecksForTrain/${UserConfig.currentUser.userId}',
      );

      return (response.data as List).map((e) => DeckDto.fromJson(e));
    } on DioError catch (e) {
      if (e.type == DioErrorType.CONNECT_TIMEOUT ||
          e.type == DioErrorType.RECEIVE_TIMEOUT) {
        throw NetworkTimeoutException(
          e.message,
        );
      }
      throw NetworkException(e.message);
    } catch (e) {
      throw NetworkException();
    }
  }

  @override
  Future<void> deleteDeck(DeckDto deckDto) async {
    try {
      return client.delete(
        '/deck/deletebyid/${deckDto.id}',
      );
    } on DioError catch (e) {
      if (e.type == DioErrorType.CONNECT_TIMEOUT ||
          e.type == DioErrorType.RECEIVE_TIMEOUT) {
        throw NetworkTimeoutException(
          e.message,
        );
      }
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
      final author = UserDto.fromJson(deckJson['author']);

      return DeckDtoWithUserModel(deck, author);
    } on DioError catch (e) {
      if (e.type == DioErrorType.CONNECT_TIMEOUT ||
          e.type == DioErrorType.RECEIVE_TIMEOUT) {
        throw NetworkTimeoutException(
          e.message,
        );
      }
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
        data: jsonEncode(deckDto.toJson()),
      );
    } on DioError catch (e) {
      if (e.type == DioErrorType.CONNECT_TIMEOUT ||
          e.type == DioErrorType.RECEIVE_TIMEOUT) {
        throw NetworkTimeoutException(
          e.message,
        );
      }
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
      if (exception.type == DioErrorType.CONNECT_TIMEOUT ||
          exception.type == DioErrorType.RECEIVE_TIMEOUT) {
        throw NetworkTimeoutException(
          exception.message,
        );
      }
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
      if (exception.type == DioErrorType.CONNECT_TIMEOUT ||
          exception.type == DioErrorType.RECEIVE_TIMEOUT) {
        throw NetworkTimeoutException(
          exception.message,
        );
      }
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
