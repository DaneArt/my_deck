import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mydeck/blocs/add_deck/add_deck_bloc.dart';
import 'package:mydeck/cubits/ce_card/ce_card_cubit.dart';
import 'package:mydeck/models/dtos/file_dto.dart';
import 'package:mydeck/models/entitites/card.dart';
import 'package:mydeck/models/entitites/md_file.dart';

part 'card_editor_bloc.freezed.dart';

part 'card_editor_event.dart';

part 'card_editor_state.dart';

class CardEditorBloc extends Bloc<CardEditorEvent, CardEditorState> {
  CardEditorBloc(
      {@required int currentCardIndex,
      @required List<Card> sourceCards,
      @required AddDeckStatus status,
      @required AddDeckGoal goal})
      : super(CardEditorState.initial(
            currentCardIndex: currentCardIndex,
            sourceCards: sourceCards,
            status: status,
            goal: goal));

  @override
  Stream<CardEditorState> mapEventToState(CardEditorEvent event) async* {
    yield* event.map(
      saveChangesAndExit: (e) async* {
        yield state.copyWith(saveChangesAndExit: true, rebuild: false);
      },
      changeIndex: (e) async* {
        yield state.copyWith(
            currentCardIndex: e.newIndex,
            cardCubits: List.from(state.cardCubits),
            rebuild: false);
      },
      deleteCard: (e) async* {
        final cubitList = List<CECardCubit>.from(state.cardCubits);

        cubitList.removeAt(state.currentCardIndex);

        if (cubitList.length == 0) {
          yield state.copyWith(
              saveChangesAndExit: true, cardCubits: cubitList, rebuild: true);
        } else if (cubitList.length == 1) {
          yield state.copyWith(
              cardCubits: cubitList, currentCardIndex: 0, rebuild: true);
        } else if (state.currentCardIndex == 0) {
          yield state.copyWith(
              cardCubits: cubitList,
              currentCardIndex: state.currentCardIndex + 1,
              rebuild: true);
        } else {
          yield state.copyWith(
              cardCubits: cubitList,
              currentCardIndex: state.currentCardIndex - 1,
              rebuild: true);
        }
      },
      addCard: (e) async* {
        final newCard = Card.basic();
        yield state.copyWith(
            currentCardIndex: state.currentCardIndex + 1,
            cardCubits: List.from(
              state.cardCubits
                ..add(
                  CECardCubit(card: newCard),
                ),
            ),
            rebuild: true);
      },
      setContent: (e) async* {
        state.cardCubits[state.currentCardIndex].setContent(e.file);
        yield state.copyWith(rebuild: true);
      },
      backupCubits: (e) async* {
        yield state.copyWith(
            backedUpCubits: List.from(state.cardCubits), rebuild: true);
      },
      undoEdits: (e) async* {
        yield state.copyWith(
            cardCubits: List.from(state.backedUpCubits), rebuild: true);
      },
      changeStatus: (e) async* {
        yield state.copyWith(
          status: state.status == AddDeckStatus.edit
              ? AddDeckStatus.look
              : AddDeckStatus.edit,
        );
      },
    );
  }
}
