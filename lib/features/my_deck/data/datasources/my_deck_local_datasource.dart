import 'package:floor/floor.dart';
import 'package:mydeck/core/database/my_deck_database.dart';
import 'package:mydeck/core/error/exception.dart';
import 'package:mydeck/features/my_deck/data/models/card_model.dart';
import 'package:mydeck/features/my_deck/data/models/category_model.dart';
import 'package:mydeck/features/my_deck/data/models/deck_model.dart';
import 'package:rxdart/rxdart.dart';

abstract class MyDeckLocalDataSource {
  Future<List<DeckModel>> getAllDecks();

  Future<List<CardModel>> getAllCards();

  Future<List<CardModel>> getCardsForDeck(String deckId);

  Future<CardModel> getCardById(String id);

  Future<DeckModel> getDeckById(String id);

  Future<CategoryModel> getCategoryById(String id);

  Future<void> addCards(List<CardModel> cards);

  Future<void> updateCard(CardModel card);

  Future<void> updateCards(List<CardModel> cards);

  Future<void> deleteCards(List<CardModel> cards);

  Future<void> updateDeck(DeckModel deck);

  Future<void> deleteDeck(DeckModel deckModel);

  Future<void> addDeck(DeckModel deck);

  Future<Observable<List<DeckModel>>> getAllDecksAsStream();

  Future<Observable<List<CardModel>>> getAllCardsAsStream();
}

class MyDeckLocalDataSourceImpl implements MyDeckLocalDataSource {
  MyDeckDatabase _db;

  Future<MyDeckDatabase> get _database async {
    if (_db != null) return _db;

    _db = await _initDatabase();
    return _db;
  }

  Future<MyDeckDatabase> _initDatabase() => $FloorMyDeckDatabase
          .databaseBuilder('flutter_database.db')
          .addCallback(Callback(onCreate: (db, version) {
        db.delete('CategoryModel');
        for (CategoryModel category in kDefaultCategories) {
          db.insert(
              'CategoryModel', {'category_name': '${category.categoryName}'});
        }
      })).build();

  @override
  Future<List<CardModel>> getAllCards() async {
    final dao = (await _database).cardDao;
    final cards = await dao.findAllCards();
    if (cards == null) {
      throw CacheException();
    } else {
      return cards;
    }
  }

  @override
  Future<List<DeckModel>> getAllDecks() async {
    final dao = (await _database).deckDao;
    final decks = await dao.findAllDecks();
    if (decks == null) {
      throw CacheException();
    } else {
      return decks;
    }
  }

  @override
  Future<CardModel> getCardById(String id) async {
    final dao = (await _database).cardDao;
    final card = await dao.findCardById(id);
    if (card == null) {
      throw CacheException();
    } else {
      return card;
    }
  }

  @override
  Future<List<CardModel>> getCardsForDeck(String deckId) async {
    final dao = (await _database).cardDao;
    final cards = await dao.findCardsForDeck(deckId);
    if (cards == null) {
      throw CacheException();
    } else {
      return cards;
    }
  }

  @override
  Future<DeckModel> getDeckById(String id) async {
    final dao = (await _database).deckDao;
    final deck = await dao.findDeckById(id);
    if (deck == null) {
      throw CacheException();
    } else {
      return deck;
    }
  }

  @override
  Future<void> updateCard(CardModel card) async {
    try {
      final dao = (await _database).cardDao;
      return dao.updateCard(card);
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> updateCards(List<CardModel> cards) async {
    try {
      final dao = (await _database).cardDao;
      return dao.updateCards(cards);
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> updateDeck(DeckModel deck) async {
    try {
      final dao = (await _database).deckDao;
      return dao.updateDeck(deck);
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> addDeck(DeckModel deck) async {
    try {
      final dao = (await _database).deckDao;
      await dao.insertDeck(deck);
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<CategoryModel> getCategoryById(String id) async {
    final dao = (await _database).categoryDao;
    final category = await dao.findCategoryByName(id);
    if (category == null) {
      throw CacheException();
    } else {
      return category;
    }
  }

  @override
  Future<void> addCards(List<CardModel> cards) async {
    try {
      final dao = (await _database).cardDao;
      await dao.insertCards(cards);
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> deleteCards(List<CardModel> cards) async {
    try {
      final dao = (await _database).cardDao;
      await dao.deleteCards(cards);
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> deleteDeck(DeckModel deckModel) async {
    try {
      final dao = (await _database).deckDao;
      await dao.deleteDeck(deckModel);
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<Observable<List<DeckModel>>> getAllDecksAsStream() async {
    try {
      final dao = (await _database).deckDao;
      return Observable(dao.findAllDecksAsStream());
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<Observable<List<CardModel>>> getAllCardsAsStream() async {
    try {
      final dao = (await _database).cardDao;
      return Observable(dao.findAllCardsAsStream());
    } catch (e) {
      throw CacheException();
    }
  }
}
