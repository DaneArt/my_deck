import 'dart:async';
import 'dart:html';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:mydeck/core/error/failures.dart';
import 'package:mydeck/features/my_deck/data/models/category_model.dart';
import 'package:mydeck/features/my_deck/domain/entities/deck.dart';
import 'package:mydeck/features/my_deck/domain/usecases/load_decks_page_for_category_usecase.dart';
import 'package:meta/meta.dart';

part 'decks_feed_tile_event.dart';
part 'decks_feed_tile_state.dart';

part 'decks_feed_tile_bloc.freezed.dart';

class DecksFeedTileBloc extends Bloc<DecksFeedTileEvent, DecksFeedTileState> {
  final LoadDecksPageForCategoryUsecase _loadDecksPageForCategoryUsecase;
  final CategoryModel _category;

  DecksFeedTileBloc(
      {@required
          LoadDecksPageForCategoryUsecase loadDecksPageForCategoryUsecase,
      @required
          CategoryModel categoryModel})
      : assert(loadDecksPageForCategoryUsecase != null),
        assert(categoryModel != null),
        _category = categoryModel,
        _loadDecksPageForCategoryUsecase = loadDecksPageForCategoryUsecase;

  @override
  DecksFeedTileState get initialState =>
      DecksFeedTileState.initial(category: _category);

  static const int _kDecksPerPageCount = 15;

  @override
  Stream<DecksFeedTileState> mapEventToState(
    DecksFeedTileEvent event,
  ) async* {
    if (event is LoadNewPageForCategory && !state.isLoading) {
      yield state.copyWith(
        isLoading: true,
        loadingPageFailureOrSuccess: none(),
      );
      final result = await _loadDecksPageForCategoryUsecase(Params(
        category: state.categoryModel,
        pageCount: state.decksList.length ~/ _kDecksPerPageCount,
      ));
      yield result.fold(
          (failure) => state.copyWith(
                isLoading: false,
                loadingPageFailureOrSuccess: some(failure),
              ), (result) {
        final decks = List.from(state.decksList);
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
