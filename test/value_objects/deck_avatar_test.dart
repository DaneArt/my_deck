import 'dart:io';

import 'package:mydeck/features/editor/domain/value_objects/deck_avatar.dart';
import 'package:test/test.dart';

void main() {
  test('should return failed object if file is null', () {
    //do
    final avatar = DeckAvatar(null);
    //assert
    expect(avatar.isValid, false);
  });

  test('should return true object if file exists', () {
    //do
    final avatar = DeckAvatar(File(
        "/media/daniil/Development/Projects/Flutter/my_deck/test/value_objects/deck_avatar_test.dart"));
    //assert
    expect(avatar.isValid, true);
  });
}
