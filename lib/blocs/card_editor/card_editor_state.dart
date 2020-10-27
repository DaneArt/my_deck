part of 'card_editor_bloc.dart';

@freezed
abstract class CardEditorState with _$CardEditorState {
  const factory CardEditorState(
      {@required int currentCardIndex,
      @required List<CECardCubit> cardCubits,
      @required List<CECardCubit> backedUpCubits,
      @required bool rebuild,
      @required AddDeckStatus status,
      @required AddDeckGoal goal,
      @required bool saveChangesAndExit}) = _CardEditorState;

  factory CardEditorState.initial({
    @required List<Card> sourceCards,
    @required int currentCardIndex,
    @required AddDeckStatus status,
    @required AddDeckGoal goal,
  }) =>
      CardEditorState(
        goal: goal,
        currentCardIndex: currentCardIndex,
        saveChangesAndExit: false,
        backedUpCubits:
            sourceCards.map((card) => CECardCubit(card: card)).toList(),
        cardCubits: sourceCards.map((card) => CECardCubit(card: card)).toList(),
        rebuild: true,
        status: status,
      );
}
