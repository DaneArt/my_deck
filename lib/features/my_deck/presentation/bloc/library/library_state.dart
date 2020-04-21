import 'package:equatable/equatable.dart';
import 'package:mydeck/features/my_deck/domain/entities/deck.dart';

abstract class LibraryState extends Equatable {
  const LibraryState();
}

class InitialState implements LibraryState {
  @override
  List<Object> get props => [];

  @override
  bool get stringify => true;
}

class LoadingState implements LibraryState {
  @override
  List<Object> get props => [];

  @override
  bool get stringify => true;
}

class LoadedState implements LibraryState {
  final List<Deck> decks;

  const LoadedState(this.decks);

  @override
  List<Object> get props => [decks];

  @override
  bool get stringify => true;
}

class ErrorState implements LibraryState {
  final String message;

  const ErrorState(this.message);

  @override
  List<Object> get props => [message];

  @override
  bool get stringify => true;
}

class NoTrainableDecksState implements LibraryState {
  final String message;

  const NoTrainableDecksState(this.message);

  @override
  List<Object> get props => [message];

  @override
  bool get stringify => true;
}

class StartTrainState implements LibraryState {
  final List<Deck> deckList;

  StartTrainState(this.deckList);

  @override
  List<Object> get props => [deckList];

  @override
  bool get stringify => true;
}
