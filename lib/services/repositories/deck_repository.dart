import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:mydeck/errors/exception.dart';
import 'package:mydeck/errors/storage_failure.dart';
import 'package:mydeck/models/dtos/file_dto.dart';
import 'package:mydeck/models/entitites/mde_deck.dart';
import 'package:mydeck/models/entitites/mde_file.dart';
import 'package:mydeck/models/entitites/user.dart';
import 'package:mydeck/models/value_objects/deck_avatar.dart';
import 'package:mydeck/models/value_objects/deck_description.dart';
import 'package:mydeck/models/value_objects/deck_title.dart';
import 'package:mydeck/models/value_objects/email_address.dart';
import 'package:mydeck/models/value_objects/unique_id.dart';
import 'package:mydeck/models/value_objects/username.dart';
import 'package:mydeck/utils/dependency_injection.dart';
import 'package:mydeck/utils/network_connection.dart';
import 'package:mydeck/services/datasources/deck_network_datasource.dart';
import 'package:mydeck/models/dtos/deck_category.dart';
import 'package:mydeck/models/dtos/deck_dto.dart';

import 'file_repository.dart';

abstract class DeckRepository {
  Future<Either<StorageFailure, List<MDEDeck>>> getCurrentUserAllDecks();

  Future<Either<StorageFailure, List<MDEDeck>>> loadDecksPageForCategory(
      DeckCategory category, int pageCount);

  Future<Either<StorageFailure, MDEDeck>> getDeckById(UniqueId id);

  Future<Either<StorageFailure<MDEDeck>, MDEDeck>> addDeck(MDEDeck deck);

  Future<Either<StorageFailure<MDEDeck>, MDEDeck>> updateDeck(MDEDeck deck);

  Future<Option<StorageFailure<MDEDeck>>> deleteDeck(MDEDeck deck);
}

class DeckRepositoryImpl implements DeckRepository {
  final DeckNetworkDataSource networkDataSource;
  final NetworkConnection networkConnection;

  DeckRepositoryImpl({
    @required this.networkConnection,
    @required this.networkDataSource,
  });

  @override
  Future<Either<StorageFailure, List<MDEDeck>>> getCurrentUserAllDecks() async {
    try {
      if (await networkConnection.isConnected) {
        final networkDecks = networkDataSource.getAllDecksOfCurrentUser();
        final deckEntities =
            (await networkDecks).map((deck) => deck.toDomain()).toList();
        return right(deckEntities);
      } else {
        return left(StorageFailure.networkFailure());
      }
    } on NetworkTimeoutException catch (e) {
      return left(StorageFailure.networkFailure());
    } catch (exception) {
      return left(StorageFailure.getFailure());
    }
  }

  @override
  Future<Either<StorageFailure, MDEDeck>> getDeckById(UniqueId id) async {
    try {
      if (await networkConnection.isConnected) {
        final deck = await networkDataSource.getDeckById(id.getOrCrash);
        final deckDto = deck.deck;
        final deckAuthor = deck.user;
        return right(
            deckDto.toDomain().copyWith(author: deckAuthor.toDomain()));
      } else {
        return left(StorageFailure.networkFailure());
      }
    } on CacheException {
      return Left(StorageFailure.getFailure());
    }
  }

  @override
  Future<Either<StorageFailure<MDEDeck>, MDEDeck>> addDeck(MDEDeck deck) async {
    try {
      if (await networkConnection.isConnected) {
        await networkDataSource.addDeck(DeckDto.fromDomain(deck));
      } else {
        return left(StorageFailure.networkFailure());
      }

      return right(deck);
    } on NetworkException {
      return left(StorageFailure.insertFailure(failureObject: deck));
    } catch (e) {
      return left(StorageFailure.serverFailure());
    }
  }

