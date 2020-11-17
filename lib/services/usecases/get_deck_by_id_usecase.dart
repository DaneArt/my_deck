import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:mydeck/errors/storage_failure.dart';
import 'package:mydeck/models/entitites/mde_deck.dart';
import 'package:mydeck/models/value_objects/unique_id.dart';
import 'package:mydeck/services/repositories/deck_repository.dart';
import 'package:mydeck/services/usecases/usecase.dart';


class GetDeckById extends UseCase<StorageFailure<MDEDeck>, MDEDeck, Params> {
  final DeckRepository repository;

  GetDeckById({@required this.repository});

  @override
  Future<Either<StorageFailure<MDEDeck>, MDEDeck>> call(Params params) async {
    return repository.getDeckById(params.deckId);
  }
}

class Params extends Equatable {
  final UniqueId deckId;

  Params({@required this.deckId});

  @override
  List<Object> get props => [deckId];
}
