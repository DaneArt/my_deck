import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import 'package:meta/meta.dart';
import 'package:mydeck/features/my_deck/domain/entities/deck.dart';
import 'package:mydeck/features/my_deck/domain/usecases/get_all_current_user_decks_usecase.dart';
import 'package:mydeck/features/my_deck/domain/usecases/get_decks_for_train_usecase.dart';
import 'package:mydeck/features/my_deck/domain/usecases/usecase.dart';
import 'package:mydeck/features/my_deck/presentation/bloc/train/train_bloc.dart';

import 'library_event.dart';
import 'library_state.dart';

const String CacheFailureMessage = 'Cache error.';
const String NoDecksMessage = "No decks.";

class LibraryBloc extends Bloc<LibraryEvent, LibraryState> {
  final GetAllCurrentUserDecksUsecase getAllCurrentUserDecks;
  final GetDecksForTrain getDecksForTrain;

  LibraryBloc(
      {@required this.getDecksForTrain,
      @required GetAllCurrentUserDecksUsecase allUserDecks})
      : assert(allUserDecks != null),
        getAllCurrentUserDecks = allUserDecks;

  @override
  LibraryState get initialState => LibraryState.initial();

  @override
  Stream<LibraryState> mapEventToState(
    LibraryEvent event,
  ) async* {
    yield* event.map(getAllUsersDecks: (e) async* {
      yield state.copyWith(
        isLoading: true,
      );
      final decks = await getAllCurrentUserDecks(NoParams());
      yield decks.fold(
          (failure) => state.copyWith(
                loadingFailureOrSuccess: some(left(CacheFailureMessage)),
                isLoading: false,
              ), (deckList) {
        return state.copyWith(
          decksSourceList: deckList.reversed.toList(),
          trainStartFailureOrSuccess: none(),
          loadingFailureOrSuccess: none(),
          isLoading: false,
        );
      });
    }, tryToStartTrain: (e) async* {
      final decksForTrain = await getDecksForTrain(
          Params(List<Deck>.from(state.decksSourceList)));
      yield decksForTrain.fold((failure) {
        return state.copyWith(
            loadingFailureOrSuccess: none(),
            isLoading: false,
            trainStartFailureOrSuccess: some(left(NoTrainableDecks)));
      }, (deckList) {
        if (deckList.isNotEmpty) {
          return state.copyWith(
              loadingFailureOrSuccess: none(),
              isLoading: false,
              trainStartFailureOrSuccess: some(right(deckList)));
        } else {
          return state.copyWith(
              loadingFailureOrSuccess: none(),
              isLoading: false,
              trainStartFailureOrSuccess: some(left(NoTrainableDecks)));
        }
      });
    }, addDeck: (e) async* {
      final decks = [e.deck];
      decks.addAll(state.decksSourceList);
      yield state.copyWith(decksSourceList: decks);
    }, updateDeck: (e) async* {
      final updateIndex =
          state.decksSourceList.indexWhere((d) => d.deckId == e.deck.deckId);
      final decks = List<Deck>.from(state.decksSourceList);
      decks[updateIndex] = e.deck;
      yield state.copyWith(decksSourceList: decks);
    }, deleteDeck: (e) async* {
      final decks = List<Deck>.from(state.decksSourceList);
      decks.remove(e.deck);
      yield state.copyWith(decksSourceList: decks);
    }, trainStarted: (e) async* {
      yield state.copyWith(
        trainStartFailureOrSuccess: none(),
        loadingFailureOrSuccess: none(),
        isLoading: false,
      );
    });
  }
}
