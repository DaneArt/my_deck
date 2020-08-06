import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:mydeck/blocs/add_deck/add_deck_bloc.dart';
import 'package:mydeck/errors/storage_failure.dart';
import 'package:mydeck/models/dtos/deck_category.dart';
import 'package:mydeck/models/entitites/card.dart';
import 'package:mydeck/models/entitites/deck.dart';
import 'package:mydeck/models/entitites/unique_id.dart';
import 'package:mydeck/models/value_objects/deck_avatar.dart';
import 'package:mydeck/models/value_objects/deck_description.dart';
import 'package:mydeck/models/value_objects/deck_title.dart';
import 'package:mydeck/models/value_objects/user_model.dart';
import 'package:mydeck/screens/deck_editor/add_deck_page.dart';
import 'package:mydeck/services/usecases/upload_online_deck.dart';
import 'package:test/test.dart';

class MockUploadOnlineDeckUsecase extends Mock
    implements UploadOnlineDeckUsecase {}

main() {
  MockUploadOnlineDeckUsecase mockUploadOnlineDeckUsecase =
      MockUploadOnlineDeckUsecase();
  Deck tDeck = Deck(
      deckId: UniqueId(),
      author: UserModel('', '', '', ''),
      avatar: DeckAvatar.fromFile(null),
      category: DeckCategory(categoryName: 'Others'),
      description: DeckDescription(''),
      isPrivate: false,
      cardsCount: 0,
      cardsList: [],
      subscribers: [],
      subscribersCount: 0,
      title: DeckTitle(''));

  blocTest('InitWithDeck',
      build: () => AddDeckBloc(
          deck: tDeck,
          goal: AddDeckGoal.lookup,
          uploadOnlineDeckUsecase: mockUploadOnlineDeckUsecase),
      act: (bloc) {
        mockUploadOnlineDeckUsecase = MockUploadOnlineDeckUsecase();
        tDeck = Deck(
            deckId: UniqueId(),
            author: UserModel('', '', '', ''),
            avatar: DeckAvatar.fromFile(null),
            category: DeckCategory(categoryName: 'Others'),
            description: DeckDescription(''),
            isPrivate: false,
            cardsCount: 0,
            cardsList: [],
            subscribers: [],
            subscribersCount: 0,
            title: DeckTitle(''));
        bloc.add(AddDeckEvent.initFromOnline());
      },
      expect: [
        AddDeckState(
          author: tDeck.author,
          avatar: tDeck.avatar,
          cardsList: tDeck.cardsList,
          category: tDeck.category,
          description: tDeck.description,
          isLoading: true,
          isShared: !tDeck.isPrivate,
          title: tDeck.title,
          loadingFailureOrSuccess: none(),
        ),
        AddDeckState(
          author: tDeck.author,
          avatar: tDeck.avatar,
          cardsList: [],
          category: tDeck.category,
          description: tDeck.description,
          isLoading: false,
          isShared: !tDeck.isPrivate,
          title: tDeck.title,
          loadingFailureOrSuccess: some(
            left(
              StorageFailure.networkFailure(),
            ),
          ),
        )
      ]);
}
