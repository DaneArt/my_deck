import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:mydeck/core/error/storage_failure.dart';
import 'package:mydeck/features/my_deck/data/repositories/my_deck_repository.dart';
import 'package:mydeck/features/my_deck/domain/entities/card.dart';
import 'package:mydeck/features/my_deck/domain/usecases/usecase.dart';

class UpdateTrainedCards
    extends UseCase<StorageFailure<List<Card>>, List<Card>, Params> {
  final MyDeckRepository repository;

  UpdateTrainedCards({@required this.repository});

  @override
  Future<Either<StorageFailure<List<Card>>, List<Card>>> call(
      Params params) async {
    //TODO: Fix it later
    // return repository.updateCards(params.cards);
  }
}

class Params extends Equatable {
  final List<Card> cards;

  Params({this.cards});

  @override
  List<Object> get props => [cards];
}
