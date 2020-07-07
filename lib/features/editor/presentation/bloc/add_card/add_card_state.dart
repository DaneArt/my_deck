part of 'add_card_bloc.dart';

@freezed
abstract class AddCardState with _$AddCardState {
  const factory AddCardState(
      {@required List<Card> sourceCards,
      @required int currentCardIndex,
      @required bool isQuestion,
      @required bool saveChangesAndExit}) = _AddCardState;

  factory AddCardState.initial(
          {@required List<Card> sourceCards, @required int currentCardIndex}) =>
      AddCardState(
        sourceCards: sourceCards,
        currentCardIndex: currentCardIndex,
        isQuestion: true,
        saveChangesAndExit: false,
      );
}
