import 'dart:async';

import 'package:bloc/bloc.dart';

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:mydeck/errors/storage_failure.dart';
import 'package:mydeck/models/dtos/deck_category.dart';
import 'package:mydeck/models/entitites/mde_card.dart';
import 'package:mydeck/models/entitites/mde_deck.dart';
import 'package:mydeck/models/entitites/mde_file.dart';
import 'package:mydeck/models/entitites/user.dart';
import 'package:mydeck/models/value_objects/deck_avatar.dart';
import 'package:mydeck/models/value_objects/deck_description.dart';
import 'package:mydeck/models/value_objects/deck_title.dart';
import 'package:mydeck/services/datasources/user_config.dart';
import 'package:mydeck/services/usecases/add_deck_usecase.dart' as Add;
import 'package:mydeck/services/usecases/delete_deck_usecase.dart';
import 'package:mydeck/services/usecases/save_deck_changes_usecase.dart'
    as Save;

import 'package:mydeck/services/usecases/upload_online_deck.dart';

part 'add_deck_state.dart';

part 'add_deck_event.dart';

part 'add_deck_bloc.freezed.dart';

typedef Future<Either<StorageFailure<MDEDeck>, MDEDeck>> SaveWork(Equatable);

class AddDeckBloc extends Bloc<AddDeckEvent, AddDeckState> {
  final UploadOnlineDeckUsecase uploadOnlineDeckUsecase;
  final Add.AddDeckUseCase addDeckUseCase;
  final DeleteDeckUseCase deleteDeckUseCase;
  final Save.SaveDeckChangesUsecase saveDeckChangesUsecase;

  AddDeckBloc(
      {@required this.uploadOnlineDeckUsecase,
      @required this.addDeckUseCase,
      @required this.saveDeckChangesUsecase,
      @required this.deleteDeckUseCase,
      @required MDEDeck deck,
      @required AddDeckStatus status,
      @required AddDeckGoal goal})
      : super(AddDeckState.initial(
            initialDeck: deck, status: status, goal: goal));

  MDEDeck buildDeckForSave() {
    return state.freezedDeck.copyWith(
      author: UserConfig.currentUser.toDomain(),
      availableQuickTrain: state.availableQuickTrain,
      avatar: state.avatar,
      category: state.category,
      deckId: state.freezedDeck.deckId,
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
        final onlineResult = await uploadOnlineDeckUsecase(
            Params(deckId: state.freezedDeck.deckId));
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
                  author: r.author,
                  isLoading: false,
                  savingFailureOrSuccess: none(),
                  loadingFailureOrSuccess: Some(right(unit)),
                  freezedDeck: state.freezedDeck.copyWith(
                    avatar: r.avatar,
                    cardsList: r.cardsList,
                    category: r.category,
                    description: r.description,
                    isPrivate: r.isPrivate,
                    title: r.title,
                    author: r.author,
                  ),
                ));
      },
      updateCards: (e) async* {
        yield state.copyWith(
            status:
                e.cards.every((element) => state.cardsList.contains(element))
                    ? AddDeckStatus.look
                    : AddDeckStatus.edit,
            savingFailureOrSuccess: none(),
            cardsList: e.cards);
        Logger().d('Cards updated');
      },
      quickTrainStateChanged: (e) async* {
        yield state.copyWith(
            savingFailureOrSuccess: none(),
            availableQuickTrain: !state.availableQuickTrain);
        Logger().d('QuckTrain state changed: ${!state.availableQuickTrain}');
      },
      switchEditStatus: (e) async* {
        if (state.status == AddDeckStatus.edit) {
          yield state.copyWith(
              savingFailureOrSuccess: none(),
              status: state.status == AddDeckStatus.edit
                  ? AddDeckStatus.look
                  : AddDeckStatus.edit);
        } else {
          yield state.copyWith(
              savingFailureOrSuccess: none(),
              status: state.status == AddDeckStatus.edit
                  ? AddDeckStatus.look
                  : AddDeckStatus.edit);
        }
      },
      saveChanges: (e) async* {
        yield state.copyWith(
          isPending: true,
          savingFailureOrSuccess: none(),
        );
        if (_validateFields()) {
          yield await _saveChanges(
              state.goal == AddDeckGoal.create
                  ? addDeckUseCase.call
                  : saveDeckChangesUsecase.call,
              state.goal == AddDeckGoal.create
                  ? Add.Params(buildDeckForSave())
                  : Save.Params(state.freezedDeck, buildDeckForSave()));
        } else
          yield state.copyWith(
              isPending: false,
              savingFailureOrSuccess: some(left(StorageFailure.fieldsInvalid(
                  failureObject: state.freezedDeck))));
      },
      deleteDeck: (e) async* {
        yield state.copyWith(
          isPending: true,
          deleteFailureOrSuccess: none(),
          savingFailureOrSuccess: none(),
        );
        final deleteResult =
            await deleteDeckUseCase(Add.Params(state.freezedDeck));
        yield state.copyWith(
          deleteFailureOrSuccess:
              some(deleteResult.fold((l) => left(l), (r) => right(unit))),
        );
      },
      undoEdits: (e) async* {
        yield state.copyWith(
            cardsList: state.freezedDeck.cardsList,
            freezedDeck: state.freezedDeck,
            title: state.freezedDeck.title,
            description: state.freezedDeck.description,
            avatar: state.freezedDeck.avatar,
            isShared: !state.freezedDeck.isPrivate,
            category: state.freezedDeck.category,
            availableQuickTrain: state.freezedDeck.availableQuickTrain,
            author: state.freezedDeck.author,
            status: AddDeckStatus.look);
      },
    );
  }

  bool _validateFields() => state.avatar.isValid && state.title.isValid;

  Future<AddDeckState> _saveChanges(SaveWork save, Equatable params) async {
    final saveResult = await save(params);
    return saveResult.fold(
        (l) => state.copyWith(
              isPending: false,
              savingFailureOrSuccess: some(left(l)),
            ),
        (r) => state.copyWith(
              isPending: false,
              goal: AddDeckGoal.update,
              status: AddDeckStatus.look,
              freezedDeck: r,
              savingFailureOrSuccess: some(right(unit)),
            ));
  }
}
