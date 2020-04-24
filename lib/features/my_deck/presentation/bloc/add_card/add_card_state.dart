part of 'add_card_bloc.dart';

@freezed
abstract class AddCardState with _$AddCardState {
  const factory AddCardState(
      {@required Card card,
      @required bool isQuestion,
      @required bool saveChangesAndExit}) = _AddCardState;

  factory AddCardState.initial() => AddCardState(
        card: Card.createDefault(),
        isQuestion: true,
        saveChangesAndExit: false,
      );
}
