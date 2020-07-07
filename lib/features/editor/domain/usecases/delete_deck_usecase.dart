import 'package:dartz/dartz.dart';
import 'package:mydeck/core/error/storage_failure.dart';
import 'package:mydeck/features/my_deck/data/repositories/my_deck_repository.dart';
import 'package:mydeck/features/my_deck/domain/entities/deck.dart';
import 'package:mydeck/features/my_deck/domain/usecases/usecase.dart';

import 'add_deck_usecase.dart';

class DeleteDeckUseCase extends UseCase<StorageFailure<Deck>, void, Params> {
  final MyDeckRepository myDeckRepository;

  DeleteDeckUseCase(this.myDeckRepository);

  @override
  Future<Either<StorageFailure<Deck>, void>> call(Params params) async {
    final callResult = await myDeckRepository.deleteDeck(params.deck);

    return callResult.fold(() => Right(null), (failure) => left(failure));
  }
}
