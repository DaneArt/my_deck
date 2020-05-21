import 'dart:io';
import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:mydeck/core/error/storage_failure.dart';
import 'package:mydeck/core/injection/dependency_injection.dart';
import 'package:mydeck/core/network/network_connection.dart';
import 'package:mydeck/features/my_deck/data/datasources/media/entities_separator.dart';
import 'package:mydeck/features/my_deck/data/datasources/media/my_deck_media_datasource.dart';
import 'package:mydeck/features/my_deck/data/datasources/my_deck_local_datasource.dart';
import 'package:mydeck/features/my_deck/data/datasources/my_deck_network_datasource.dart';
import 'package:mydeck/features/my_deck/data/models/card_model.dart';
import 'package:mydeck/features/my_deck/data/models/category_model.dart';
import 'package:mydeck/features/my_deck/data/models/deck_model.dart';
import 'package:mydeck/features/my_deck/domain/entities/card.dart';
import 'package:mydeck/features/my_deck/domain/entities/card_content.dart';
import 'package:mydeck/features/my_deck/domain/entities/deck.dart';
import 'package:mydeck/core/error/exception.dart';
import 'package:mydeck/features/sign_in/data/models/user_model.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uuid/uuid.dart';

abstract class MyDeckRepository {
  Future<Either<StorageFailure, List<DeckLibrary>>> getCurrentUserAllDecks();
  Future<Either<StorageFailure, List<DeckOnline>>> loadDecksPageForCategory(
      CategoryModel category, int pageCount);
  Future<Either<StorageFailure, Observable<List<DeckLibrary>>>>
      getCurrentUserAllDecksAsStream();

  Future<Either<StorageFailure, Deck>> getDeckById(String id);

  Future<Either<StorageFailure<List<CardModel>>, List<CardModel>>> addCards(
      List<CardModel> cards);

  Future<Either<StorageFailure<List<CardModel>>, List<CardModel>>> updateCards(
      List<CardModel> cards);

  Future<Option<StorageFailure<List<CardModel>>>> deleteCards(
      List<CardModel> cards);

  Future<Either<StorageFailure<DeckLibrary>, DeckLibrary>> addDeck(
      DeckLibrary deck);

  Future<Either<StorageFailure<DeckLibrary>, DeckLibrary>> updateDeck(
      Deck deck);

  Future<Option<StorageFailure<DeckLibrary>>> deleteDeckWithCards(
      DeckLibrary deck);

  Future<Either<StorageFailure<DeckLibrary>, DeckLibrary>> addDeckWithCards(
      DeckLibrary deck);
}

class MyDeckRepositoryImpl extends MyDeckRepository {
  final MyDeckLocalDataSource localDataSource;
  final MyDeckNetworkDataSource networkDataSource;
  final MyDeckMediaDataSource mediaDataSource;
  final NetworkConnection networkConnection;

  final EntitiesSeparator entitiesSeparator;

  MyDeckRepositoryImpl({
    @required this.networkConnection,
    @required this.mediaDataSource,
    @required this.networkDataSource,
    @required this.localDataSource,
    @required this.entitiesSeparator,
  });

  @override
  Future<Either<StorageFailure, List<DeckLibrary>>>
      getCurrentUserAllDecks() async {
    try {
      if (await networkConnection.isConnected) {
        final networkDecks = await networkDataSource.getAllDecksOfCurrentUser();
        final deckEntities = networkDecks.map((deck) {
          final DeckLibrary result = Deck.fromModel(deck.deckModel);
          final cards =
              deck.cardModels.map((card) => Card.fromModel(card)).toList();
          return result.copyWith(cardsList: cards);
        }).toList();
        return right(deckEntities);
      } else {
        // final decks = await localDataSource.getAllDecks();
        // final cards = await localDataSource.getAllCards();
        // final filledDecks = await _fillDecksWithCards(decks, cards);
        // return right(filledDecks);
        return left(StorageFailure.networkFailure());
      }
    } catch (exception) {
      return left(StorageFailure.getFailure());
    }
  }

  @override
  Future<Either<StorageFailure, Observable<List<DeckLibrary>>>>
      getCurrentUserAllDecksAsStream() async {
    try {
      final decksObservable = await localDataSource.getAllDecksAsStream();
      final cardsObservable = await localDataSource.getAllCardsAsStream();
      return Right(decksObservable.zipWith<List<CardModel>, List<DeckLibrary>>(
          cardsObservable, (decks, cards) {
        return decks
            .map((deck) => (Deck.fromModel(deck) as DeckLibrary)
              ..cardsList.addAll(cards
                  .where((c) => c.parentDeckId == deck.deckId)
                  .map((c) => Card.fromModel(c))
                  .toList()))
            .toList();
      }));
    } on CacheException {
      return Left(StorageFailure.getFailure());
    }
  }

