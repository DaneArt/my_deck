import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:dio/dio.dart';
import 'package:mydeck/core/error/exception.dart';
import 'package:mydeck/features/my_deck/data/models/card_model.dart';

import 'package:mydeck/features/my_deck/data/models/deck_model.dart';
import 'package:mydeck/features/my_deck/data/models/category_model.dart';
import 'package:mydeck/features/my_deck/data/models/deck_with_cards_model.dart';
import 'package:mydeck/features/my_deck/domain/entities/card.dart';
import 'package:mydeck/features/my_deck/domain/entities/deck.dart';
import 'package:mydeck/features/sign_in/data/datasources/user_service.dart';
import 'package:mydeck/features/sign_in/data/models/user_model.dart';
import 'package:mydeck/features/sign_in/helpers/value_validators.dart';
import 'package:mydeck/features/sign_in/presentation/entities/user.dart';

typedef Future<T> HttpRequest<T>();

abstract class MyDeckNetworkDataSource {
  Future<UserModel> getUserById(String userId);

  Future<List<DeckModel>> getAllDecks();

  Future<List<DeckWithCardModels>> getAllDecksOfCurrentUser();

  Future<Deck> getDeckWithCardsById(String deckUuid);

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

  Future<List<DeckModel>> loadDecksPageForCategory(
      String categoryName, int pageCount);
}

class MyDeckNetworkDataSourceImpl implements MyDeckNetworkDataSource {
  final Dio client;

  static const String _kBaseUrl =
      'http://mydeck-001-site1.dtempurl.com/mydeckapi';

  MyDeckNetworkDataSourceImpl({
    @required this.client,
  });

  bool _validateTokens() => validateToken(UserService.accessToken).isRight();
  Future<T> _makeRequest<T>(HttpRequest<T> request,
      [int requestCount = 1]) async {
    try {
      if (_validateTokens()) {
        return request();
      } else {
        final refreshResult = await UserService.refreshTokens();
        if (refreshResult.isSome() && requestCount == 4) {
          throw NetworkException();
        }
        return _makeRequest(request, ++requestCount);
      }
    } on DioError catch (e) {
      if (e.response.statusCode == 404) {
        rethrow;
      } else if (e.response.statusCode == 401) {
        final refreshResult = await UserService.refreshTokens();
        if (refreshResult.isSome() && requestCount == 4) {
          throw NetworkException();
        }
        return _makeRequest(request, ++requestCount);
      }
    } catch (exception) {
      rethrow;
    }
  }

  @override
  Future<void> addCard(CardModel cardModel) async {
    _makeRequest(() async {
      final response = await client.post(
        _kBaseUrl + '/card/insert',
        data: jsonEncode([cardModel.toJson()]),
        options: Options(headers: {
          HttpHeaders.authorizationHeader: 'Bearer ' + UserService.accessToken
        }),
      );
      if (response.statusCode != 200) {
        throw NetworkException();
      }
    });
  }

  @override
  Future<void> addCards(List<CardModel> cardModels) async {
    _makeRequest(() async {
      final response = await client.post(
        _kBaseUrl + '/card/insert',
        data: json.encode(cardModels.map((c) => c.toJson()).toList()),
        options: Options(headers: {
          HttpHeaders.authorizationHeader: 'Bearer ' + UserService.accessToken
        }),
      );
      if (response.statusCode != 200) {
        throw NetworkException();
      }
    });
  }

  @override
  Future<void> addDeck(DeckModel deckModel) async {
    _makeRequest(() async {
      final response = await client.post(
        _kBaseUrl + '/deck/insert',
        data: jsonEncode([deckModel.toJson()]),
        options: Options(headers: {
          HttpHeaders.authorizationHeader: 'Bearer ' + UserService.accessToken
        }),
      );
      if (response.statusCode != 200) {
        throw NetworkException();
      }
    });
  }

  @override
  Future<void> deleteCard(CardModel cardModel) async {
    _makeRequest(() async {
      final response = await client.delete(
        _kBaseUrl + '/card/deletebyid/${cardModel.cardId}',
        options: Options(headers: {
          HttpHeaders.authorizationHeader: 'Bearer ' + UserService.accessToken
        }),
      );
      if (response.statusCode != 200) {
        throw NetworkException();
      }
    });
  }

  @override
  Future<void> deleteCards(List<CardModel> cardModels) async {
    _makeRequest(() async {
      final response = await client.delete(
        _kBaseUrl + '/card/delete',
        data: json.encode(cardModels.map((c) => c.toJson()).toList()),
        options: Options(headers: {
          HttpHeaders.authorizationHeader: 'Bearer ' + UserService.accessToken
        }),
      );
      if (response.statusCode != 200) {
        throw NetworkException();
      }
    });
  }

  @override
  Future<void> deleteDeck(DeckModel deckModel) async {
    _makeRequest(() async {
      final response = await client.delete(
        _kBaseUrl + '/deck/deletebyid/${deckModel.deckId}',
        options: Options(headers: {
          HttpHeaders.authorizationHeader: 'Bearer ' + UserService.accessToken
        }),
      );
      if (response.statusCode != 200) {
        throw NetworkException();
      }
    });
  }

