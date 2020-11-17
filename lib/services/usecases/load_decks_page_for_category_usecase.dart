import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:mydeck/errors/failures.dart';
import 'package:mydeck/models/dtos/deck_category.dart';
import 'package:mydeck/models/entitites/mde_deck.dart';
import 'package:mydeck/services/repositories/deck_repository.dart';
import 'package:mydeck/services/usecases/usecase.dart';

class LoadDecksPageForCategoryUsecase
    extends UseCase<StorageFailure, List<MDEDeck>, Params> {
  final DeckRepository repository;

  LoadDecksPageForCategoryUsecase(this.repository);

  @override
  Future<Either<StorageFailure, List<MDEDeck>>> call(Params params) {
    return repository.loadDecksPageForCategory(
        params.category, params.pageCount);
  }
}

class Params {
  final DeckCategory category;
  final int pageCount;

  Params({@required this.category, @required this.pageCount});
}
