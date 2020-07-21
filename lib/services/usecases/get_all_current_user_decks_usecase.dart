import 'package:dartz/dartz.dart';
import 'package:mydeck/errors/storage_failure.dart';
import 'package:mydeck/features/my_deck/data/repositories/my_deck_repository.dart';
import 'package:mydeck/features/my_deck/domain/entities/deck.dart';
import 'package:mydeck/features/my_deck/domain/usecases/usecase.dart';


class GetAllCurrentUserDecksUsecase
    extends UseCase<StorageFailure, List<Deck>, NoParams> {
  final MyDeckRepository repository;

  GetAllCurrentUserDecksUsecase({this.repository});
  @override
  Future<Either<StorageFailure, List<Deck>>> call(NoParams params) async {
    return repository.getCurrentUserAllDecks();
  }
}
