import 'package:equatable/equatable.dart';

abstract class LibraryEvent extends Equatable {
  const LibraryEvent();
}

class GetAllUsersDecks extends LibraryEvent {
  const GetAllUsersDecks();

  @override
  List<Object> get props => [];
}

class TryToStartTrain extends LibraryEvent {
  TryToStartTrain();

  @override
  List<Object> get props => [];
}
