import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:mydeck/core/error/storage_failure.dart';
import 'package:mydeck/features/my_deck/domain/entities/card.dart';
import 'package:mydeck/features/my_deck/domain/entities/card_content.dart';
import 'package:mydeck/features/my_deck/domain/entities/deck.dart';
import 'package:mydeck/features/my_deck/domain/usecases/usecase.dart';

class GetDecksForTrain
    extends UseCase<StorageFailure, List<DeckLibrary>, Params> {
  @override
  Future<Either<StorageFailure, List<DeckLibrary>>> call(Params params) async {
    params.decks.removeWhere((d) =>
        !d.title.isValid ||
        d.avatar.isValid ||
        d.cardsList
            .any((c) => c.answer is NoContent || c.question is NoContent));
    params.decks.removeWhere((d) => d.cardsList.isEmpty);
    //params.decks.forEach((d) => d.cardsList.sort((c1, c2) => compareR(c1, c2)));
    return Future.value(params.decks.isNotEmpty
        ? right(params.decks)
        : left(StorageFailure.getFailure()));
  }

  /* int compareR(Card c1, Card c2) {
    var c1Winrate = c1.wins / c1.trains;

    var c2Winrate = c2.wins / c2.trains;

    if (c1.level < c2.level) {
      return -1;
    }
    if (c1.level == c2.level) {
      return 0;
    }
    if (c1.level > c2.level) {
      return 1;
    }
    if (c1Winrate < c2Winrate) {
      return -1;
    }
    if (c1Winrate == c2Winrate) {
      return 0;
    }
    if (c1Winrate > c2Winrate) {
      return 1;
    }
    return 0;
  } */
}

class Params extends Equatable {
  final List<DeckLibrary> decks;

  Params(this.decks);

  @override
  List<Object> get props => [decks];
}
