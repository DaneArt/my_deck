import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mydeck/models/entitites/card.dart';
import 'package:mydeck/models/entitites/md_file.dart';
import 'package:mydeck/models/entitites/unique_id.dart';
import 'package:mydeck/utils/file_factory.dart';

part 'card_editor_bloc.freezed.dart';

part 'card_editor_event.dart';

part 'card_editor_state.dart';

class CardEditorBloc extends Bloc<CardEditorEvent, CardEditorState> {
  final int currentCardIndex;
  final List<Card> sourceCards;

  CardEditorBloc({@required this.currentCardIndex, @required this.sourceCards})
      : super(CardEditorState.initial(
            currentCardIndex: currentCardIndex, sourceCards: sourceCards));

  @override
  Stream<CardEditorState> mapEventToState(CardEditorEvent event) async* {
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
          ? state.sourceCards[state.currentCardIndex].copyWith(
              question: ImageFile(
                file: e.image,
                uniqueId: UniqueId(),
              ),
            )
          : state.sourceCards[state.currentCardIndex].copyWith(
              answer: ImageFile(
                file: e.image,
                uniqueId: UniqueId(),
              ),
            );
      state.sourceCards[state.currentCardIndex] = card;
      yield state.copyWith(sourceCards: List.from(state.sourceCards));
    }, setTextContent: (e) async* {
      final card = state.isQuestion
          ? state.sourceCards[state.currentCardIndex].copyWith(
              question: TextFile(
                file: await TextFileFactory().create(UniqueId().getOrCrash),
                uniqueId: UniqueId(),
              ),
            )
          : state.sourceCards[state.currentCardIndex].copyWith(
              answer: TextFile(
                file: await TextFileFactory().create(UniqueId().getOrCrash),
                uniqueId: UniqueId(),
              ),
            );
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
    }, addCard: (e) async* {
      yield state.copyWith(
          currentCardIndex: state.currentCardIndex + 1,
          sourceCards: List.from(state.sourceCards..add(Card.basic())));
    });
  }
}
