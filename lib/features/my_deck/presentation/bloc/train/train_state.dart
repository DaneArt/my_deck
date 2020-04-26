import 'package:equatable/equatable.dart';
import 'package:mydeck/features/my_deck/data/models/card_model.dart';
import 'package:mydeck/features/my_deck/domain/entities/card.dart';
import 'package:mydeck/features/my_deck/domain/entities/deck.dart';
import 'package:mydeck/features/my_deck/presentation/bloc/bloc.dart';

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
  final List<CardModel> trainedCards;

  TrainEnded(
      this.successfullTrainedCardsCount, this.decksCount, this.trainedCards);

  @override
  List<Object> get props =>
      [successfullTrainedCardsCount, decksCount, trainedCards];
}

class TrainStopped extends TrainState {
  final List<CardModel> trainedCards;

  TrainStopped(this.trainedCards);

  @override
  List<Object> get props => [trainedCards];
}
