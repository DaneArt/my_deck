part of 'decks_feed_tile_bloc.dart';

@freezed
abstract class FeedTileState with _$FeedTileState {
  const factory FeedTileState({
    @required DeckCategory categoryModel,
    @required List<Deck> decksList,
    @required Option<StorageFailure> loadingPageFailureOrSuccess,
    @required bool isLoading,
  }) = _DecksFeedTileState;

  factory FeedTileState.initial({@required DeckCategory category}) =>
      FeedTileState(
        categoryModel: category,
        decksList: <Deck>[],
        isLoading: false,
        loadingPageFailureOrSuccess: none(),
      );
}
