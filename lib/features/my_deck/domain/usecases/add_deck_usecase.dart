import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:mydeck/core/error/storage_failure.dart';
import 'package:mydeck/features/my_deck/data/repositories/my_deck_repository.dart';
import 'package:mydeck/features/my_deck/domain/entities/deck.dart';
import 'package:mydeck/features/my_deck/domain/usecases/usecase.dart';


class AddDeckUseCase extends UseCase<StorageFailure<Deck>, Deck, Params> {
  final MyDeckRepository myDeckRepository;

  AddDeckUseCase({this.myDeckRepository});

  @override
  Future<Either<StorageFailure<Deck>, Deck>> call(params) async {
    return await myDeckRepository.addDeckWithCards(params.deck);
  }
}

class Params extends Equatable {
  final Deck deck;

  Params(this.deck);

  @override
  List<Object> get props => [deck];
}
