part of 'train_bloc.dart';

enum Answer { Possitive, Negative }

@freezed
abstract class TrainEvent with _$TrainEvent {
  factory TrainEvent.loadDecksForTrain() = LoadDecksForTrain;
  factory TrainEvent.reverseAnswer() = ReverseAnswer;
  factory TrainEvent.flipCard() = FlipCard;
  factory TrainEvent.proceedAnswer({@required Answer userAnswer}) =
      ProceedAnswer;
  factory TrainEvent.startNextDeck() = StartNextDeck;
  factory TrainEvent.stopTrain() = StopTrain;
}
