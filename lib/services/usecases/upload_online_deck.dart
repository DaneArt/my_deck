import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:mydeck/errors/failures.dart';
import 'package:mydeck/models/entitites/mde_deck.dart';
import 'package:mydeck/models/value_objects/unique_id.dart';
import 'package:mydeck/services/repositories/deck_repository.dart';
import 'package:mydeck/services/usecases/usecase.dart';

class UploadOnlineDeckUsecase extends UseCase<StorageFailure, MDEDeck, Params> {
  final DeckRepository myDeckRepository;

  UploadOnlineDeckUsecase({
    @required this.myDeckRepository,
  });

  @override
  Future<Either<StorageFailure, MDEDeck>> call(Params params) async {
    return myDeckRepository.getDeckById(params.deckId);
  }
}

class Params {
  final UniqueId deckId;

  Params({@required this.deckId});
}
