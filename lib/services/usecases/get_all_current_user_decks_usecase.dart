import 'package:dartz/dartz.dart';
import 'package:mydeck/errors/storage_failure.dart';
import 'package:mydeck/services/repositories/deck_repository.dart';
import 'package:mydeck/models/entitites/deck.dart';
import 'package:mydeck/services/usecases/usecase.dart';

class LoadUserLibraryUseCase
    extends UseCase<StorageFailure, List<Deck>, NoParams> {
  final DeckRepository repository;

  LoadUserLibraryUseCase({this.repository});
  @override
  Future<Either<StorageFailure, List<Deck>>> call(NoParams params) async {
    return repository.getCurrentUserAllDecks();
  }
}
