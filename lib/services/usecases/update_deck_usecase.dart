import 'package:dartz/dartz.dart';
import 'package:mydeck/errors/storage_failure.dart';
import 'package:mydeck/models/entitites/mde_deck.dart';
import 'package:mydeck/services/repositories/deck_repository.dart';
import 'package:mydeck/services/usecases/usecase.dart';

import 'add_deck_usecase.dart';

class UpdateDeckUsecase extends UseCase<StorageFailure<MDEDeck>, MDEDeck, Params> {
  final DeckRepository myDeckRepository;

  UpdateDeckUsecase({this.myDeckRepository});

  @override
  Future<Either<StorageFailure<MDEDeck>, MDEDeck>> call(Params params) async {
    return await myDeckRepository.updateDeck(params.deck);
  }
}
