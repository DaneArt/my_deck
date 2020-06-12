import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mydeck/core/error/storage_failure.dart';
import 'package:mydeck/core/injection/dependency_injection.dart';
import 'package:mydeck/features/editor/domain/value_objects/deck_description.dart';
import 'package:mydeck/features/editor/domain/value_objects/deck_title.dart';
import 'package:mydeck/features/my_deck/data/models/category_model.dart';
import 'package:mydeck/features/my_deck/domain/entities/card.dart';
import 'package:mydeck/features/my_deck/domain/entities/deck.dart';
import 'package:mydeck/features/editor/domain/usecases/add_deck_usecase.dart';
import 'package:mydeck/features/editor/domain/usecases/delete_deck_usecase.dart';
import 'package:mydeck/features/editor/domain/usecases/save_deck_changes_usecase.dart'
    as save;
import 'package:mydeck/features/social/domain/usecases/upload_online_deck.dart'
    as upload;
import 'package:mydeck/features/editor/presentation/pages/add_deck_page.dart';
import 'package:mydeck/features/sign_in/data/datasources/user_config.dart';
import 'package:mydeck/features/sign_in/data/models/user_model.dart';
import 'package:uuid/uuid.dart';

import '../../../domain/value_objects/deck_avatar.dart';

part 'add_deck_state.dart';

part 'add_deck_event.dart';

part 'add_deck_bloc.freezed.dart';

class AddDeckBloc extends Bloc<AddDeckEvent, AddDeckState> {
  final AddDeckUseCase addDeckUseCase;
  final save.SaveDeckChangesUsecase saveDeckChangesUsecase;
  final DeleteDeckUseCase deleteDeckUsecase;
  final upload.UploadOnlineDeckUsecase uploadOnlineDeckUsecase;
  final Deck deck;
  final AddDeckGoal goal;
  AddDeckBloc(
      {
        @required this.uploadOnlineDeckUsecase,
      @required this.goal,
      @required this.deck,
      @required this.saveDeckChangesUsecase,
      @required this.addDeckUseCase,
      @required this.deleteDeckUsecase});

  bool get _isFieldsValid =>
      state.title.isValid &&
      state.description.isValid &&
      state.avatar.isValid &&
      state.cardslist.length >= 2;

  @override
  AddDeckState get initialState => AddDeckState.initial(initialDeck: deck);

  @override
  Stream<AddDeckState> mapEventToState(
    AddDeckEvent event,
  ) async* {
    yield* event.map(
        saveChanges: (e) async* {
          if (_isFieldsValid) {
            if (goal == AddDeckGoal.create) {
              final saveResult = await addDeckUseCase(Params(Deck.library(
                deckId: Uuid().v4(),
                cardsList: state.cardslist,
                category: state.category,
                subscribers: [],
                description: state.description.value
                    .fold((f) => f.failedValue, (r) => r),
                icon: state.avatar.value.fold((f) => f.failedValue, (r) => r),
                isPrivate: !state.isShared,
                title: state.title.value.fold((f) => f.failedValue, (r) => r),
                author: UserConfig.currentUser,
              )));
              yield saveResult.fold(
                  (failure) => state.copyWith(
                      saveFailureOrSuccessOption: some(left(failure))),
                  (success) => state.copyWith(
                      saveFailureOrSuccessOption: some(right(success))));
            } else if (goal == AddDeckGoal.edit) {
              final saveResult = await saveDeckChangesUsecase(save.Params(
                  deck,
                  (deck as DeckLibrary).copyWith(
                      author: UserConfig.currentUser,
                      cardsList: state.cardslist,
                      category: state.category,
                      deckId: deck.deckId,
                      description: state.description.value
                          .fold((f) => f.failedValue, (r) => r),
                      icon: state.avatar.value
                          .fold((f) => f.failedValue, (r) => r),
                      isPrivate: !state.isShared,
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
          final deleteResult = await deleteDeckUsecase(Params(deck));
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
        },
        saveDraft: (e) async* {
          if (state.isShared) {
            yield state.copyWith(
              saveFailureOrSuccessOption: some(
                left(
                  StorageFailure.unsaveableDraft(),
                ),
              ),
            );
          } else {
            if (goal == AddDeckGoal.create) {
              final saveResult = await addDeckUseCase(Params(Deck.library(
                  deckId: Uuid().v4(),
                  cardsList: state.cardslist,
                  category: state.category,
                  subscribers: [],
                  description: state.description.value
                      .fold((f) => f.failedValue, (r) => r),
                  icon: state.avatar.value.fold((f) => f.failedValue, (r) => r),
                  isPrivate: true,
                  title: state.title.value.fold((f) => f.failedValue, (r) => r),
                  author: UserConfig.currentUser)));
              yield saveResult.fold(
                      (failure) => state.copyWith(
                      saveFailureOrSuccessOption: some(left(failure))),
                      (success) => state.copyWith(
                      saveFailureOrSuccessOption: some(right(success))));
            } else if (goal == AddDeckGoal.edit) {
              final saveResult = await saveDeckChangesUsecase(save.Params(
                  deck,
                  (deck as DeckLibrary).copyWith(
                      author: UserConfig.currentUser,
                      cardsList: state.cardslist,
                      category: state.category,
                      deckId: deck.deckId,
                      description: state.description.value
                          .fold((f) => f.failedValue, (r) => r),
                      icon: state.avatar.value
                          .fold((f) => f.failedValue, (r) => r),
                      isPrivate: true,
                      title: state.title.value
                          .fold((f) => f.failedValue, (r) => r))));
              yield saveResult.fold(
                      (failure) => state.copyWith(
                      saveFailureOrSuccessOption: some(left(failure))),
                      (success) => state.copyWith(
                      saveFailureOrSuccessOption: some(right(success))));
            }

          }
        },
        initFromOnline: (e) async* {
          yield state.copyWith(isLoading: true);
          final onlineResult =
              await uploadOnlineDeckUsecase(upload.Params(deck: deck));
          yield onlineResult.fold(
              (l) => state,
              (r) => state.copyWith(
                  author: r.author,
                  isLoading: false,
                  cardslist: r.cardsList,
                  initialDeck: r));
        });
  }
}