  @override
  Future<Either<StorageFailure<MDEDeck>, MDEDeck>> updateDeck(MDEDeck deck) async {
    try {
      if (await sl.get<NetworkConnection>().isConnected) {
        await networkDataSource.updateDeck(DeckDto.fromDomain(deck));
      } else {
        return left(StorageFailure.networkFailure());
      }

      return right(deck);
    } on CacheException {
      return left(StorageFailure.updateFailure(failureObject: deck));
    } on NetworkException {
      return left(StorageFailure.updateFailure(failureObject: deck));
    }
  }

  @override
  Future<Option<StorageFailure<MDEDeck>>> deleteDeck(MDEDeck deck) async {
    try {
      if (await sl.get<NetworkConnection>().isConnected) {
        await networkDataSource.deleteDeck(DeckDto.fromDomain(deck));
      } else {
        return some(StorageFailure.networkFailure());
      }

      return none();
    } on CacheException {
      return some(StorageFailure.deleteFailure(failureObject: deck));
    }
  }

  @override
  Future<Either<StorageFailure, List<MDEDeck>>> loadDecksPageForCategory(
      DeckCategory category, int pageCount) async {
    try {
      if (await networkConnection.isConnected) {
        final decks = await networkDataSource.loadDecksPageForCategory(
            category.categoryName, pageCount);
        return right(decks.map((deck) => deck.toDomain()).toList());
      } else {
        return left(StorageFailure.networkFailure());
      }
    } catch (e) {
      return left(StorageFailure.networkFailure());
    }
  }
}

class FakeDeckRepository implements DeckRepository {
  final FileRepository fileRepository;

  FakeDeckRepository(this.fileRepository);

  final _deckTitles = [
    'Gaymoda',
    'Society',
    'English',
    'Brands',
    'Americas',
    'Global warmingggggggggggg',
    'USA presidents'
  ];


  @override
  Future<Either<StorageFailure, List<MDEDeck>>> getCurrentUserAllDecks() async {
    final List<MDEDeck> result = [];
    for (int i = 0; i <= Random().nextInt(20); i++) {
      final deckAvatar = MDImageFile(uniqueId: UniqueId());
      await fileRepository.getFileByMeta(UniqueId(), FileType.TEXT);
      result.add(MDEDeck(
          author: MDEUser(
              avatar: MDImageFile(uniqueId: UniqueId()),
              email: EmailAddress(''),
              subscribers: [],
              subscribes: [],
              userId: UniqueId(),
              username: Username('')),
          avatar: DeckAvatar(deckAvatar),
          category: kDefaultCategories[
              Random().nextInt(kDefaultCategories.length - 1)],
          deckId: UniqueId(),
          description: DeckDescription('Some'),
          isPrivate: Random().nextBool(),
          cardsCount: Random().nextInt(20),
          subscribers: [],
          subscribersCount: Random().nextInt(100),
          cardsList: [],
          title:
              DeckTitle(_deckTitles[Random().nextInt(_deckTitles.length - 1)]),
          availableQuickTrain: true));
    }
    return right(result);
  }

  @override
  Future<Either<StorageFailure<MDEDeck>, MDEDeck>> addDeck(MDEDeck deck) {
      // TODO: implement addDeck
      throw UnimplementedError();
    }
  
    @override
    Future<Option<StorageFailure<MDEDeck>>> deleteDeck(MDEDeck deck) {
      // TODO: implement deleteDeck
      throw UnimplementedError();
    }
  
    @override
    Future<Either<StorageFailure, MDEDeck>> getDeckById(UniqueId id) {
      // TODO: implement getDeckById
      throw UnimplementedError();
    }
  
    @override
    Future<Either<StorageFailure, List<MDEDeck>>> loadDecksPageForCategory(DeckCategory category, int pageCount) {
      // TODO: implement loadDecksPageForCategory
      throw UnimplementedError();
    }
  
    @override
    Future<Either<StorageFailure<MDEDeck>, MDEDeck>> updateDeck(MDEDeck deck) {
    // TODO: implement updateDeck
    throw UnimplementedError();
  }


}
