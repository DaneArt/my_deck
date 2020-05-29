import 'dart:async';
import 'dart:collection';

import 'package:bloc/bloc.dart';

import 'package:meta/meta.dart';
import 'package:mydeck/features/my_deck/data/models/card_model.dart';
import 'package:mydeck/features/my_deck/domain/entities/card.dart';
import 'package:mydeck/features/my_deck/domain/entities/deck.dart';
import 'package:mydeck/features/my_deck/domain/usecases/update_trained_cards.dart';
import 'package:mydeck/core/extensions/collections_extension.dart';
import 'package:stack/stack.dart';

import '../bloc.dart';

const String LoadingErrorMessage = "Error while Loading. Try to reload.";
const String NoTrainableDecks = "No trainable decks. Try something of this:";

class TrainBloc extends Bloc<TrainEvent, TrainState> {
  Queue<Deck> _decksToTrain;

  Queue<Deck> get decks => _decksToTrain;
  final UpdateTrainedCards updateTrainedCards;

  List<CardModel> trainedCards = [];

  int _currentCardIndex = 0;

  //meta variables for stats
  int _successfulTrainedCardsInCurrentDeck = 0;
  int _successfulTrainedCardsTotal = 0;
  int _successfulTrainedDecksTotal = 0;

  //worst decision EVER. Flag to check was last card successful.
  bool isLastCardTrue = false;

  DeckLibrary get _currentDeck => _decksToTrain.first;

  Card get _currentCard => _currentDeck.cardsList[_currentCardIndex];

  TrainBloc({@required this.updateTrainedCards});

  @override
  TrainState get initialState => InitialTrainState();

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
    CardModel newCard;
    if (isCorrect) {
      newCard = _updateCardWithPositiveResult(oldCard);
    } else {
      newCard = _updateCardWithNegativeResult(oldCard);
    }

    trainedCards.add(newCard);

    yield* _updateSourceState();
  }

  CardModel _updateCardWithPositiveResult(Card oldCard) {
    _successfulTrainedCardsInCurrentDeck++;
    _successfulTrainedCardsTotal++;
    isLastCardTrue = true;
    return CardModel(
      oldCard.cardId,
      oldCard.answer.model,
      oldCard.question.model,
      oldCard.wins + 1,
      oldCard.trains + 1,
      DateTime.now()
                  .difference(
                      oldCard.lastTrain.add(Duration(days: oldCard.level)))
                  .inDays >
              0
          ? (oldCard.level + 1) % 7 != 0 ? (oldCard.level + 1) % 7 : 7
          : oldCard.level,
      DateTime.now().toIso8601String(),
      _currentDeck.deckId,
    );
  }

  CardModel _updateCardWithNegativeResult(Card oldCard) {
    isLastCardTrue = false;
    return CardModel(
      oldCard.cardId,
      oldCard.answer.model,
      oldCard.question.model,
      oldCard.wins,
      oldCard.trains + 1,
      1,
      DateTime.now().toIso8601String(),
      _currentDeck.deckId,
    );
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
