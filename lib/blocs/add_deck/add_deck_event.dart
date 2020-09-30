part of 'add_deck_bloc.dart';

@freezed
abstract class AddDeckEvent with _$AddDeckEvent {
  factory AddDeckEvent.initFromOnline() = InitFromOnline;

  factory AddDeckEvent.titleChanged(String titleStr) = TitleChanged;
  factory AddDeckEvent.descriptionChanged(String descStr) = DescriptionChanged;
  factory AddDeckEvent.avatarChanged(ImageFile avatar) = AvatarChanged;
  factory AddDeckEvent.changePrivacy() = PrivacyChanged;
  factory AddDeckEvent.quickTrainStateChanged() = QuickTrainStateChanged;
  factory AddDeckEvent.categoryChanged(DeckCategory category) = CategoryChanged;
  factory AddDeckEvent.switchEditStatus() = SwitchEditState;
  factory AddDeckEvent.saveChanges() = SaveChanges;
  factory AddDeckEvent.updateCards({@required List<Card> cards}) = UpdateCards;
}
