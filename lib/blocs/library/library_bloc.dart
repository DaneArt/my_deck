import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import 'package:meta/meta.dart';
import 'package:mydeck/blocs/train/train_bloc.dart';
import 'package:mydeck/models/entitites/deck.dart';
import 'package:mydeck/services/usecases/delete_deck_usecase.dart';
import 'package:mydeck/services/usecases/get_all_current_user_decks_usecase.dart';
import 'package:mydeck/services/usecases/add_deck_usecase.dart' as add;
import 'package:mydeck/services/usecases/save_deck_changes_usecase.dart'
    as save;
import 'package:mydeck/services/usecases/usecase.dart';
import 'package:mydeck/services/usecases/get_decks_for_train_usecase.dart';

import 'library_event.dart';
import 'library_state.dart';

const String CacheFailureMessage = 'Cache error.';
const String NoDecksMessage = "No decks.";

class LibraryBloc extends Bloc<LibraryEvent, LibraryState> {
  final GetAllCurrentUserDecksUsecase getAllCurrentUserDecks;
  final GetDecksForTrain getDecksForTrain;
  final DeleteDeckUseCase deleteDeckUseCase;
  final add.AddDeckUseCase addDeckUseCase;
  final save.SaveDeckChangesUsecase saveDeckChangesUsecase;

  LibraryBloc(
      {@required this.saveDeckChangesUsecase,
      @required this.addDeckUseCase,
      @required this.deleteDeckUseCase,
      @required this.getDecksForTrain,
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
      yield Future.delayed(
          Duration(milliseconds: 300),
          () => state.copyWith(
                trainStartFailureOrSuccess: none(),
              ));
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
    }, undoAdding: (e) async* {
      final deleteResult = await deleteDeckUseCase(add.Params(e.deck));
      yield deleteResult.fold((l) => state, (r) {
        final decks = List<Deck>.from(state.decksSourceList);
        decks.remove(e.deck);
        return state.copyWith(decksSourceList: decks);
      });
    }, undoDeleting: (e) async* {
      final addResult = await addDeckUseCase(add.Params(e.deck));
      final decks = [e.deck];
      decks.addAll(state.decksSourceList);
      yield state.copyWith(decksSourceList: decks);
    }, undoEditing: (e) async* {
      final updateIndex =
          state.decksSourceList.indexWhere((d) => d.deckId == e.oldDeck.deckId);
      final decks = List<Deck>.from(state.decksSourceList);
      final updateResult = await saveDeckChangesUsecase(
          save.Params(decks[updateIndex], e.oldDeck));
      decks[updateIndex] = e.oldDeck;
      yield state.copyWith(decksSourceList: decks);
    });
  }
}
