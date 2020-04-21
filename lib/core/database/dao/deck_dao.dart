import 'package:mydeck/features/my_deck/data/models/deck_model.dart';
import 'package:floor/floor.dart';

@dao
abstract class DeckDao {
  @Query('SELECT * FROM DeckModel')
  Future<List<DeckModel>> findAllDecks();

  @Query('SELECT * FROM DeckModel')
  Stream<List<DeckModel>> findAllDecksAsStream();

  @Query('SELECT * FROM DeckModel WHERE deck_id = :id')
  Future<DeckModel> findDeckById(String id);

  @insert
  Future<List<int>> insertDecks(List<DeckModel> decks);

  @insert
  Future<int> insertDeck(DeckModel deck);

  @update
  Future<int> updateDeck(DeckModel deck);

  @update
  Future<int> updateDecks(List<DeckModel> decks);

  @delete
  Future<int> deleteDeck(DeckModel deck);

  @delete
  Future<int> deleteDecks(List<DeckModel> decks);
}