  @override
  Future<Either<StorageFailure, DeckLibrary>> getDeckById(String id) async {
    try {
      // final deck = await localDataSource.getDeckById(id);
      // final cards = await localDataSource.getCardsForDeck(id);
      // final filledDeck = Deck.fromModel(deck);
      // filledDeck.cardsList.addAll(cards.map((c) => Card.fromModel(c)));
      if (await networkConnection.isConnected) {
        final deck = await networkDataSource.getDeckById(id);

        return Right(Deck.fromModel(deck));
      } else {
        return Left(StorageFailure.networkFailure());
      }
    } on CacheException {
      return Left(StorageFailure.getFailure());
    }
  }

  @override
  Future<Either<StorageFailure<List<CardModel>>, List<CardModel>>> updateCards(
      List<CardModel> cards) async {
    try {
      final bothers =
          await entitiesSeparator.separateMediaContentOfCards(cards);

      await mediaDataSource.addFilesToAppCache(bothers.right);

      //await localDataSource.updateCards(bothers.left);

      if (await networkConnection.isConnected) {
        await networkDataSource.updateCards(bothers.left);
      } else {
        return left(StorageFailure.networkFailure());
      }

      return right(cards);
    } on CacheException {
      return left(StorageFailure.updateFailure(failureObject: cards));
    }
  }

  // Future<List<Deck>> _fillDecksWithCards(
  //     List<DeckModel> decks, List<CardModel> cards) async {
  //   final List<Deck> result = [];
  //   for (DeckModel deck in decks) {
  //     Deck temp = Deck.fromModel(deck);

  //     temp.cardsList.addAll(cards
  //         .where((c) => c.parentDeckId == deck.deckId)
  //         .map((card) => Card.fromModel(card)));
  //     result.add(temp);
  //   }
  //   return result;
  // }

  @override
  Future<Either<StorageFailure<DeckLibrary>, DeckLibrary>> addDeck(
      Deck deck) async {
    try {
      final bothers = await entitiesSeparator.separateMediaContentOfDeck(deck);
      await mediaDataSource.addFileToAppCache(bothers.right);
      //await localDataSource.addDeck(bothers.left.toModel());

      if (await networkConnection.isConnected) {
        await networkDataSource.addDeck(bothers.left.model);
      } else {
        return left(StorageFailure.networkFailure());
      }

      return right(deck);
    } on CacheException {
      return left(StorageFailure.insertFailure(failureObject: deck));
    }
  }

  @override
  Future<Either<StorageFailure<DeckLibrary>, DeckLibrary>> updateDeck(
      Deck deck) async {
    try {
      final bothers = await entitiesSeparator.separateMediaContentOfDeck(deck);
      await mediaDataSource.addFileToAppCache(bothers.right);
      // await localDataSource.updateDeck(bothers.left.toModel());

      if (await sl.get<NetworkConnection>().isConnected) {
        await networkDataSource.updateDeck(bothers.left.model);
      } else {
        return left(StorageFailure.networkFailure());
      }

      return right(deck);
    } on CacheException {
      return left(StorageFailure.updateFailure(failureObject: deck));
    }
  }

  @override
  Future<Either<StorageFailure<DeckLibrary>, DeckLibrary>> addDeckWithCards(
      DeckLibrary deck) async {
    try {
      final deckResult = await addDeck(deck);
      final cardsResult = await addCards(
          deck.cardsList.map((c) => c.toModel(deck.deckId)).toList());
      if (deckResult.isRight() && cardsResult.isRight()) {
        return right(deck);
      } else {
        return left(StorageFailure.insertFailure(failureObject: deck));
      }
    } on CacheException {
      return left(StorageFailure.insertFailure(failureObject: deck));
    }
  }

  @override
  Future<Either<StorageFailure<List<CardModel>>, List<CardModel>>> addCards(
      List<CardModel> cards) async {
    try {
      final bothers =
          await entitiesSeparator.separateMediaContentOfCards(cards);
      await mediaDataSource.addFilesToAppCache(bothers.right);
      //await localDataSource.addCards(bothers.left);

      if (await sl.get<NetworkConnection>().isConnected) {
        await networkDataSource.addCards(bothers.left);
      } else {
        return left(StorageFailure.networkFailure());
      }
      return right(cards);
    } on CacheException {
      return left(StorageFailure.insertFailure(failureObject: cards));
    }
  }

  @override
  Future<Option<StorageFailure<List<CardModel>>>> deleteCards(
      List<CardModel> cards) async {
    try {
      final bothers =
          await entitiesSeparator.separateMediaContentOfCards(cards);
      mediaDataSource
          .deleteFilesFromAppCache(bothers.right.map((b) => b.right).toList());
      // await localDataSource.deleteCards(bothers.left);
      if (await networkConnection.isConnected) {
        await networkDataSource.deleteCards(bothers.left);
      } else {
        return some(StorageFailure.deleteFailure(failureObject: cards));
      }

      return none();
    } on CacheException {
      return some(StorageFailure.deleteFailure(failureObject: cards));
    }
  }

