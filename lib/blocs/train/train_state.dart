part of 'train_bloc.dart';

abstract class TrainState {
  const TrainState();
}

class InitialTrainState extends TrainState {
  @override
  List<Object> get props => [];
}

class TrainInProgress extends TrainState {
  Card get currentCard => currentDeck.cardsList[currentCardIndex];
  final Deck currentDeck;
  final int currentCardIndex;

  TrainInProgress(this.currentDeck, this.currentCardIndex);

  @override
  List<Object> get props => [currentDeck, currentCardIndex];
}

class EndTrainOfDeck extends TrainState {
  final Deck deck;
  final int successfullTrainedCardsCount;

  EndTrainOfDeck(this.deck, this.successfullTrainedCardsCount);

  @override
  List<Object> get props => [deck, successfullTrainedCardsCount];
}

class TrainEnded extends TrainState {
  final int successfullTrainedCardsCount;
  final int decksCount;
  final List<Card> trainedCards;

  TrainEnded(
      this.successfullTrainedCardsCount, this.decksCount, this.trainedCards);

  @override
  List<Object> get props =>
      [successfullTrainedCardsCount, decksCount, trainedCards];
}

class TrainStopped extends TrainState {
  final List<Card> trainedCards;

  TrainStopped(this.trainedCards);

  @override
  List<Object> get props => [trainedCards];
}
