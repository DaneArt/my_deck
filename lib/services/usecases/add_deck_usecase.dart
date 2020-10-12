import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:mydeck/errors/storage_failure.dart';
import 'package:mydeck/services/repositories/deck_repository.dart';
import 'package:mydeck/models/entitites/deck.dart';
import 'package:mydeck/services/repositories/file_repository.dart';
import 'package:mydeck/services/usecases/usecase.dart';
import 'package:meta/meta.dart';

class AddDeckUseCase extends UseCase<StorageFailure<Deck>, Deck, Params> {
  final DeckRepository myDeckRepository;
  final FileRepository fileRepository;

  AddDeckUseCase(
      {@required this.fileRepository, @required this.myDeckRepository});

  @override
  Future<Either<StorageFailure<Deck>, Deck>> call(params) async {
    final addAvatarResult =
        fileRepository.addFile(params.deck.avatar.getOrCrash);
    final addCardFilesResult = fileRepository.addFiles(
        params.deck.cardsList.map((e) => e.answer).toList()
          ..addAll(params.deck.cardsList.map((e) => e.question).toList()));

    if ((await addAvatarResult).isNone() &&
        (await addCardFilesResult).isNone()) {
      return myDeckRepository.addDeck(params.deck);
    } else {
      return left(StorageFailure.insertFailure(failureObject: params.deck));
    }
  }
}

class Params extends Equatable {
  final Deck deck;

  Params(this.deck);

  @override
  List<Object> get props => [deck];
}
