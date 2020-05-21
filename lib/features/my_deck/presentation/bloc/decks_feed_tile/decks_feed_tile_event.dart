part of 'decks_feed_tile_bloc.dart';

@freezed
abstract class FeedTileEvent with _$FeedTileEvent {
  factory FeedTileEvent.loadNewPageForCurrentCategory() =
      LoadNewPageForCurrentCategory;
}
