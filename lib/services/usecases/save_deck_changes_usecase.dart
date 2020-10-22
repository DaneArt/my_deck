import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:mydeck/errors/storage_failure.dart';
import 'package:mydeck/models/entitites/md_file.dart';
import 'package:mydeck/services/repositories/card_repository.dart';
import 'package:mydeck/services/repositories/deck_repository.dart';
import 'package:mydeck/models/entitites/card.dart';
import 'package:mydeck/models/entitites/deck.dart';
import 'package:mydeck/services/repositories/file_repository.dart';
import 'package:mydeck/services/usecases/usecase.dart';

class SaveDeckChangesUsecase extends UseCase<StorageFailure, Deck, Params> {
  final DeckRepository _myDeckRepository;
  final FileRepository _fileRepository;

  SaveDeckChangesUsecase(this._myDeckRepository, this._fileRepository);

  @override
  Future<Either<StorageFailure<Deck>, Deck>> call(Params params) async {
    //1. Update deck entities in DB
    final deckFuture = _myDeckRepository.updateDeck(params.newDeck);
    //2. Get old and new files
    final oldFiles = _getAllFiles(params.oldDeck);
    final newFiles = _getAllFiles(params.newDeck);
    //3. Parallely sort files to Add and to Delete
    final filesToAdd = _sortFilesToAdd(oldFiles, newFiles);
    final filesToDelete = _sortFilesToDelete(oldFiles, newFiles);

    return (await deckFuture).fold((l) => left(l), (r) async {
      Future<Option<StorageFailure>> updateFilesResult;
      Future<Option<StorageFailure>> deleteFilesResult;
      if (filesToAdd.isNotEmpty) {
        updateFilesResult = _fileRepository.updateFiles(filesToAdd);
      }
      if (filesToDelete.isNotEmpty) {
        deleteFilesResult = _fileRepository.deleteFiles(filesToDelete);
      }

      if ((await updateFilesResult).isSome() ||
          (await deleteFilesResult).isSome()) {
        return left(
            StorageFailure.updateFailure(failureObject: params.newDeck));
      } else {
        return right(params.newDeck);
      }
    });
  }

  List<MDFile> _getAllFiles(Deck deck) =>
      deck.cardsList.map((e) => e.answer).toList()
        ..addAll(deck.cardsList.map((e) => e.question).toList())
        ..add(deck.avatar.getOrCrash);

  List<MDFile> _sortFilesToAdd(List<MDFile> oldFiles, List<MDFile> newFiles) {
    final tempList = List.of(newFiles);
    tempList.retainWhere((e) => !oldFiles
        .map((e) => e.uniqueId.getOrCrash)
        .contains(e.uniqueId.getOrCrash));
    return tempList;
  }

  List<MDFile> _sortFilesToDelete(
      List<MDFile> oldFiles, List<MDFile> newFiles) {
    final tempList = List.of(oldFiles);
    tempList.retainWhere((e) => !newFiles
        .map((e) => e.uniqueId.getOrCrash)
        .contains(e.uniqueId.getOrCrash));
    return tempList;
  }
}

class Params extends Equatable {
  final Deck oldDeck;
  final Deck newDeck;

  Params(this.oldDeck, this.newDeck);

  @override
  List<Object> get props => [oldDeck, newDeck];
}
