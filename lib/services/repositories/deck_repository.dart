import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:mydeck/errors/exception.dart';
import 'package:mydeck/errors/storage_failure.dart';
import 'package:mydeck/models/dtos/file_dto.dart';
import 'package:mydeck/models/entitites/md_file.dart';
import 'package:mydeck/models/entitites/user.dart';
import 'package:mydeck/models/value_objects/deck_avatar.dart';
import 'package:mydeck/models/value_objects/deck_description.dart';
import 'package:mydeck/models/value_objects/deck_title.dart';
import 'package:mydeck/models/dtos/user_dto.dart';
import 'package:mydeck/models/value_objects/email_address.dart';
import 'package:mydeck/models/value_objects/username.dart';
import 'package:mydeck/utils/dependency_injection.dart';
import 'package:mydeck/utils/network_connection.dart';

import 'package:mydeck/services/datasources/deck_network_datasource.dart';
import 'package:mydeck/models/dtos/deck_category.dart';
import 'package:mydeck/models/dtos/deck_dto.dart';
import 'package:mydeck/models/entitites/card.dart';
import 'package:mydeck/models/entitites/deck.dart';
import 'package:mydeck/models/entitites/unique_id.dart';

import 'file_repository.dart';

abstract class DeckRepository {
  Future<Either<StorageFailure, List<Deck>>> getCurrentUserAllDecks();

  Future<Either<StorageFailure, List<Deck>>> loadDecksPageForCategory(
      DeckCategory category, int pageCount);

  Future<Either<StorageFailure, Deck>> getDeckById(UniqueId id);

  Future<Either<StorageFailure<Deck>, Deck>> addDeck(Deck deck);

  Future<Either<StorageFailure<Deck>, Deck>> updateDeck(Deck deck);

  Future<Option<StorageFailure<Deck>>> deleteDeck(Deck deck);
}

class DeckRepositoryImpl implements DeckRepository {
  final DeckNetworkDataSource networkDataSource;
  final NetworkConnection networkConnection;

  DeckRepositoryImpl({
    @required this.networkConnection,
    @required this.networkDataSource,
  });

  @override
  Future<Either<StorageFailure, List<Deck>>> getCurrentUserAllDecks() async {
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
  Future<Either<StorageFailure, Deck>> getDeckById(UniqueId id) async {
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
  Future<Either<StorageFailure<Deck>, Deck>> addDeck(Deck deck) async {
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
  Future<Either<StorageFailure<Deck>, Deck>> updateDeck(Deck deck) async {
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
  Future<Option<StorageFailure<Deck>>> deleteDeck(Deck deck) async {
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
  Future<Either<StorageFailure, List<Deck>>> loadDecksPageForCategory(
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
  Future<Either<StorageFailure<Deck>, Deck>> addDeck(Deck deck) async {
    // TODO: implement addDeck
    return left(StorageFailure.networkFailure());
  }

  @override
  Future<Option<StorageFailure<Deck>>> deleteDeck(Deck deck) async {
    // TODO: implement deleteDeck
    return some(StorageFailure.networkFailure());
  }

  @override
  Future<Either<StorageFailure, List<Deck>>> getCurrentUserAllDecks() async {
    final List<Deck> result = [];
    for (int i = 0; i <= Random().nextInt(20); i++) {
      final deckAvatar = ImageFile(uniqueId: UniqueId());
      await fileRepository.getFileByMeta(UniqueId(), FileType.TEXT);
      result.add(Deck(
          author: User(
              avatar: ImageFile(uniqueId: UniqueId()),
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
  Future<Either<StorageFailure, Deck>> getDeckById(UniqueId deckId) async {
    // TODO: implement getDeckById
    return left(StorageFailure.networkFailure());
  }

  @override
  Future<Either<StorageFailure, List<Deck>>> loadDecksPageForCategory(
      DeckCategory deckCategory, int pageCount) async {
    // TODO: implement loadDecksPageForCategory
    return left(StorageFailure.networkFailure());
  }

  @override
  Future<Either<StorageFailure<Deck>, Deck>> updateDeck(Deck deck) async {
    // TODO: implement updateDeck
    return left(StorageFailure.networkFailure());
  }
}
