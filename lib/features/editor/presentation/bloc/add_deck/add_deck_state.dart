part of 'add_deck_bloc.dart';

@freezed
abstract class AddDeckState with _$AddDeckState {
  const factory AddDeckState({
    @required bool isLoading,
    @required DeckTitle title,
    @required DeckDescription description,
    @required DeckAvatar avatar,
    @required bool isShared,
    @required CategoryModel category,
    @required UserModel author,
    @required List<Card> cardsList,
    @required Option<Either<StorageFailure, Deck>> saveFailureOrSuccessOption,
    @required Deck initialDeck,
  }) = _AddDeckState;

  factory AddDeckState.initial({@required Deck initialDeck}) => AddDeckState(
        avatar: initialDeck.avatar,
        cardsList: initialDeck is DeckOnline
            ? []
            : (initialDeck as DeckLibrary).cardsList,
        category: initialDeck.category,
        description: initialDeck.description,
        isShared: !initialDeck.isPrivate,
        title: initialDeck.title,
        saveFailureOrSuccessOption: none(),
        author: initialDeck.author,
        initialDeck: initialDeck,
        isLoading: false,
      );
}
