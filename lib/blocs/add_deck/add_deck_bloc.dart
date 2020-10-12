import 'dart:async';

import 'package:bloc/bloc.dart';

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:mydeck/errors/storage_failure.dart';
import 'package:mydeck/models/dtos/deck_category.dart';
import 'package:mydeck/models/entitites/card.dart';
import 'package:mydeck/models/entitites/deck.dart';
import 'package:mydeck/models/entitites/md_file.dart';
import 'package:mydeck/models/value_objects/deck_avatar.dart';
import 'package:mydeck/models/value_objects/deck_description.dart';
import 'package:mydeck/models/value_objects/deck_title.dart';
import 'package:mydeck/models/dtos/user_dto.dart';
import 'package:mydeck/services/datasources/user_config.dart';
import 'package:mydeck/services/usecases/add_deck_usecase.dart' as Add;
import 'package:mydeck/services/usecases/save_deck_changes_usecase.dart'
    as Save;

import 'package:mydeck/services/usecases/upload_online_deck.dart';

part 'add_deck_state.dart';

part 'add_deck_event.dart';

part 'add_deck_bloc.freezed.dart';

typedef Future<Either<StorageFailure<Deck>, Deck>> SaveWork(Equatable);

class AddDeckBloc extends Bloc<AddDeckEvent, AddDeckState> {
  final UploadOnlineDeckUsecase uploadOnlineDeckUsecase;
  final Add.AddDeckUseCase addDeckUseCase;
  final Save.SaveDeckChangesUsecase saveDeckChangesUsecase;

  final Deck deck;
  final AddDeckStatus status;
  final AddDeckGoal goal;

  AddDeckBloc(
      {@required this.uploadOnlineDeckUsecase,
      @required this.addDeckUseCase,
      this.saveDeckChangesUsecase,
      @required this.deck,
      @required this.status,
      @required this.goal})
      : super(AddDeckState.initial(
            initialDeck: deck, status: status, goal: goal));

  Deck buildDeckForSave() {
    return deck.copyWith(
      author: UserConfig.currentUser.toDomain(),
      availableQuickTrain: state.availableQuickTrain,
      avatar: state.avatar,
      category: state.category,
      deckId: deck.deckId,
      description: state.description,
      isPrivate: !state.isShared,
      title: state.title,
      cardsList: state.cardsList,
      cardsCount: state.cardsList.length,
    );
  }

  @override
  Stream<AddDeckState> mapEventToState(
    AddDeckEvent event,
  ) async* {
    yield* event.map(
      titleChanged: (e) async* {
        yield state.copyWith(
          savingFailureOrSuccess: none(),
          title: DeckTitle(e.titleStr),
        );
        Logger().d('Title changed: ${e.titleStr}');
      },
      descriptionChanged: (e) async* {
        yield state.copyWith(
          savingFailureOrSuccess: none(),
          description: DeckDescription(e.descStr),
        );
        Logger().d('Description changed: ${e.descStr}');
      },
      avatarChanged: (e) async* {
        yield state.copyWith(
          savingFailureOrSuccess: none(),
          avatar: DeckAvatar(e.avatar),
        );
        Logger().d('Avatar changed: ${e.avatar}');
      },
      changePrivacy: (e) async* {
        yield state.copyWith(
          savingFailureOrSuccess: none(),
          isShared: !state.isShared,
        );
        Logger().d('Privacy changed: ${!state.isShared}');
      },
      categoryChanged: (e) async* {
        yield state.copyWith(
          savingFailureOrSuccess: none(),
          category: e.category,
        );
        Logger().d('Caegory changed: ${e.category}');
      },
      initFromOnline: (e) async* {
        yield state.copyWith(savingFailureOrSuccess: none(), isLoading: true);
        Logger().d('Started loading deck from net');
        final onlineResult =
            await uploadOnlineDeckUsecase(Params(deckId: deck.deckId));
        Logger().d('Received loading result');
        yield onlineResult.fold(
            (l) => state.copyWith(
                savingFailureOrSuccess: none(),
                isLoading: false,
                loadingFailureOrSuccess: Some(left(l))),
            (r) => state.copyWith(
                  avatar: r.avatar,
                  cardsList: r.cardsList,
                  category: r.category,
                  description: r.description,
                  isShared: !r.isPrivate,
                  title: r.title,
                  author: UserDto.fromDomain(r.author),
                  isLoading: false,
                  savingFailureOrSuccess: none(),
                  loadingFailureOrSuccess: Some(right(unit)),
                ));
      },
      updateCards: (e) async* {
        yield state.copyWith(
            savingFailureOrSuccess: none(), cardsList: e.cards);
        Logger().d('Cards updated');
      },
      quickTrainStateChanged: (e) async* {
        yield state.copyWith(
            savingFailureOrSuccess: none(),
            availableQuickTrain: !state.availableQuickTrain);
        Logger().d('QuckTrain state changed: ${!state.availableQuickTrain}');
      },
      switchEditStatus: (e) async* {
        yield state.copyWith(
            savingFailureOrSuccess: none(),
            status: state.status == AddDeckStatus.edit
                ? AddDeckStatus.look
                : AddDeckStatus.edit);
      },
      saveChanges: (e) async* {
        yield state.copyWith(
          isSaving: true,
          savingFailureOrSuccess: none(),
        );
        if (_validateFields()) {
          yield await _saveChanges(
              state.goal == AddDeckGoal.create
                  ? addDeckUseCase.call
                  : saveDeckChangesUsecase.call,
              state.goal == AddDeckGoal.create
                  ? Add.Params(buildDeckForSave())
                  : Save.Params(deck, buildDeckForSave()));
        } else
          yield state.copyWith(
              isSaving: false,
              savingFailureOrSuccess: some(
                  left(StorageFailure.fieldsInvalid(failureObject: deck))));
      },
    );
  }

  bool _validateFields() => state.avatar.isValid && state.title.isValid;

  Future<AddDeckState> _saveChanges(SaveWork save, Equatable params) async {
    final saveResult = await save(params);
    return saveResult.fold(
        (l) => state.copyWith(
              isSaving: false,
              savingFailureOrSuccess: some(left(l)),
            ),
        (r) => state.copyWith(
              isSaving: false,
              status: AddDeckStatus.look,
              savingFailureOrSuccess: some(right(unit)),
            ));
  }
}
