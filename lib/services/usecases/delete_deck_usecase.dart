import 'package:dartz/dartz.dart';
import 'package:mydeck/errors/storage_failure.dart';
import 'package:mydeck/services/repositories/deck_repository.dart';
import 'package:mydeck/models/entitites/deck.dart';
import 'package:mydeck/services/usecases/usecase.dart';

import 'add_deck_usecase.dart';

class DeleteDeckUseCase extends UseCase<StorageFailure<Deck>, void, Params> {
  final DeckRepository myDeckRepository;

  DeleteDeckUseCase(this.myDeckRepository);

  @override
  Future<Either<StorageFailure<Deck>, void>> call(Params params) async {
    final callResult = await myDeckRepository.deleteDeck(params.deck);

    return callResult.fold(() => Right(null), (failure) => left(failure));
  }
}
