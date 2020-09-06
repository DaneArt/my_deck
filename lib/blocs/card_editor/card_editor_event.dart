part of 'card_editor_bloc.dart';

@freezed
abstract class CardEditorEvent with _$CardEditorEvent {
  factory CardEditorEvent.rotateCard() = RotateCard;
  factory CardEditorEvent.deleteCard() = DeleteCard;
  factory CardEditorEvent.addCard() = AddCard;

  factory CardEditorEvent.changeIndex({@required int newIndex}) = ChangeIndex;

  factory CardEditorEvent.questionChanged({@required MDFile newQuestion}) =
      QuestionChanged;

  factory CardEditorEvent.answerChanged({@required MDFile newAnswer}) =
      AnswerChanged;

  factory CardEditorEvent.setTextContent() = SetText;

  factory CardEditorEvent.setImageContent({@required File image}) = SetImage;

  factory CardEditorEvent.saveChangesAndExit() = SaveChangesAndExit;
}
