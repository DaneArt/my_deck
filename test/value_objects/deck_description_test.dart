import 'package:mydeck/features/editor/domain/value_objects/deck_description.dart';
import 'package:test/test.dart';

void main() {
  test('Should return valid object from string', () {
    //do
    final object = DeckDescription("teste");
    //assert
    expect(object.isValid, true);
  });
}
