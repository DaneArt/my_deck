import 'package:freezed_annotation/freezed_annotation.dart';

part 'train_failure.freezed.dart';

@freezed
abstract class TrainFailure with _$TrainFailure {
  factory TrainFailure.networkFailure() = NetworkFailure;
  factory TrainFailure.noTrainableDecksFailure() = NoTrainableDecksFailure;
}
