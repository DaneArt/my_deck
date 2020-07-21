import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mydeck/models/entitites/deck.dart';

part 'library_event.freezed.dart';

@freezed
abstract class LibraryEvent with _$LibraryEvent {
  factory LibraryEvent.getAllUsersDecks() = GetAllUsersDecks;

  factory LibraryEvent.tryToStartTrain() = TryToStartTrain;

  factory LibraryEvent.addDeck({@required Deck deck}) = AddDeck;

  factory LibraryEvent.updateDeck({@required Deck deck}) = UpdateDeck;

  factory LibraryEvent.deleteDeck({@required Deck deck}) = DeleteDeck;

  factory LibraryEvent.trainStarted() = TrainStarted;

  factory LibraryEvent.undoAdding({@required Deck deck}) = UndoAdding;

  factory LibraryEvent.undoDeleting({@required Deck deck}) = UndoDeleting;

  factory LibraryEvent.undoEditing({@required Deck oldDeck}) = UndoEditing;
}
