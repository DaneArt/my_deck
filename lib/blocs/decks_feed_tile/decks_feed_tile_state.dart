part of 'decks_feed_tile_bloc.dart';

@freezed
abstract class FeedTileState with _$FeedTileState {
  const factory FeedTileState({
    @required DeckCategory categoryModel,
    @required List<MDEDeck> decksList,
    @required Option<StorageFailure> loadingPageFailureOrSuccess,
    @required bool isLoading,
  }) = _DecksFeedTileState;

  factory FeedTileState.initial({@required DeckCategory category}) =>
      FeedTileState(
        categoryModel: category,
        decksList: <MDEDeck>[],
        isLoading: false,
        loadingPageFailureOrSuccess: none(),
      );
}
