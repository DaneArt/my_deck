import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mydeck/features/my_deck/domain/entities/card.dart';
import 'package:mydeck/features/my_deck/domain/entities/card_content.dart';

part 'add_card_bloc.freezed.dart';

part 'add_card_event.dart';

part 'add_card_state.dart';

class AddCardBloc extends Bloc<AddCardEvent, AddCardState> {
  final Card initialCard;

  AddCardBloc(this.initialCard);
  @override
  AddCardState get initialState =>
      AddCardState.initial(initialCard: initialCard);

  @override
  Stream<AddCardState> mapEventToState(AddCardEvent event) async* {
    yield* event.map(rotateCard: (e) async* {
      yield state.copyWith(
        isQuestion: !state.isQuestion,
      );
    }, questionChanged: (e) async* {
      yield state.copyWith(
          card: state.card.copyWith(
        question: e.newQuestion,
      ));
    }, answerChanged: (e) async* {
      yield state.copyWith(
          card: state.card.copyWith(
        answer: e.newAnswer,
      ));
    }, saveChangesAndExit: (e) async* {
      yield state.copyWith(
        saveChangesAndExit: true,
      );
    }, setImageContent: (e) async* {
      yield state.copyWith(
          card: state.isQuestion
              ? state.card
                  .copyWith(question: CardContent.imageContent(image: e.image))
              : state.card
                  .copyWith(answer: CardContent.imageContent(image: e.image)));
    }, setTextContent: (e) async* {
      yield state.copyWith(
          card: state.isQuestion
              ? state.card.copyWith(question: CardContent.textContent(text: ''))
              : state.card.copyWith(answer: CardContent.textContent(text: '')));
    });
  }
}