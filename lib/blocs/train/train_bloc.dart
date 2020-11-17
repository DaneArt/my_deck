import 'dart:async';
import 'dart:collection';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:mydeck/errors/train_failure.dart';
import 'package:mydeck/models/entitites/mde_card.dart';
import 'package:mydeck/models/entitites/mde_deck.dart';
import 'package:mydeck/services/usecases/get_decks_for_train_usecase.dart';
import 'package:mydeck/services/usecases/update_trained_cards.dart';

part 'train_event.dart';

part 'train_state.dart';

part 'train_bloc.freezed.dart';

const String LoadingErrorMessage = "Error while Loading. Try to reload.";
const String NoTrainableDecks = "No trainable decks. Try something of this:";

class TrainBloc extends Bloc<TrainEvent, TrainState> {
  final UpdateTrainedCards updateTrainedCards;
  final GetDecksForTrainUseCase getDecksForTrain;

  TrainBloc({
    @required Queue<MDEDeck> decksToTrain,
    @required this.updateTrainedCards,
    @required this.getDecksForTrain,
  }) : super(TrainState.initial(decksToTrain));

  @override
  Stream<TrainState> mapEventToState(
    TrainEvent event,
  ) async* {
    yield* event.map(
      loadDecksForTrain: (e) async* {},
      reverseAnswer: (e) async* {},
      flipCard: (e) async* {},
      proceedAnswer: (e) async* {},
      startNextDeck: (e) async* {},
      stopTrain: (e) async* {},
    );
  }
}
