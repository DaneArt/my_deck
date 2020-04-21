import 'package:equatable/equatable.dart';
import 'package:mydeck/features/my_deck/domain/entities/deck.dart';

abstract class TrainEvent extends Equatable {
  const TrainEvent();
}

class ReverseAnswer extends TrainEvent {
  @override
  List<Object> get props => [];
}

class LoadTrainableDecks extends TrainEvent {
  final List<Deck> decks;
  const LoadTrainableDecks(this.decks);

  @override
  List<Object> get props => [decks];
}

class FlipCard extends TrainEvent {
  const FlipCard();

  @override
  List<Object> get props => [];
}

class ConfirmAnswer extends TrainEvent {
  const ConfirmAnswer();

  @override
  List<Object> get props => [];
}

class DeclineAnswer extends TrainEvent {
  const DeclineAnswer();

  @override
  List<Object> get props => [];
}

class StartNextDeck extends TrainEvent {
  const StartNextDeck();

  @override
  List<Object> get props => [];
}

class StopTrain extends TrainEvent {
  const StopTrain();

  @override
  List<Object> get props => [];
}
