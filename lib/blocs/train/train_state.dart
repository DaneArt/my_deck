part of 'train_bloc.dart';

@freezed
abstract class TrainState with _$TrainState {
  const factory TrainState(
      {@required bool isPending,
      @required Option<Either<TrainFailure, Unit>> loadingDecksStatus,
      @required Queue<MDEDeck> decksToTrain}) = _TrainState;

  factory TrainState.initial(Queue<MDEDeck> decksToTrain) => TrainState(
      decksToTrain: decksToTrain, isPending: false, loadingDecksStatus: none());
}
