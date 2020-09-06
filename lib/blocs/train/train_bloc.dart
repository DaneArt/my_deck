import 'dart:async';
import 'dart:collection';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:mydeck/models/entitites/card.dart';
import 'package:mydeck/models/entitites/deck.dart';
import 'package:mydeck/services/usecases/update_trained_cards.dart';

part 'train_event.dart';

part 'train_state.dart';

const String LoadingErrorMessage = "Error while Loading. Try to reload.";
const String NoTrainableDecks = "No trainable decks. Try something of this:";

class TrainBloc extends Bloc<TrainEvent, TrainState> {
  Queue<Deck> _decksToTrain;

  Queue<Deck> get decks => _decksToTrain;
  final UpdateTrainedCards updateTrainedCards;

  List<Card> trainedCards = [];

  int _currentCardIndex = 0;

  //meta variables for stats
  int _successfulTrainedCardsInCurrentDeck = 0;
  int _successfulTrainedCardsTotal = 0;
  int _successfulTrainedDecksTotal = 0;

  //worst decision EVER. Flag to check was last card successful.
  bool isLastCardTrue = false;

  Deck get _currentDeck => _decksToTrain.first;

  Card get _currentCard => _currentDeck.cardsList[_currentCardIndex];

  TrainBloc({@required this.updateTrainedCards}) : super(InitialTrainState());

  @override
  Stream<TrainState> mapEventToState(
    TrainEvent event,
  ) async* {
    if (event is LoadTrainableDecks) {
      _decksToTrain = Queue.from(event.decks);
      yield TrainInProgress(_currentDeck, _currentCardIndex);
    } else if (event is ConfirmAnswer) {
      yield* _applyAnswer(true);
    } else if (event is DeclineAnswer) {
      yield* _applyAnswer(false);
    } else if (event is StopTrain) {
      yield* _stopTraining();
    } else if (event is StartNextDeck) {
      yield TrainInProgress(_currentDeck, _currentCardIndex);
    } else if (event is ReverseAnswer) {
      if (_currentCardIndex != 0) {
        trainedCards.removeLast();
        if (isLastCardTrue) {
          _successfulTrainedCardsInCurrentDeck--;
          _successfulTrainedCardsTotal--;
        }
        _currentCardIndex--;
      }

      yield TrainInProgress(_currentDeck, _currentCardIndex);
    }
  }

  Stream<TrainState> _stopTraining() async* {
    final result = await updateTrainedCards(Params(cards: trainedCards));
    yield result.fold((failure) => TrainStopped(trainedCards),
        (result) => TrainStopped(trainedCards));
  }

  Stream<TrainState> _applyAnswer(bool isCorrect) async* {
    final oldCard = _currentCard;
    Card newCard;
    if (isCorrect) {
      newCard = _updateCardWithPositiveResult(oldCard);
    } else {
      newCard = _updateCardWithNegativeResult(oldCard);
    }

    trainedCards.add(newCard);

    yield* _updateSourceState();
  }

  Card _updateCardWithPositiveResult(Card oldCard) {
    _successfulTrainedCardsInCurrentDeck++;
    _successfulTrainedCardsTotal++;
    isLastCardTrue = true;
    return oldCard;
  }

  Card _updateCardWithNegativeResult(Card oldCard) {
    isLastCardTrue = false;
    return oldCard;
  }

  Stream<TrainState> _updateSourceState() async* {
    if (_currentCardIndex == _currentDeck.cardsList.length - 1) {
      _successfulTrainedDecksTotal++;
      final lastDeck = _decksToTrain.first;
      _decksToTrain.removeFirst();
      if (decks.isEmpty) {
        yield* _endOfTrain();
      } else {
        yield* _endTrainOfCurrentDeck(lastDeck);
      }
    } else {
      _currentCardIndex++;
      yield TrainInProgress(_currentDeck, _currentCardIndex);
    }
  }

  Stream<TrainState> _endTrainOfCurrentDeck(Deck lastDeck) async* {
    _currentCardIndex = 0;
    int success = _successfulTrainedCardsInCurrentDeck;
    _successfulTrainedCardsInCurrentDeck = 0;
    yield EndTrainOfDeck(lastDeck, success);
  }

  Stream<TrainState> _endOfTrain() async* {
    yield TrainEnded(_successfulTrainedCardsTotal, _successfulTrainedDecksTotal,
        trainedCards);
  }
}
