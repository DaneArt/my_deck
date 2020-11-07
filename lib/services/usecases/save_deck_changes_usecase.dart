import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:mydeck/errors/storage_failure.dart';
import 'package:mydeck/models/entitites/mde_deck.dart';
import 'package:mydeck/models/entitites/mde_file.dart';
import 'package:mydeck/services/repositories/deck_repository.dart';
import 'package:mydeck/services/repositories/file_repository.dart';
import 'package:mydeck/services/usecases/usecase.dart';

class SaveDeckChangesUsecase extends UseCase<StorageFailure, MDEDeck, Params> {
  final DeckRepository _myDeckRepository;
  final FileRepository _fileRepository;

  SaveDeckChangesUsecase(this._myDeckRepository, this._fileRepository);

  @override
  Future<Either<StorageFailure<MDEDeck>, MDEDeck>> call(Params params) async {
    //1. Update deck entities in DB
    final deckFuture = _myDeckRepository.updateDeck(params.newDeck);
    //2. Get old and new files
    final oldFiles = _getAllFiles(params.oldDeck);
    final newFiles = _getAllFiles(params.newDeck);
    //3. Parallely sort files to Update and to Delete
    final filesToAdd = _sortFilesToUpdate(oldFiles, newFiles);
    final filesToDelete = _sortFilesToDelete(oldFiles, newFiles);

    return (await deckFuture).fold((l) => left(l), (r) async {
      Option<StorageFailure> updateFilesResult;
      Option<StorageFailure> deleteFilesResult;
      if (filesToAdd.isNotEmpty) {
        updateFilesResult = await _fileRepository.updateFiles(filesToAdd);
      }
      if (filesToDelete.isNotEmpty) {
        deleteFilesResult = await _fileRepository.deleteFiles(filesToDelete);
      }

      if (((updateFilesResult != null) &&
              (updateFilesResult.isSome())) ||
          ((deleteFilesResult != null) &&
              (deleteFilesResult.isSome()))) {
        return left(
            StorageFailure.updateFailure(failureObject: params.newDeck));
      } else {
        return right(params.newDeck);
      }
    });
  }

  List<MDEFile> _getAllFiles(MDEDeck deck) =>
      deck.cardsList.map((e) => e.answer).toList()
        ..addAll(deck.cardsList.map((e) => e.question).toList())
        ..add(deck.avatar.getOrCrash);

  List<MDEFile> _sortFilesToUpdate(List<MDEFile> oldFiles, List<MDEFile> newFiles) {
    final tempList = List.of(newFiles);
    tempList.retainWhere((e) => oldFiles
        .map((e) => e.uniqueId.getOrCrash)
        .contains(e.uniqueId.getOrCrash));
    return tempList;
  }

  List<MDEFile> _sortFilesToDelete(
      List<MDEFile> oldFiles, List<MDEFile> newFiles) {
    final tempList = List.of(oldFiles);
    tempList.retainWhere((e) => !newFiles
        .map((e) => e.uniqueId.getOrCrash)
        .contains(e.uniqueId.getOrCrash));
    return tempList;
  }
}

class Params extends Equatable {
  final MDEDeck oldDeck;
  final MDEDeck newDeck;

  Params(this.oldDeck, this.newDeck);

  @override
  List<Object> get props => [oldDeck, newDeck];
}
