import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:mydeck/errors/storage_failure.dart';
import 'package:mydeck/services/repositories/deck_repository.dart';
import 'package:mydeck/models/entitites/deck.dart';
import 'package:mydeck/models/entitites/unique_id.dart';
import 'package:mydeck/services/usecases/usecase.dart';
import 'package:uuid/uuid.dart';

class GetDeckById extends UseCase<StorageFailure<Deck>, Deck, Params> {
  final DeckRepository repository;

  GetDeckById({@required this.repository});

  @override
  Future<Either<StorageFailure<Deck>, Deck>> call(Params params) async {
    return repository.getDeckById(params.deckId);
  }
}

class Params extends Equatable {
  final UniqueId deckId;

  Params({@required this.deckId});

  @override
  List<Object> get props => [deckId];
}
