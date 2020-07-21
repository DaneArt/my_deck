import 'package:dartz/dartz.dart';
import 'package:mydeck/errors/storage_failure.dart';
import 'package:mydeck/services/repositories/deck_repository.dart';
import 'package:mydeck/models/entitites/deck.dart';
import 'package:mydeck/services/usecases/usecase.dart';

import 'add_deck_usecase.dart';

class UpdateDeckUsecase extends UseCase<StorageFailure<Deck>, Deck, Params> {
  final DeckRepository myDeckRepository;

  UpdateDeckUsecase({this.myDeckRepository});

  @override
  Future<Either<StorageFailure<Deck>, Deck>> call(Params params) async {
    return await myDeckRepository.updateDeck(params.deck);
  }
}