  @override
  Future<List<CardModel>> getAllCards() async {
    var makeRequest = _makeRequest<List<CardModel>>(() async {
      final response = await client.get(
        _kBaseUrl + '/card/findAll',
        options: Options(headers: {
          HttpHeaders.authorizationHeader: 'Bearer ' + UserService.accessToken
        }),
      );
      if (response.statusCode != 200) {
        throw NetworkException();
      }
      final List cardsArray = jsonDecode(response.data);
      final List<CardModel> cards =
          cardsArray.map((c) => CardModel.fromJson(c)).toList();
      return cards;
    });
    return makeRequest;
  }

  @override
  Future<List<DeckModel>> getAllDecks() async {
    return _makeRequest<List<DeckModel>>(() async {
      final response = await client.get(
        _kBaseUrl + '/deck/findAll',
        options: Options(headers: {
          HttpHeaders.authorizationHeader: 'Bearer ' + UserService.accessToken
        }),
      );
      if (response.statusCode != 200) {
        throw NetworkException();
      }
      final List decksArray = jsonDecode(response.data);
      final List<DeckModel> decks =
          decksArray.map((c) => DeckModel.fromJson(c)).toList();
      return decks;
    });
  }

  @override
  Future<CardModel> getCardById(String cardUuid) async {
    return _makeRequest<CardModel>(() async {
      final response = await client.get(
        _kBaseUrl + '/card/findbyid',
        options: Options(headers: {
          HttpHeaders.authorizationHeader: 'Bearer ' + UserService.accessToken
        }),
      );
      if (response.statusCode != 200) {
        throw NetworkException();
      }
      final CardModel card = CardModel.fromJson(jsonDecode(response.data));
      return card;
    });
  }

  @override
  Future<List<CardModel>> getCardsForDeck(String deckUuid) {
    // TODO: implement getCardsForDeck
    return null;
  }

  @override
  Future<Deck> getDeckWithCardsById(String deckUuid) async {
    return _makeRequest<Deck>(() async {
      final response = await client.get(
        _kBaseUrl + '/deck/findbyid/{$deckUuid}',
        options: Options(headers: {
          HttpHeaders.authorizationHeader: 'Bearer ' + UserService.accessToken
        }),
      );
      if (response.statusCode != 200) {
        throw NetworkException();
      }
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
    });
  }

  @override
  Future<void> updateCard(CardModel cardModel) async {
    _makeRequest(() async {
      final response = await client.put(
        _kBaseUrl + '/card/update',
        data: jsonEncode([cardModel.toJson()]),
        options: Options(headers: {
          HttpHeaders.authorizationHeader: 'Bearer ' + UserService.accessToken
        }),
      );
      if (response.statusCode != 200) {
        throw NetworkException();
      }
    });
  }

  @override
  Future<void> updateDeck(DeckModel deckModel) async {
    _makeRequest(() async {
      final response = await client.put(
        _kBaseUrl + '/deck/update',
        data: jsonEncode([deckModel.toJson()]),
        options: Options(headers: {
          HttpHeaders.authorizationHeader: 'Bearer ' + UserService.accessToken
        }),
      );
      if (response.statusCode != 200) {
        throw NetworkException();
      }
    });
  }

  @override
  Future<void> updateCards(List<CardModel> cardModels) async {
    _makeRequest(() async {
      final response = await client.put(
        _kBaseUrl + '/card/update',
        data: jsonEncode(cardModels.map((c) => c.toJson()).toList()),
        options: Options(headers: {
          HttpHeaders.authorizationHeader: 'Bearer ' + UserService.accessToken
        }),
      );
      if (response.statusCode != 200) {
        throw NetworkException();
      }
    });
  }

  @override
  Future<List<DeckWithCardModels>> getAllDecksOfCurrentUser() async {
    return _makeRequest<List<DeckWithCardModels>>(() async {
      try {
        final response = await client.get(
          _kBaseUrl + '/Deck/AllUserDecks/${UserService.currentUser.userId}',
          options: Options(headers: {
            HttpHeaders.authorizationHeader: 'Bearer ' + UserService.accessToken
          }),
        );
        if (response.statusCode != 200) {
          throw NetworkException();
        }
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
    });
  }

  @override
  Future<List<DeckModel>> loadDecksPageForCategory(
          String categoryName, int pageCount) =>
      _makeRequest<List<DeckModel>>(() async {
        try {
          final response = await client.get(
            '$_kBaseUrl/Deck/ChosenCategoryFeed/$categoryName/$pageCount',
            options: Options(headers: {
              HttpHeaders.authorizationHeader:
                  'Bearer ' + UserService.accessToken
            }),
          );

          if (response.statusCode != 200) {
            throw NetworkException();
          }
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
      });

  @override
  Future<UserModel> getUserById(String userId) {
    return _makeRequest<UserModel>(() async {
      try {
        final response = await client.get(
          _kBaseUrl + '/User/FindById/${UserService.currentUser.userId}',
          options: Options(headers: {
            HttpHeaders.authorizationHeader: 'Bearer ' + UserService.accessToken
          }),
        );
        if (response.statusCode != 200) {
          throw NetworkException();
        }
        return UserModel.fromJson(response.data['value']);
      } on DioError catch (exception) {
        throw NetworkException();
      } catch (e) {
        throw NetworkException();
      }
    });
  }
}
