import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mydeck/models/entitites/mde_card.dart';

part 'ce_card_state.freezed.dart';

@freezed
abstract class CECardState with _$CECardState {
  const factory CECardState({
    @required MDECard card,
    @required bool isQuestion,
  }) = _CECardState;

  factory CECardState.initial({@required MDECard card}) =>
      CECardState(card: card, isQuestion: true);
}
