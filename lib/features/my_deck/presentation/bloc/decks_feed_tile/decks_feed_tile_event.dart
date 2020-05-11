part of 'decks_feed_tile_bloc.dart';

@freezed
abstract class DecksFeedTileEvent with _$DecksFeedTileEvent {
  factory DecksFeedTileEvent.loadNewPageForCategory(
      {@required CategoryModel category}) = LoadNewPageForCategory;
}
