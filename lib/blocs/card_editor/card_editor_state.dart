part of 'card_editor_bloc.dart';

@freezed
abstract class CardEditorState with _$CardEditorState {
  const factory CardEditorState(
      {@required List<Card> sourceCards,
      @required int currentCardIndex,
      @required bool isQuestion,
      bool rebuild,
      @required bool saveChangesAndExit}) = _AddCardState;

  factory CardEditorState.initial(
          {@required List<Card> sourceCards, @required int currentCardIndex}) =>
      CardEditorState(
        sourceCards: sourceCards,
        currentCardIndex: currentCardIndex,
        isQuestion: true,
        rebuild: true,
        saveChangesAndExit: false,
      );
}
