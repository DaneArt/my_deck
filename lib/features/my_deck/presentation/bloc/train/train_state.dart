import 'package:equatable/equatable.dart';
import 'package:mydeck/features/my_deck/domain/entities/card.dart';
import 'package:mydeck/features/my_deck/domain/entities/deck.dart';



abstract class TrainState extends Equatable {
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

  TrainEnded({this.successfullTrainedCardsCount, this.decksCount});

  @override
  List<Object> get props => [];
}

class TrainStopped extends TrainState {
  @override
  List<Object> get props => [];
}
