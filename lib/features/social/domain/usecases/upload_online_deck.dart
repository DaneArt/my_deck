import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:mydeck/core/error/failures.dart';
import 'package:mydeck/features/my_deck/data/repositories/my_deck_repository.dart';
import 'package:mydeck/features/my_deck/domain/entities/deck.dart';
import 'package:mydeck/features/my_deck/domain/entities/unique_id.dart';
import 'package:mydeck/features/my_deck/domain/usecases/usecase.dart';

class UploadOnlineDeckUsecase extends UseCase<StorageFailure, Deck, Params> {
  final MyDeckRepository myDeckRepository;

  UploadOnlineDeckUsecase({
    @required this.myDeckRepository,
  });

  @override
  Future<Either<StorageFailure, Deck>> call(Params params) async {
    return myDeckRepository.getDeckById(params.deckId);
  }
}

class Params {
  final UniqueId deckId;

  Params({@required this.deckId});
}
