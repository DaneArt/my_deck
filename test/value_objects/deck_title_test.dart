import 'package:mydeck/features/editor/domain/value_objects/deck_title.dart';
import 'package:test/test.dart';

void main() {
  test('should return valid object when input is valid', () {
    //do
    final title = DeckTitle("Sexy title");
    //assert
    expect(title.isValid, true);
  });
  test('should return failed object when input is short', () {
    //do
    final title = DeckTitle("s");
    //assert
    expect(title.isValid, false);
  });

  test('should return failed object when input is invalid', () {
    //do
    final title = DeckTitle("\$!?");
    //assert
    expect(title.isValid, false);
  });

  test('should throw ArgumentError when getOrCrash invalid object', () {
    //do
    final title = DeckTitle("\$!?");
    bool caught = false;
    try {
      title.getOrCrash();
    } on ArgumentError {
      caught = true;
    }
    //assert
    expect(caught, true);
  });
}
