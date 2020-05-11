import 'dart:convert';

import 'package:mydeck/features/my_deck/data/models/deck_model.dart';
import 'package:test/test.dart';
import 'package:mydeck/features/my_deck/data/models/card_model.dart';

import '../fixtures/fixture.dart';

main() {
  final DeckModel tDeckModel = DeckModel('deck_test_Id', "deck test title",
      'fake icon', 'test description', 'Others', false, 'Some_author_id');
  test('should properly convert json to model', () {
    final deckFromJson =
        DeckModel.fromJson(jsonDecode(fixture('deck_model.json')));

    expect(tDeckModel, deckFromJson);
  });
  test('should properly convert model to json', () {
    final deckJson = tDeckModel.toJson();
    expect(deckJson, jsonDecode(fixture('deck_model.json')));
  });
}
