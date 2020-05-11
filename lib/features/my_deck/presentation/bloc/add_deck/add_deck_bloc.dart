import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mydeck/core/error/storage_failure.dart';
import 'package:mydeck/core/injection/dependency_injection.dart';
import 'package:mydeck/features/my_deck/data/models/category_model.dart';
import 'package:mydeck/features/my_deck/domain/entities/card.dart';
import 'package:mydeck/features/my_deck/domain/entities/deck.dart';
import 'package:mydeck/features/my_deck/domain/usecases/add_deck_usecase.dart';
import 'package:mydeck/features/my_deck/domain/usecases/delete_deck_usecase.dart';
import 'package:mydeck/features/my_deck/domain/usecases/save_deck_changes_usecase.dart'
    as save;
import 'package:mydeck/features/sign_in/data/datasources/user_service.dart';
import 'package:mydeck/features/sign_in/data/models/user_model.dart';
import 'package:uuid/uuid.dart';

import 'deck_avatar.dart';
import 'deck_description.dart';
import 'deck_title.dart';

part 'add_deck_state.dart';

part 'add_deck_event.dart';

part "add_deck_bloc.freezed.dart";

class AddDeckBloc extends Bloc<AddDeckEvent, AddDeckState> {
  final AddDeckUseCase addDeckUseCase;
  final save.SaveDeckChangesUsecase saveDeckChangesUsecase;
  final DeleteDeckUseCase deleteDeckUsecase;
  Deck _deck;
  bool _saveDeck = true;

  AddDeckBloc(
      {this.saveDeckChangesUsecase,
      this.addDeckUseCase,
      this.deleteDeckUsecase});

  bool get _isFieldsValid =>
      state.title.isValid &&
      state.description.isValid &&
      state.avatar.isValid &&
      state.cardslist.length >= 2;

  @override
  AddDeckState get initialState => AddDeckState.initial();

  @override
  Stream<AddDeckState> mapEventToState(
    AddDeckEvent event,
  ) async* {
    yield* event.map(
        initWithDeck: (e) async* {
          if (_deck == null) {
            _deck = e.deck;
            _saveDeck = false;
            final deckAuthor = _deck.author;
            final currentUser = UserService.currentUser;
            yield state.copyWith(
                title: DeckTitle(_deck.title),
                description: DeckDescription(_deck.description),
                avatar: DeckAvatar(_deck.icon),
                isShared: !_deck.isPrivate,
                category: _deck.category,
                cardslist: _deck.cardsList,
                author: deckAuthor.userId == currentUser.userId
                    ? deckAuthor.copyWith(username: 'you')
                    : deckAuthor);
          }
        },
        saveChanges: (e) async* {
          if (_isFieldsValid) {
            if (_saveDeck) {
              final saveResult = await addDeckUseCase(Params(Deck(
                  deckId: Uuid().v4(),
                  cardsList: state.cardslist,
                  category: state.category,
                  description: state.description.value
                      .fold((f) => f.failedValue, (r) => r),
                  icon: state.avatar.value.fold((f) => f.failedValue, (r) => r),
                  isPrivate: !state.isShared,
                  subscribersCount: 0,
                  title: state.title.value.fold((f) => f.failedValue, (r) => r),
                  author: UserService.currentUser)));
              yield saveResult.fold(
                  (failure) => state.copyWith(
                      saveFailureOrSuccessOption: some(left(failure))),
                  (success) => state.copyWith(
                      saveFailureOrSuccessOption: some(right(success))));
            } else {
              final saveResult = await saveDeckChangesUsecase(save.Params(
                  _deck,
                  _deck.copyWith(
                      author: UserService.currentUser,
                      cardsList: state.cardslist,
                      category: state.category,
                      deckId: _deck.deckId,
                      description: state.description.value
                          .fold((f) => f.failedValue, (r) => r),
                      icon: state.avatar.value
                          .fold((f) => f.failedValue, (r) => r),
                      isPrivate: !state.isShared,
                      subscribersCount: 0,
                      title: state.title.value
                          .fold((f) => f.failedValue, (r) => r))));
              yield saveResult.fold(
                  (failure) => state.copyWith(
                      saveFailureOrSuccessOption: some(left(failure))),
                  (success) => state.copyWith(
                      saveFailureOrSuccessOption: some(right(success))));
            }
          } else {
            yield state.copyWith(
              saveFailureOrSuccessOption: none(),
            );
            yield state.copyWith(
              saveFailureOrSuccessOption:
                  some(left(StorageFailure.fieldsInvalid())),
            );
          }
        },
        discardChangesAndExit: (e) async* {},
        deleteDeck: (e) async* {
          final deleteResult = await deleteDeckUsecase(Params(_deck));
          yield deleteResult.fold(
              (failure) => state.copyWith(
                  saveFailureOrSuccessOption: some(left(failure))),
              (success) => state.copyWith(
                  saveFailureOrSuccessOption: some(right(null))));
        },
        titleChanged: (e) async* {
          yield state.copyWith(
              title: DeckTitle(e.titleStr), saveFailureOrSuccessOption: none());
        },
        descriptionChanged: (e) async* {
          yield state.copyWith(
              description: DeckDescription(e.descStr),
              saveFailureOrSuccessOption: none());
        },
        avatarChanged: (e) async* {
          yield state.copyWith(
              avatar: DeckAvatar(e.avatar), saveFailureOrSuccessOption: none());
        },
        privacyChanged: (e) async* {
          yield state.copyWith(
              isShared: e.isShared, saveFailureOrSuccessOption: none());
        },
        categoryChanged: (e) async* {
          yield state.copyWith(
              category: e.category, saveFailureOrSuccessOption: none());
        },
        cardChanged: (e) async* {
          final cardIndex =
              state.cardslist.indexWhere((c) => c.cardId == e.card.cardId);
          final newList = List<Card>.from(state.cardslist);
          newList[cardIndex] = e.card;
          yield state.copyWith(
              cardslist: newList, saveFailureOrSuccessOption: none());
        },
        cardAdded: (e) async* {
          final newList = List<Card>.from(state.cardslist);
          newList.add(e.card);
          yield state.copyWith(
              cardslist: newList, saveFailureOrSuccessOption: none());
        },
        cardDeleted: (e) async* {
          final newList = List<Card>.from(state.cardslist);
          newList.remove(e.card);
          yield state.copyWith(
              cardslist: newList, saveFailureOrSuccessOption: none());
        });
  }
}
