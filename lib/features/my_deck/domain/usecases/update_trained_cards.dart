import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:stack/stack.dart';
import 'package:mydeck/core/extensions/collections_extension.dart';
import 'package:mydeck/core/error/storage_failure.dart';
import 'package:mydeck/features/my_deck/data/models/card_model.dart';
import 'package:mydeck/features/my_deck/data/repositories/my_deck_repository.dart';
import 'package:mydeck/features/my_deck/domain/usecases/usecase.dart';
import 'package:stack/stack.dart';

class UpdateTrainedCards
    extends UseCase<StorageFailure<List<CardModel>>, List<CardModel>, Params> {
  final MyDeckRepository repository;

  UpdateTrainedCards({@required this.repository});

  @override
  Future<Either<StorageFailure<List<CardModel>>, List<CardModel>>> call(
      Params params) async {
    return repository.updateCards(params.cards);
  }
}

class Params extends Equatable {
  final List<CardModel> cards;

  Params({this.cards});

  @override
  List<Object> get props => [cards];
}
