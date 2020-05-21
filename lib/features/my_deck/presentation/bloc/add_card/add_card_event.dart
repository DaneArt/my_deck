part of 'add_card_bloc.dart';

@freezed
abstract class AddCardEvent with _$AddCardEvent {
  factory AddCardEvent.rotateCard() = RotateCard;

  factory AddCardEvent.questionChanged({@required CardContent newQuestion}) =
      QuestionChanged;

  factory AddCardEvent.answerChanged({@required CardContent newAnswer}) =
      AnswerChanged;

  factory AddCardEvent.setTextContent() = SetText;

  factory AddCardEvent.setImageContent({@required File image}) = SetImage;

  factory AddCardEvent.saveChangesAndExit() = SaveChangesAndExit;
}
