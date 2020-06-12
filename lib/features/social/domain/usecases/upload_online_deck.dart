import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:mydeck/core/error/failures.dart';
import 'package:mydeck/features/my_deck/data/repositories/my_deck_repository.dart';
import 'package:mydeck/features/my_deck/domain/entities/deck.dart';
import 'package:mydeck/features/my_deck/domain/usecases/usecase.dart';

class UploadOnlineDeckUsecase
    extends UseCase<StorageFailure, DeckLibrary, Params> {
  final MyDeckRepository myDeckRepository;

  UploadOnlineDeckUsecase(
      {@required this.myDeckRepository,});

  @override
  Future<Either<StorageFailure, DeckLibrary>> call(Params params) async {

     final deck = await myDeckRepository.getDeckById(params.deck.deckId);

    return deck.fold((failure) => left(failure), (deck) => right(deck));

  }
}

class Params {
  final Deck deck;

  Params({@required this.deck});
}
