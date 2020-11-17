import 'package:bloc_test/bloc_test.dart';
import 'package:mydeck/blocs/card_editor/card_editor_bloc.dart';
import 'package:mydeck/models/entitites/card.dart';

void main() {
  final tCards = [Card.basic()];
  final twoCards = List<Card>.from(tCards)..add(Card.basic());
  blocTest(
    'onCreate does nothing',
    build: () => CardEditorBloc(currentCardIndex: 0, sourceCards: tCards),
    act: (blc) {},
    expect: [],
  );
  blocTest(
      'should add card to source list and increase current index when AddCadEvent called',
      build: () => CardEditorBloc(currentCardIndex: 0, sourceCards: tCards),
      act: (cubit) => (cubit as CardEditorBloc).add(CardEditorEvent.addCard()),
      expect: [
        CardEditorState.initial(
            sourceCards: List.from(tCards)..add(Card.basic()),
            currentCardIndex: 1)
      ]);
  blocTest('should change index properly',
      build: () => CardEditorBloc(currentCardIndex: 0, sourceCards: twoCards),
      act: (cubit) => (cubit as CardEditorBloc)
          .add(CardEditorEvent.changeIndex(newIndex: 1)),
      expect: [
        CardEditorState.initial(sourceCards: twoCards, currentCardIndex: 1)
      ]);
  blocTest('should decrease index on delete last card',
      build: () => CardEditorBloc(
            currentCardIndex: 1,
            sourceCards: List<Card>.from(tCards)..add(Card.basic()),
          ),
      act: (bloc) => (bloc as CardEditorBloc).add(CardEditorEvent.deleteCard()),
      expect: [
        CardEditorState.initial(sourceCards: tCards, currentCardIndex: 0)
      ]);
}
