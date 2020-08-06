part of 'add_deck_bloc.dart';

@freezed
abstract class AddDeckState with _$AddDeckState {
  const factory AddDeckState({
    @required bool isLoading,
    @required DeckTitle title,
    @required DeckDescription description,
    @required DeckAvatar avatar,
    @required bool isShared,
    @required DeckCategory category,
    @required bool availableQuickTrain,
    @required UserModel author,
    @required Option<Either<StorageFailure, Unit>> loadingFailureOrSuccess,
    @required List<Card> cardsList,
  }) = _AddDeckState;

  factory AddDeckState.initial({@required Deck initialDeck}) => AddDeckState(
        avatar: initialDeck.avatar,
        cardsList: initialDeck is Deck ? [] : initialDeck.cardsList,
        category: initialDeck.category,
        description: initialDeck.description,
        isShared: !initialDeck.isPrivate,
        title: initialDeck.title,
        author: initialDeck.author,
        isLoading: false,
        loadingFailureOrSuccess: none(),
        availableQuickTrain: initialDeck.availableQuickTrain,
      );
}
