import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:mydeck/errors/storage_failure.dart';
import 'package:mydeck/services/repositories/deck_repository.dart';
import 'package:mydeck/models/entitites/deck.dart';
import 'package:mydeck/services/usecases/usecase.dart';

class AddDeckUseCase extends UseCase<StorageFailure<Deck>, Deck, Params> {
  final DeckRepository myDeckRepository;

  AddDeckUseCase({this.myDeckRepository});

  @override
  Future<Either<StorageFailure<Deck>, Deck>> call(params) async {
    return myDeckRepository.addDeck(params.deck);
  }
}

class Params extends Equatable {
  final Deck deck;

  Params(this.deck);

  @override
  List<Object> get props => [deck];
}
