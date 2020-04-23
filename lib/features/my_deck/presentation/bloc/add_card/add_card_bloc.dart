import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mydeck/features/my_deck/domain/entities/card.dart';
import 'package:mydeck/features/my_deck/domain/entities/card_content.dart';

part 'add_card_bloc.freezed.dart';

part 'add_card_event.dart';

part 'add_card_state.dart';

class AddCardBloc extends Bloc<AddCardEvent, AddCardState> {
  @override
  AddCardState get initialState => AddCardState.initial();

  @override
  Stream<AddCardState> mapEventToState(AddCardEvent event) async* {
    yield* event.map(initWithCard: (e) async* {
      yield state.copyWith(card: e.card, isQuestion: true);
    }, rotateCard: (e) async* {
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
    });
  }
}
