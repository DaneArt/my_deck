
import 'package:dartz/dartz.dart';
import 'package:mydeck/core/error/storage_failure.dart';
import 'package:mydeck/features/my_deck/data/repositories/my_deck_repository.dart';
import 'package:mydeck/features/my_deck/domain/entities/deck.dart';
import 'package:mydeck/features/my_deck/domain/usecases/usecase.dart';

import 'add_deck_usecase.dart';

class UpdateDeckUsecase extends UseCase<StorageFailure<Deck>, Deck, Params> {
  final MyDeckRepository myDeckRepository;

  UpdateDeckUsecase({this.myDeckRepository});

  @override
  Future<Either<StorageFailure<Deck>, Deck>> call(Params params) async {
    return await myDeckRepository.updateDeck(params.deck);
  }
}
