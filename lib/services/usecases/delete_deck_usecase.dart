import 'package:dartz/dartz.dart';
import 'package:mydeck/errors/storage_failure.dart';
import 'package:mydeck/models/entitites/mde_deck.dart';
import 'package:mydeck/services/repositories/deck_repository.dart';
import 'package:mydeck/services/repositories/file_repository.dart';
import 'package:mydeck/services/usecases/usecase.dart';

import 'add_deck_usecase.dart';

class DeleteDeckUseCase extends UseCase<StorageFailure<MDEDeck>, void, Params> {
  final DeckRepository myDeckRepository;
  final FileRepository fileRepository;

  DeleteDeckUseCase(this.myDeckRepository, this.fileRepository);

  @override
  Future<Either<StorageFailure<MDEDeck>, void>> call(Params params) async {
    // fileRepository.deleteFile(params.deck.avatar.getOrCrash);
    // fileRepository
    //     .deleteFiles(params.deck.cardsList.map((c) => c.answer).toList());
    // fileRepository
    //     .deleteFiles(params.deck.cardsList.map((c) => c.question).toList());
    final deckDeleteResult = await myDeckRepository.deleteDeck(params.deck);

    return deckDeleteResult.fold(() => Right(null), (failure) => left(failure));
  }
}
