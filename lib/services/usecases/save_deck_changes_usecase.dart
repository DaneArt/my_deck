import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:mydeck/errors/storage_failure.dart';
import 'package:mydeck/services/repositories/deck_repository.dart';
import 'package:mydeck/models/entitites/card.dart';
import 'package:mydeck/models/entitites/deck.dart';
import 'package:mydeck/services/usecases/usecase.dart';

class SaveDeckChangesUsecase extends UseCase<StorageFailure, Deck, Params> {
  final DeckRepository myDeckRepository;

  SaveDeckChangesUsecase(this.myDeckRepository);

  @override
  Future<Either<StorageFailure<Deck>, Deck>> call(Params params) async {
    final oldCards = params.oldDeck.cardsList;
    final newCards = params.newDeck.cardsList;
    final cardsToDelete = _sortCardsToDelete(oldCards, newCards);
    final cardsToAdd = _sortCardsToAdd(oldCards, newCards);
    final cardsToUpdate =
        _sortCardsToUpdate(oldCards..addAll(cardsToAdd), newCards);

    final updateDeckResult = await myDeckRepository.updateDeck(params.newDeck);
    return updateDeckResult.fold((failure) => left(failure),
        (updatedDeck) async {
      // if (cardsToDelete.isNotEmpty) {
      //   final deleteCardsResult = await myDeckRepository.deleteCards(
      //       cardsToDelete
      //           .map((c) => c.toModel(params.newDeck.deckId))
      //           .toList());
      //   if (deleteCardsResult.isSome())
      //     return deleteCardsResult.fold(
      //         () => right(updatedDeck), (failure) => left(failure));
      // }
      // if (cardsToAdd.isNotEmpty) {
      //   final addCardsResult = await myDeckRepository.addCards(
      //       cardsToAdd.map((c) => c.toModel(params.newDeck.deckId)).toList());
      //   if (addCardsResult.isLeft())
      //     return addCardsResult.fold(
      //         (failure) => left(failure), (result) => right(updatedDeck));
      // }
      // if (cardsToUpdate.isNotEmpty) {
      //   final updateCardsResult = await myDeckRepository.updateCards(
      //       cardsToUpdate
      //           .map((c) => c.toModel(params.newDeck.deckId))
      //           .toList());
      //   if (updateCardsResult.isLeft())
      //     return updateCardsResult.fold(
      //         (failure) => left(failure), (result) => right(updatedDeck));
      // }

      return right(updatedDeck);
    });
  }

  List<Card> _sortCardsToAdd(List<Card> oldCards, List<Card> newCards) {
    final List<Card> result = List.from(newCards);
    result.removeWhere(
        (newCard) => oldCards.any((oldCard) => oldCard.id == newCard.id));
    return result;
  }

  List<Card> _sortCardsToDelete(List<Card> oldCards, List<Card> newCards) {
    final List<Card> result = List.from(oldCards);
    result.removeWhere(
        (oldCard) => newCards.any((newCard) => newCard.id == oldCard.id));
    return result;
  }

  List<Card> _sortCardsToUpdate(List<Card> oldCards, List<Card> newCards) {
    final List<Card> result = List.from(newCards);
    result.removeWhere((newCard) => oldCards.contains(newCard));
    return result;
  }
}

class Params extends Equatable {
  final Deck oldDeck;
  final Deck newDeck;

  Params(this.oldDeck, this.newDeck);

  @override
  List<Object> get props => [oldDeck, newDeck];
}
