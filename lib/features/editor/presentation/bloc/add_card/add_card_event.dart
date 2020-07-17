part of 'add_card_bloc.dart';

@freezed
abstract class AddCardEvent with _$AddCardEvent {
  factory AddCardEvent.rotateCard() = RotateCard;
  factory AddCardEvent.deleteCard() = DeleteCard;

  factory AddCardEvent.changeIndex({@required int newIndex}) = ChangeIndex;

  factory AddCardEvent.questionChanged({@required MyDeckFile newQuestion}) =
      QuestionChanged;

  factory AddCardEvent.answerChanged({@required MyDeckFile newAnswer}) =
      AnswerChanged;

  factory AddCardEvent.setTextContent() = SetText;

  factory AddCardEvent.setImageContent({@required File image}) = SetImage;

  factory AddCardEvent.saveChangesAndExit() = SaveChangesAndExit;
}