  @override
  Future<Option<StorageFailure<DeckLibrary>>> deleteDeckWithCards(
      DeckLibrary deck) async {
    try {
      final bother = await entitiesSeparator.separateMediaContentOfDeck(deck);
      await mediaDataSource.deleteFileFromAppCache(bother.right.right);

      // await deleteCards(bother.left.cardsList
      //           .map((c) => c.toModel(bother.left.deckId))
      //          .toList());
      //
      //       await localDataSource.deleteDeck(bother.left.toModel());

      if (await sl.get<NetworkConnection>().isConnected) {
        networkDataSource.deleteDeck(bother.left.model);
      } else {
        return some(StorageFailure.networkFailure());
      }

      return none();
    } on CacheException {
      return some(StorageFailure.deleteFailure(failureObject: deck));
    }
  }

  @override
  Future<Either<StorageFailure, List<DeckOnline>>> loadDecksPageForCategory(
      CategoryModel category, int pageCount) async {
    try {
      if (await networkConnection.isConnected) {
        final decks = await networkDataSource.loadDecksPageForCategory(
            category.categoryName, pageCount);
        return right(
            decks.map((deck) => Deck.fromModel(deck) as DeckOnline).toList());
      } else {
        return left(StorageFailure.networkFailure());
      }
    } catch (e) {
      return left(StorageFailure.networkFailure());
    }
  }
}

// class FakeRepositoryImpl extends MyDeckRepository {
//   final List<String> icons = [
//     'https://openclipart.org/image/2400px/svg_to_png/191351/Math-Girl-.png',
//     'https://dop.pskovedu.ru/file/download/dop/65CB41829539F92ACB1BC8FC047B6EF8',
//     'https://hb.bizmrg.com/money-talks/wp-content/uploads/2018/07/1-12.jpg',
//     'https://media.kg-portal.ru/anime/j/jojosbizarreadventurestardustcrusaders2/images/jojosbizarreadventurestardustcrusaders2_408.jpg',
//     'https://avatars.mds.yandex.net/get-pdb/214107/8124ccdd-2d51-442b-bec3-fd3fb89d6d05/s1200',
//     'https://www.ridus.ru/images/2018/5/22/768099/in_article_1b82489b2f.jpg'
//   ];

//   final List<String> titles = [
//     'Math',
//     'English',
//     'Trigonometry',
//     'Anime',
//     'Joja',
//     'Jopaneese',
//     'Leha_script'
//   ];

//   @override
//   Future<Either<StorageFailure<List<CardModel>>, List<CardModel>>> addCards(
//       List<CardModel> cards) {
//     return null;
//   }

//   @override
//   Future<Either<StorageFailure<Deck>, Deck>> addDeck(Deck deck) {
//     return null;
//   }

//   @override
//   Future<Either<StorageFailure<Deck>, Deck>> addDeckWithCards(Deck deck) {
//     return null;
//   }

//   @override
//   Future<Option<StorageFailure<List<CardModel>>>> deleteCards(
//       List<CardModel> cards) {
//     return null;
//   }

//   @override
//   Future<Option<StorageFailure<Deck>>> deleteDeckWithCards(Deck deck) {
//     return null;
//   }

//   @override
//   Future<Either<StorageFailure, List<Deck>>> getCurrentUserAllDecks() async {
//     final rand = Random();
//     final List<Deck> decks = [];
//     for (int i = 0; i < rand.nextInt(5); i++) {
//       final List<Card> cards = [];
//       for (int j = 0; j < rand.nextInt(2); j++) {
//         cards.add(Card(
//             cardId: Uuid().v4(),
//             answer: CardContent.textContent(text: 'Ans_${i}_$j'),
//             question: CardContent.textContent(text: 'Que_${i}_$j'),
//             trains: 0,
//             wins: 0,
//             lastTrain: DateTime.fromMillisecondsSinceEpoch(0),
//             level: 1));
//       }
//       decks.add(Deck(
//           deckId: Uuid().v4(),
//           icon: File(icons[rand.nextInt(icons.length - 1)]),
//           subscribersCount: rand.nextInt(250),
//           title: titles[rand.nextInt(titles.length - 1)],
//           description: 'asdjkadhalksjdh',
//           cardsList: cards,
//           category: CategoryModel('Others'),
//           isPrivate: false,
//           author: UserModel(',', '', ',', '')));
//     }

//     return right(decks);
//   }

//   @override
//   Future<Either<StorageFailure<List<Deck>>, Observable<List<Deck>>>>
//       getCurrentUserAllDecksAsStream() {
//     return null;
//   }

//   @override
//   Future<Either<StorageFailure, Deck>> getDeckById(String id) {
//     return null;
//   }

//   @override
//   Future<Either<StorageFailure<List<CardModel>>, List<CardModel>>> updateCards(
//       List<CardModel> cards) {
//     return null;
//   }

//   @override
//   Future<Either<StorageFailure<Deck>, Deck>> updateDeck(Deck deck) {
//     return null;
//   }

//   @override
//   Future<Either<StorageFailure, List<Deck>>> loadDecksPageForCategory(
//       CategoryModel category, int pageCount) {
//     // TODO: implement loadDecksPageForCategory
//     throw UnimplementedError();
//   }
// }
