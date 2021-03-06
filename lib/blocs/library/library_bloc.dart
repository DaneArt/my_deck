import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:meta/meta.dart';
import 'package:mydeck/blocs/train/train_bloc.dart';
import 'package:mydeck/errors/failures.dart';
import 'package:mydeck/models/entitites/deck.dart';
import 'package:mydeck/services/usecases/delete_deck_usecase.dart';
import 'package:mydeck/services/usecases/get_all_current_user_decks_usecase.dart';
import 'package:mydeck/services/usecases/add_deck_usecase.dart' as add;
import 'package:mydeck/services/usecases/save_deck_changes_usecase.dart'
    as save;
import 'package:mydeck/services/usecases/usecase.dart';
import 'package:mydeck/services/usecases/get_decks_for_train_usecase.dart';

part 'library_event.dart';
part 'library_state.dart';

part 'library_bloc.freezed.dart';

class LibraryBloc extends Bloc<LibraryEvent, LibraryState> {
  final LoadUserLibraryUseCase loadUserLibrary;

  LibraryBloc({@required LoadUserLibraryUseCase loadUserLibrary})
      : assert(loadUserLibrary != null),
        this.loadUserLibrary = loadUserLibrary,
        super(LibraryState.initial());

  @override
  Stream<LibraryState> mapEventToState(
    LibraryEvent event,
  ) async* {
    yield state.copyWith(isLoading: true);
    final loadDecks = await loadUserLibrary(NoParams());
    yield loadDecks.fold(
        (failure) => state.copyWith(
            isLoading: false,
            loadingFailureOrSuccess: some(left(failure.toString()))),
        (success) => state.copyWith(
            isLoading: false,
            decks: success,
            loadingFailureOrSuccess: some(right(unit))));
  }
}
