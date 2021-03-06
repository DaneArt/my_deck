part of 'add_deck_bloc.dart';

enum AddDeckGoal { create, update, look }
enum AddDeckStatus { edit, look }

@freezed
abstract class AddDeckState with _$AddDeckState {
  const factory AddDeckState({
    @required bool isLoading,
    @required DeckTitle title,
    @required DeckDescription description,
    @required DeckAvatar avatar,
    @required Deck freezedDeck, //Last saved deck state
    @required bool isShared,
    @required AddDeckStatus status,
    @required AddDeckGoal goal,
    @required DeckCategory category,
    @required bool availableQuickTrain,
    @required User author,
    @required Option<Either<StorageFailure, Unit>> loadingFailureOrSuccess,
    @required Option<Either<StorageFailure, Unit>> savingFailureOrSuccess,
    @required Option<Either<StorageFailure, Unit>> deleteFailureOrSuccess,
    @required bool isPending,
    @required List<Card> cardsList,
  }) = _AddDeckState;

  factory AddDeckState.initial(
          {@required Deck initialDeck,
          @required AddDeckStatus status,
          @required AddDeckGoal goal}) =>
      AddDeckState(
        avatar: initialDeck.avatar,
        freezedDeck: initialDeck,
        cardsList: initialDeck is Deck ? [] : initialDeck.cardsList,
        category: initialDeck.category,
        description: initialDeck.description,
        isShared: !initialDeck.isPrivate,
        title: initialDeck.title,
        author: initialDeck.author,
        isLoading: goal != AddDeckGoal.create,
        loadingFailureOrSuccess: none(),
        availableQuickTrain: initialDeck.availableQuickTrain,
        status: status,
        goal: goal,
        isPending: false,
        savingFailureOrSuccess: none(),
        deleteFailureOrSuccess: none(),
      );
}
