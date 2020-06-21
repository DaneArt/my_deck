import 'dart:convert';

import 'package:test/test.dart';
import 'package:mydeck/features/my_deck/data/models/card_model.dart';

import '../fixtures/fixture.dart';

main() {
  final CardDto tCardModel = CardDto('test_Id', 'string', 'string', 2, 0, 2,
      DateTime(0).toString(), 'test_parent_id');
  test('should properly convert json to model', () {
    final cardFromJson =
        CardDto.fromJson(jsonDecode(fixture('card_model.json')));

    expect(tCardModel, cardFromJson);
  });
  test('should properly convert model to json', () {
    final cardJson = tCardModel.toJson();
    expect(cardJson, jsonDecode(fixture('card_model.json')));
  });
}
