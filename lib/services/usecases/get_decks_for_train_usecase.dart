import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:mydeck/errors/storage_failure.dart';
import 'package:mydeck/models/entitites/mde_deck.dart';
import 'package:mydeck/services/usecases/usecase.dart';

class GetDecksForTrainUseCase extends UseCase<StorageFailure, List<MDEDeck>, NoParams> {
  @override
  Future<Either<StorageFailure, List<MDEDeck>>> call(NoParams params) async {
    // params.decks.removeWhere((d) =>
    //     !d.title.isValid ||
    //     d.avatar.isValid ||
    //     d.cardsList.any((c) => c.answer == null || c.question == null));
    // params.decks.removeWhere((d) => d.cardsList.isEmpty);
    // //params.decks.forEach((d) => d.cardsList.sort((c1, c2) => compareR(c1, c2)));
    // return Future.value(params.decks.isNotEmpty
    //     ? right(params.decks)
    //     : left(StorageFailure.getFailure()));
  }

 
}
