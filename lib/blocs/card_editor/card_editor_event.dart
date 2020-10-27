part of 'card_editor_bloc.dart';

@freezed
abstract class CardEditorEvent with _$CardEditorEvent {
  factory CardEditorEvent.deleteCard() = DeleteCard;
  factory CardEditorEvent.addCard() = AddCard;

  factory CardEditorEvent.changeIndex({@required int newIndex}) = ChangeIndex;
  factory CardEditorEvent.changeStatus() = ChangeStatus;
  factory CardEditorEvent.setContent(MDFile file) = SetContent;
  factory CardEditorEvent.backupCubits() = BackupCubits;
  factory CardEditorEvent.undoEdits() = UndoEdits;
  factory CardEditorEvent.saveChangesAndExit() = SaveChangesAndExit;
}
