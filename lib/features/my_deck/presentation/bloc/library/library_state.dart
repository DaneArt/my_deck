import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mydeck/features/my_deck/domain/entities/deck.dart';

part 'library_state.freezed.dart';

@freezed
abstract class LibraryState with _$LibraryState {
  const factory LibraryState({
    @required List<Deck> decksSourceList,
    @required bool isLoading,
    @required Option<Either<String, List<Deck>>> trainStartFailureOrSuccess,
    @required Option<Either<String, Unit>> loadingFailureOrSuccess,
  }) = _LibraryState;

  factory LibraryState.initial() => LibraryState(
        loadingFailureOrSuccess: none(),
        decksSourceList: <Deck>[],
        trainStartFailureOrSuccess: none(),
        isLoading: false,
      );
}
