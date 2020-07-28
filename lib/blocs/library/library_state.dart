part of 'library_bloc.dart';

@freezed
abstract class LibraryState with _$LibraryState {
  const factory LibraryState({
    @required List<Deck> decks,
    @required bool isLoading,
    @required Option<Either<String, Unit>> loadingFailureOrSuccess,
  }) = _LibraryState;

  factory LibraryState.initial() => LibraryState(
        loadingFailureOrSuccess: none(),
        decks: <Deck>[],
        isLoading: false,
      );
}
