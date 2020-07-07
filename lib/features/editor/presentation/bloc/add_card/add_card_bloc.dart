import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mydeck/features/my_deck/domain/entities/card.dart';
import 'package:mydeck/features/my_deck/domain/entities/card_content.dart';

part 'add_card_bloc.freezed.dart';

part 'add_card_event.dart';

part 'add_card_state.dart';

class AddCardBloc extends Bloc<AddCardEvent, AddCardState> {
  final int currentCardIndex;
  final List<Card> sourceCards;

  AddCardBloc({@required this.currentCardIndex, @required this.sourceCards});

  @override
  AddCardState get initialState => AddCardState.initial(
      currentCardIndex: currentCardIndex, sourceCards: sourceCards);

  @override
  Stream<AddCardState> mapEventToState(AddCardEvent event) async* {
    yield* event.map(rotateCard: (e) async* {
      yield state.copyWith(
        isQuestion: !state.isQuestion,
      );
    }, questionChanged: (e) async* {
      final card = state.sourceCards[state.currentCardIndex].copyWith(
        question: e.newQuestion,
      );
      state.sourceCards[state.currentCardIndex] = card;
      yield state.copyWith(sourceCards: List.from(state.sourceCards));
    }, answerChanged: (e) async* {
      final card = state.sourceCards[state.currentCardIndex].copyWith(
        answer: e.newAnswer,
      );
      state.sourceCards[state.currentCardIndex] = card;
      yield state.copyWith(sourceCards: List.from(state.sourceCards));
    }, saveChangesAndExit: (e) async* {
      yield state.copyWith(
        saveChangesAndExit: true,
      );
    }, setImageContent: (e) async* {
      final card = state.isQuestion
          ? state.sourceCards[state.currentCardIndex]
              .copyWith(question: CardContent.imageContent(image: e.image))
          : state.sourceCards[state.currentCardIndex]
              .copyWith(answer: CardContent.imageContent(image: e.image));
      state.sourceCards[state.currentCardIndex] = card;
      yield state.copyWith(sourceCards: List.from(state.sourceCards));
    }, setTextContent: (e) async* {
      final card = state.isQuestion
          ? state.sourceCards[state.currentCardIndex]
              .copyWith(question: CardContent.textContent(text: ''))
          : state.sourceCards[state.currentCardIndex]
              .copyWith(answer: CardContent.textContent(text: ''));
      state.sourceCards[state.currentCardIndex] = card;
      yield state.copyWith(sourceCards: List.from(state.sourceCards));
    }, changeIndex: (e) async* {
      if (e.newIndex == state.sourceCards.length) {
        final newCard = Card.basic();
        state.sourceCards.add(newCard);
      }
      yield state.copyWith(
          currentCardIndex: e.newIndex,
          sourceCards: List.from(state.sourceCards));
    }, deleteCard: (e) async* {
      final list = List<Card>.from(state.sourceCards);
      list.removeAt(state.currentCardIndex);
      if (list.length == 0) {
        yield state.copyWith(saveChangesAndExit: true, sourceCards: list);
      } else if (list.length == 1) {
        yield state.copyWith(currentCardIndex: 0, sourceCards: list);
      } else if (state.currentCardIndex == 0) {
        yield state.copyWith(
            currentCardIndex: state.currentCardIndex + 1,
            sourceCards: List.from(list));
      } else {
        yield state.copyWith(
            currentCardIndex: state.currentCardIndex - 1,
            sourceCards: List.from(list));
      }
    });
  }
}
