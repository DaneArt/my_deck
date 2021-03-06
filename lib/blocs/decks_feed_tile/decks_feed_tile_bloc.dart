import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:mydeck/errors/failures.dart';
import 'package:mydeck/models/dtos/deck_category.dart';
import 'package:mydeck/models/entitites/deck.dart';
import 'package:mydeck/services/usecases/load_decks_page_for_category_usecase.dart';

part 'decks_feed_tile_event.dart';
part 'decks_feed_tile_state.dart';

part 'decks_feed_tile_bloc.freezed.dart';

class FeedTileBloc extends Bloc<FeedTileEvent, FeedTileState> {
  final LoadDecksPageForCategoryUsecase _loadDecksPageForCategoryUsecase;
  final DeckCategory _category;

  FeedTileBloc(
      {@required
          LoadDecksPageForCategoryUsecase loadDecksPageForCategoryUsecase,
      @required
          DeckCategory categoryModel})
      : assert(loadDecksPageForCategoryUsecase != null),
        assert(categoryModel != null),
        _category = categoryModel,
        _loadDecksPageForCategoryUsecase = loadDecksPageForCategoryUsecase,
        super(FeedTileState.initial(category: categoryModel));

  final int _kDecksPerPage = 15;

  @override
  Stream<FeedTileState> mapEventToState(
    FeedTileEvent event,
  ) async* {
    if (event is LoadNewPageForCurrentCategory &&
        !state.isLoading &&
        state.decksList.length % _kDecksPerPage == 0) {
      print('Load page:${state.decksList.length ~/ _kDecksPerPage}');
      yield state.copyWith(
        isLoading: true,
        loadingPageFailureOrSuccess: none(),
      );
      final result = await _loadDecksPageForCategoryUsecase(Params(
        category: state.categoryModel,
        pageCount: state.decksList.length ~/ _kDecksPerPage,
      ));
      yield result.fold(
          (failure) => state.copyWith(
                isLoading: false,
                loadingPageFailureOrSuccess: some(failure),
              ), (result) {
        final decks = List<Deck>.from(state.decksList);
        decks.addAll(result);
        return state.copyWith(
          isLoading: false,
          loadingPageFailureOrSuccess: none(),
          decksList: decks,
        );
      });
    }
  }
}
