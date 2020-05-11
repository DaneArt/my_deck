part of 'decks_feed_tile_bloc.dart';

@freezed
abstract class DecksFeedTileState with _$DecksFeedTileState {
  const factory DecksFeedTileState({
    @required CategoryModel categoryModel,
    @required List<Deck> decksList,
    @required Option<StorageFailure> loadingPageFailureOrSuccess,
    @required bool isLoading,
  }) = _DecksFeedTileState;

  factory DecksFeedTileState.initial({@required CategoryModel category}) =>
      DecksFeedTileState(
        categoryModel: category,
        decksList: <Deck>[],
        isLoading: false,
        loadingPageFailureOrSuccess: none(),
      );
}
