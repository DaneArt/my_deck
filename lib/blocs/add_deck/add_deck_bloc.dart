import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';

import 'package:dartz/dartz.dart';
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
import 'package:mydeck/models/value_objects/user_model.dart';

import 'package:mydeck/services/usecases/upload_online_deck.dart';
import 'package:mydeck/screens/deck_editor/add_deck_page.dart';

part 'add_deck_state.dart';

part 'add_deck_event.dart';

part 'add_deck_bloc.freezed.dart';

class AddDeckBloc extends Bloc<AddDeckEvent, AddDeckState> {
  final UploadOnlineDeckUsecase uploadOnlineDeckUsecase;
  final Deck deck;
  AddDeckBloc({
    @required this.uploadOnlineDeckUsecase,
    @required this.deck,
  }) : super(AddDeckState.initial(initialDeck: deck));

  @override
  Stream<AddDeckState> mapEventToState(
    AddDeckEvent event,
  ) async* {
    yield* event.map(titleChanged: (e) async* {
      yield state.copyWith(
        title: DeckTitle(e.titleStr),
      );
      Logger().d('Title changed: ${e.titleStr}');
    }, descriptionChanged: (e) async* {
      yield state.copyWith(
        description: DeckDescription(e.descStr),
      );
      Logger().d('Description changed: ${e.descStr}');
    }, avatarChanged: (e) async* {
      yield state.copyWith(
        avatar: DeckAvatar(e.avatar),
      );
      Logger().d('Avatar changed: ${e.avatar}');
    }, changePrivacy: (e) async* {
      yield state.copyWith(
        isShared: !state.isShared,
      );
      Logger().d('Privacy changed: ${!state.isShared}');
    }, categoryChanged: (e) async* {
      yield state.copyWith(
        category: e.category,
      );
      Logger().d('Caegory changed: ${e.category}');
    }, initFromOnline: (e) async* {
      yield state.copyWith(isLoading: true);
      Logger().d('Started loading deck from net');
      final onlineResult =
          await uploadOnlineDeckUsecase(Params(deckId: deck.deckId));
      Logger().d('Received loading result');
      yield onlineResult.fold(
          (l) => state.copyWith(
              isLoading: false, loadingFailureOrSuccess: Some(left(l))),
          (r) => state.copyWith(
                avatar: r.avatar,
                cardsList: r.cardsList,
                category: r.category,
                description: r.description,
                isShared: !r.isPrivate,
                title: r.title,
                author: r.author,
                isLoading: false,
                loadingFailureOrSuccess: Some(right(unit)),
              ));
    }, updateCards: (e) async* {
      yield state.copyWith(cardsList: e.cards);
      Logger().d('Cards updated');
    }, quickTrainStateChanged: (e) async* {
      yield state.copyWith(availableQuickTrain: !state.availableQuickTrain);
      Logger().d('QuckTrain state changed: ${!state.availableQuickTrain}');
    });
  }
}
