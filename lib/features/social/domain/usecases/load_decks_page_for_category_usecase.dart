import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:mydeck/core/error/failures.dart';
import 'package:mydeck/features/my_deck/data/models/deck_category.dart';
import 'package:mydeck/features/my_deck/data/repositories/my_deck_repository.dart';
import 'package:mydeck/features/my_deck/domain/entities/deck.dart';
import 'package:mydeck/features/my_deck/domain/usecases/usecase.dart';

class LoadDecksPageForCategoryUsecase
    extends UseCase<StorageFailure, List<Deck>, Params> {
  final MyDeckRepository repository;

  LoadDecksPageForCategoryUsecase(this.repository);

  @override
  Future<Either<StorageFailure, List<Deck>>> call(Params params) {
    return repository.loadDecksPageForCategory(
        params.category, params.pageCount);
  }
}

class Params {
  final DeckCategory category;
  final int pageCount;

  Params({@required this.category, @required this.pageCount});
}
