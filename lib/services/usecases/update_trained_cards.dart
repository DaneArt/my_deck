import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:mydeck/errors/storage_failure.dart';
import 'package:mydeck/models/entitites/mde_card.dart';
import 'package:mydeck/services/repositories/deck_repository.dart';
import 'package:mydeck/services/usecases/usecase.dart';

class UpdateTrainedCards
    extends UseCase<StorageFailure<List<MDECard>>, List<MDECard>, Params> {
  final DeckRepository repository;

  UpdateTrainedCards({@required this.repository});

  @override
  Future<Either<StorageFailure<List<MDECard>>, List<MDECard>>> call(
      Params params) async {
    //TODO: Fix it later
    // return repository.updateCards(params.cards);
  }
}

class Params extends Equatable {
  final List<MDECard> cards;

  Params({this.cards});

  @override
  List<Object> get props => [cards];
}
