import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:mydeck/errors/storage_failure.dart';
import 'package:mydeck/features/my_deck/data/repositories/my_deck_repository.dart';
import 'package:mydeck/features/my_deck/domain/entities/deck.dart';
import 'package:mydeck/features/my_deck/domain/entities/unique_id.dart';
import 'package:mydeck/features/my_deck/domain/usecases/usecase.dart';
import 'package:uuid/uuid.dart';

class GetDeckById extends UseCase<StorageFailure<Deck>, Deck, Params> {
  final MyDeckRepository repository;

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