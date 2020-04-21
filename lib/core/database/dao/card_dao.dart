import 'package:mydeck/features/my_deck/data/models/card_model.dart';
import 'package:floor/floor.dart';

@dao
abstract class CardDao {
  @Query('SELECT * FROM CardModel')
  Future<List<CardModel>> findAllCards();

  @Query('SELECT * FROM CardModel')
  Stream<List<CardModel>> findAllCardsAsStream();

  @Query('SELECT * FROM CardModel WHERE cardId = :id')
  Future<CardModel> findCardById(String id);

  @Query('SELECT * FROM CardModel WHERE parentDeckId = :deckId')
  Future<List<CardModel>> findCardsForDeck(String deckId);

  @insert
  Future<List<int>> insertCards(List<CardModel> cards);

  @insert
  Future<int> insertCard(CardModel card);

  @update
  Future<int> updateCard(CardModel card);

  @update
  Future<int> updateCards(List<CardModel> cards);

  @delete
  Future<int> deleteCard(CardModel card);
  @delete
  Future<int> deleteCards(List<CardModel> cards);
}
