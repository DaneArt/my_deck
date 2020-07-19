import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:mydeck/core/error/exception.dart';
import 'package:mydeck/core/error/storage_failure.dart';
import 'package:mydeck/core/injection/dependency_injection.dart';
import 'package:mydeck/core/network/network_connection.dart';

import 'package:mydeck/features/my_deck/data/datasources/my_deck_network_datasource.dart';
import 'package:mydeck/features/my_deck/data/models/deck_category.dart';
import 'package:mydeck/features/my_deck/data/models/deck_dto.dart';
import 'package:mydeck/features/my_deck/domain/entities/card.dart';
import 'package:mydeck/features/my_deck/domain/entities/deck.dart';
import 'package:mydeck/features/my_deck/domain/entities/unique_id.dart';
import 'package:rxdart/rxdart.dart';

abstract class MyDeckRepository {
  Future<Either<StorageFailure, List<Deck>>> getCurrentUserAllDecks();

  Future<Either<StorageFailure, List<Deck>>> loadDecksPageForCategory(
      DeckCategory category, int pageCount);

  Future<Either<StorageFailure, Deck>> getDeckById(UniqueId id);

  Future<Either<StorageFailure<Deck>, Deck>> addDeck(Deck deck);

  Future<Either<StorageFailure<Deck>, Deck>> updateDeck(Deck deck);

  Future<Option<StorageFailure<Deck>>> deleteDeck(Deck deck);
}

class MyDeckRepositoryImpl extends MyDeckRepository {
  final MyDeckNetworkDataSource networkDataSource;
  final NetworkConnection networkConnection;

  MyDeckRepositoryImpl({
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
