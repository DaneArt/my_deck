import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:mydeck/blocs/add_deck/add_deck_bloc.dart';
import 'package:mydeck/cubits/ce_card/ce_card_cubit.dart';
import 'package:mydeck/models/dtos/file_dto.dart';
import 'package:mydeck/models/entitites/mde_card.dart';
import 'package:mydeck/models/entitites/mde_file.dart';

part 'card_editor_bloc.freezed.dart';

part 'card_editor_event.dart';

part 'card_editor_state.dart';

class CardEditorBloc extends Bloc<CardEditorEvent, CardEditorState> {
  CardEditorBloc(
      {@required int currentCardIndex,
      @required List<MDECard> sourceCards,
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
        yield state.copyWith(saveChangesAndExit: true, );
      },
      changeIndex: (e) async* {
        Logger().d("index changed: ${e.newIndex} ");
        yield state.copyWith(
            currentCardIndex: e.newIndex,
            cardCubits: List.from(state.cardCubits),
            );
      },
      deleteCard: (e) async* {
        final cubitList = List<CECardCubit>.from(state.cardCubits);

        cubitList.removeAt(state.currentCardIndex);

        if (cubitList.length == 0) {
          yield state.copyWith(
              saveChangesAndExit: true, cardCubits: cubitList, );
        } else if (cubitList.length == 1) {
          yield state.copyWith(
              cardCubits: cubitList, currentCardIndex: 0, );
        } else if (state.currentCardIndex == 0) {
          yield state.copyWith(
              cardCubits: cubitList,
              currentCardIndex: state.currentCardIndex + 1,
              );
        } else {
          yield state.copyWith(
              cardCubits: cubitList,
              currentCardIndex: state.currentCardIndex - 1,
              );
        }
      },
      addCard: (e) async* {
        final newCard = MDECard.basic();
        yield state.copyWith(
            currentCardIndex: state.cardCubits.length,
            cardCubits: List.from(
              state.cardCubits
                ..add(
                  CECardCubit(card: newCard),
                ),
            ),
            );
      },
      setContent: (e) async* {
        state.cardCubits[state.currentCardIndex].setContent(e.file);
        yield state.copyWith();
      },
      backupCubits: (e) async* {
        yield state.copyWith(
            backedUpCubits: List.from(state.cardCubits), );
      },
      undoEdits: (e) async* {
        yield state.copyWith(
            cardCubits: List.from(state.backedUpCubits), );
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
