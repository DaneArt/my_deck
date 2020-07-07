part of 'add_deck_bloc.dart';

@freezed
abstract class AddDeckEvent with _$AddDeckEvent {
  factory AddDeckEvent.initFromOnline() = InitFromOnline;
  factory AddDeckEvent.saveChanges() = SaveDeckChanges;
  factory AddDeckEvent.saveDraft() = SaveDraft;
  factory AddDeckEvent.discardChangesAndExit() = DiscardChanges;
  factory AddDeckEvent.deleteDeck() = DeleteDeck;
  factory AddDeckEvent.titleChanged(String titleStr) = TitleChanged;
  factory AddDeckEvent.descriptionChanged(String descStr) = DescriptionChanged;
  factory AddDeckEvent.avatarChanged(String avatar) = AvatarChanged;
  factory AddDeckEvent.privacyChanged(bool isShared) = PrivacyChanged;
  factory AddDeckEvent.categoryChanged(CategoryModel category) =
      CategoryChanged;
  factory AddDeckEvent.updateCards({@required List<Card> cards}) = UpdateCards;
}
