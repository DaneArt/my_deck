
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:mydeck/core/error/storage_failure.dart';
import 'package:mydeck/features/my_deck/domain/entities/card.dart';
import 'package:mydeck/features/my_deck/domain/entities/card_content.dart';
import 'package:mydeck/features/my_deck/domain/entities/deck.dart';
import 'package:mydeck/features/my_deck/domain/usecases/usecase.dart';

class GetDecksForTrain extends UseCase<StorageFailure, List<Deck>, Params> {
  @override
  Future<Either<StorageFailure, List<Deck>>> call(Params params) async {
    return _filterDecksForTrain(params.decks);
  }

  int compareR(Card c1, Card c2) {
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
  }

  Future<Either<StorageFailure<List<Deck>>, List<Deck>>> _filterDecksForTrain(
      List<Deck> decks) {
    final List<Deck> result = [];
    decks.removeWhere((d) =>
        d.title.isEmpty ||
        d.icon.path.isEmpty ||
        d.cardsList
            .any((c) => c.answer is NoContent || c.question is NoContent));
    for (Deck deck in decks) {
      final List<Card> trainableCards = List.from(deck.cardsList);
      if (trainableCards.isNotEmpty) {
        final temp = deck;
        trainableCards.sort((c1, c2) => compareR(c1, c2));
        temp.cardsList.clear();
        temp.cardsList.addAll(trainableCards);
        result.add(temp);
      }
    }
    return Future.value(
        result.isNotEmpty ? right(result) : left(StorageFailure.getFailure()));
  }
}

class Params extends Equatable {
  final List<Deck> decks;

  Params(this.decks);

  @override
  List<Object> get props => [decks];
}
