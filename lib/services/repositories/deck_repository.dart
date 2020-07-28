import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:mydeck/errors/exception.dart';
import 'package:mydeck/errors/storage_failure.dart';
import 'package:mydeck/models/dtos/file_dto.dart';
import 'package:mydeck/models/entitites/my_deck_file.dart';
import 'package:mydeck/models/value_objects/deck_avatar.dart';
import 'package:mydeck/models/value_objects/deck_description.dart';
import 'package:mydeck/models/value_objects/deck_title.dart';
import 'package:mydeck/models/value_objects/user_model.dart';
import 'package:mydeck/utils/dependency_injection.dart';
import 'package:mydeck/utils/network_connection.dart';

import 'package:mydeck/services/datasources/deck_network_datasource.dart';
import 'package:mydeck/models/dtos/deck_category.dart';
import 'package:mydeck/models/dtos/deck_dto.dart';
import 'package:mydeck/models/entitites/card.dart';
import 'package:mydeck/models/entitites/deck.dart';
import 'package:mydeck/models/entitites/unique_id.dart';
import 'package:rxdart/rxdart.dart';

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
        final networkDecks = await networkDataSource.getAllDecksOfCurrentUser();
        final deckEntities =
            networkDecks.map((deck) => deck.toDomain()).toList();
        return right(deckEntities);
      } else {
        return left(
            StorageFailure.networkFailure(message: "No internet connection"));
      }
    } catch (exception) {
      return left(StorageFailure.getFailure());
    } on NetworkTimeoutException catch (e) {
      return left(StorageFailure.networkFailure(message: e.message));
    }
  }

  @override
  Future<Either<StorageFailure, Deck>> getDeckById(UniqueId id) async {
    try {
      if (await networkConnection.isConnected) {
        return id.value.fold((failure) => Left(StorageFailure.getFailure()),
            (uuid) async {
          final deck = await networkDataSource.getDeckById(id.getOrCrash);
          final deckDto = deck.deck;
          final deckAuthor = deck.user;
          return right(deckDto.toDomain().copyWith(author: deckAuthor));
        });
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
//      final bothers = await entitiesSeparator.separateMediaContentOfDeck(deck);
//      await mediaDataSource.addFileToAppCache(bothers.right);
      //await localDataSource.addDeck(bothers.left.toModel());

      if (await networkConnection.isConnected) {
        await networkDataSource.addDeck(DeckDto.fromDomain(deck));
      } else {
        return left(StorageFailure.networkFailure());
      }

      return right(deck);
    } on CacheException {
      return left(StorageFailure.insertFailure(failureObject: deck));
    }
  }

  @override
  Future<Either<StorageFailure<Deck>, Deck>> updateDeck(Deck deck) async {
    try {
//      final bothers = await entitiesSeparator.separateMediaContentOfDeck(deck);
//      await mediaDataSource.addFileToAppCache(bothers.right);
      // await localDataSource.updateDeck(bothers.left.toModel());

      if (await sl.get<NetworkConnection>().isConnected) {
        await networkDataSource.updateDeck(DeckDto.fromDomain(deck));
      } else {
        return left(StorageFailure.networkFailure());
      }

      return right(deck);
    } on CacheException {
      return left(StorageFailure.updateFailure(failureObject: deck));
    }
  }

  @override
  Future<Option<StorageFailure<Deck>>> deleteDeck(Deck deck) async {
    try {
//      final bother = await entitiesSeparator.separateMediaContentOfDeck(deck);
//      await mediaDataSource.deleteFileFromAppCache(bother.right.right);

      // await deleteCards(bother.left.cardsList
      //           .map((c) => c.toModel(bother.left.deckId))
      //          .toList());
      //
      //       await localDataSource.deleteDeck(bother.left.toModel());

      if (await sl.get<NetworkConnection>().isConnected) {
        networkDataSource.deleteDeck(DeckDto.fromDomain(deck));
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
  Future<Either<StorageFailure<Deck>, Deck>> addDeck(Deck deck) {
    // TODO: implement addDeck
    throw UnimplementedError();
  }

  @override
  Future<Option<StorageFailure<Deck>>> deleteDeck(Deck deck) {
    // TODO: implement deleteDeck
    throw UnimplementedError();
  }

  @override
  Future<Either<StorageFailure, List<Deck>>> getCurrentUserAllDecks() async {
    final List<Deck> result = [];
    for (int i = 0; i <= Random().nextInt(20); i++) {
      final deckAvatar = ImageFile(uniqueId: UniqueId());
      await fileRepository.getFileByMeta(UniqueId(), ContentType.TEXT);
      result.add(Deck(
          author: UserModel(UniqueId().getOrCrash, 'UserMuser', 'he@gmail.com',
              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQbGZWvtAbu8uQvxvm7LBZQHNDJU5SZJhAjqw&usqp=CAU'),
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
          title: DeckTitle(
              _deckTitles[Random().nextInt(_deckTitles.length - 1)])));
    }
    return right(result);
  }

  @override
  Future<Either<StorageFailure, Deck>> getDeckById(UniqueId deckId) {
    // TODO: implement getDeckById
    throw UnimplementedError();
  }

  @override
  Future<Either<StorageFailure, List<Deck>>> loadDecksPageForCategory(
      DeckCategory deckCategory, int pageCount) {
    // TODO: implement loadDecksPageForCategory
    throw UnimplementedError();
  }

  @override
  Future<Either<StorageFailure<Deck>, Deck>> updateDeck(Deck deck) {
    // TODO: implement updateDeck
    throw UnimplementedError();
  }
}
