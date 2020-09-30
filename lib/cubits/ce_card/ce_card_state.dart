import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mydeck/models/entitites/card.dart';

part 'ce_card_state.freezed.dart';

@freezed
abstract class CECardState with _$CECardState {
  const factory CECardState({
    @required Card card,
    @required bool isQuestion,
  }) = _CECardState;

  factory CECardState.initial({@required Card card}) =>
      CECardState(card: card, isQuestion: true);
}
