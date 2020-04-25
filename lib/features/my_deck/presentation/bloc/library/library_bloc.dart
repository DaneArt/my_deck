import 'dart:async';

import 'package:bloc/bloc.dart';

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
  final GetAllCurrentUserDecks getAllCurrentUserDecks;
  final GetDecksForTrain getDecksForTrain;

  final List<Deck> decksSourceList = List<Deck>();

  LibraryBloc(
      {@required this.getDecksForTrain,
      @required GetAllCurrentUserDecks allUserDecks})
      : assert(allUserDecks != null),
        getAllCurrentUserDecks = allUserDecks;

  @override
  LibraryState get initialState => InitialState();

  @override
  Stream<LibraryState> mapEventToState(
    LibraryEvent event,
  ) async* {
    if (event is GetAllUsersDecks) {
      final  decks = await getAllCurrentUserDecks(NoParams());
      yield decks.fold((failure) => ErrorState(CacheFailureMessage),
          (deckList) {
        if (deckList != decksSourceList) {
          decksSourceList.clear();
          decksSourceList.addAll(deckList);
        }
        if (decksSourceList.isEmpty) {
          return ErrorState(NoDecksMessage);
        } else {
          return LoadedState(decksSourceList);
        }
      });
    } else if (event is TryToStartTrain) {
      final decksForTrain =
          await getDecksForTrain(Params(List<Deck>.from(decksSourceList)));
      yield decksForTrain.fold((failure) {
        return NoTrainableDecksState(NoTrainableDecks);
      }, (deckList) {
        if (deckList.isNotEmpty) {
          return StartTrainState(deckList);
        } else {
          return NoTrainableDecksState(NoTrainableDecks);
        }
      });
    }
  }
}
