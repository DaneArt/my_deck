part of 'add_card_bloc.dart';

@freezed
abstract class AddCardEvent with _$AddCardEvent {
  factory AddCardEvent.initWithCard(Card card) = InitWithCard;

  factory AddCardEvent.rotateCard() = RotateCard;

  factory AddCardEvent.questionChanged({@required CardContent newQuestion}) =
      QuestionChanged;

  factory AddCardEvent.answerChanged({@required CardContent newAnswer}) =
      AnswerChanged;

  factory AddCardEvent.saveChangesAndExit() = SaveChangesAndExit;
}
