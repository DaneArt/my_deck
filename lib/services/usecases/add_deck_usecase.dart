import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:mydeck/errors/storage_failure.dart';
import 'package:mydeck/models/entitites/mde_deck.dart';
import 'package:mydeck/models/entitites/mde_file.dart';
import 'package:mydeck/services/repositories/deck_repository.dart';
import 'package:mydeck/services/repositories/file_repository.dart';
import 'package:mydeck/services/usecases/usecase.dart';
import 'package:meta/meta.dart';

class AddDeckUseCase extends UseCase<StorageFailure<MDEDeck>, MDEDeck, Params> {
  final DeckRepository _myDeckRepository;
  final FileRepository _fileRepository;

  AddDeckUseCase(
      {@required FileRepository fileRepository,
      @required DeckRepository myDeckRepository})
      : _fileRepository = fileRepository,
        _myDeckRepository = myDeckRepository;

  @override
  Future<Either<StorageFailure<MDEDeck>, MDEDeck>> call(params) async {
    //1. Update deck entities in DB
    final deckFuture = _myDeckRepository.addDeck(params.deck);
    //2. Get all deck files
    final files = _getAllFiles(params.deck);
    
    //3. save files and return result
    return (await deckFuture).fold((l) => left(l), (r) async {
      Option<StorageFailure> saveFilesResult;
     
      if (files.isNotEmpty) {
        saveFilesResult = await _fileRepository.addFiles(files);
      }
    
      if ((saveFilesResult != null) && (saveFilesResult.isSome())) {
        return left(
            StorageFailure.updateFailure(failureObject: params.deck));
      } else {
        return right(params.deck);
      }
    });


  }

  //get all files to save from deck 
  List<MDEFile> _getAllFiles(MDEDeck deck) =>
      deck.cardsList.map((e) => e.answer).toList()
        ..addAll(deck.cardsList.map((e) => e.question).toList())
        ..add(deck.avatar.getOrCrash);
}

class Params extends Equatable {
  final MDEDeck deck;

  Params(this.deck);

  @override
  List<Object> get props => [deck];
}
