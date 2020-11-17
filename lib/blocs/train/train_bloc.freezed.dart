// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'train_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TrainEventTearOff {
  const _$TrainEventTearOff();

  LoadDecksForTrain loadDecksForTrain() {
    return LoadDecksForTrain();
  }

  ReverseAnswer reverseAnswer() {
    return ReverseAnswer();
  }

  FlipCard flipCard() {
    return FlipCard();
  }

  ProceedAnswer proceedAnswer({@required Answer userAnswer}) {
    return ProceedAnswer(
      userAnswer: userAnswer,
    );
  }

  StartNextDeck startNextDeck() {
    return StartNextDeck();
  }

  StopTrain stopTrain() {
    return StopTrain();
  }
}

// ignore: unused_element
const $TrainEvent = _$TrainEventTearOff();

mixin _$TrainEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadDecksForTrain(),
    @required Result reverseAnswer(),
    @required Result flipCard(),
    @required Result proceedAnswer(Answer userAnswer),
    @required Result startNextDeck(),
    @required Result stopTrain(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadDecksForTrain(),
    Result reverseAnswer(),
    Result flipCard(),
    Result proceedAnswer(Answer userAnswer),
    Result startNextDeck(),
    Result stopTrain(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadDecksForTrain(LoadDecksForTrain value),
    @required Result reverseAnswer(ReverseAnswer value),
    @required Result flipCard(FlipCard value),
    @required Result proceedAnswer(ProceedAnswer value),
    @required Result startNextDeck(StartNextDeck value),
    @required Result stopTrain(StopTrain value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadDecksForTrain(LoadDecksForTrain value),
    Result reverseAnswer(ReverseAnswer value),
    Result flipCard(FlipCard value),
    Result proceedAnswer(ProceedAnswer value),
    Result startNextDeck(StartNextDeck value),
    Result stopTrain(StopTrain value),
    @required Result orElse(),
  });
}

abstract class $TrainEventCopyWith<$Res> {
  factory $TrainEventCopyWith(
          TrainEvent value, $Res Function(TrainEvent) then) =
      _$TrainEventCopyWithImpl<$Res>;
}

class _$TrainEventCopyWithImpl<$Res> implements $TrainEventCopyWith<$Res> {
  _$TrainEventCopyWithImpl(this._value, this._then);

  final TrainEvent _value;
  // ignore: unused_field
  final $Res Function(TrainEvent) _then;
}

abstract class $LoadDecksForTrainCopyWith<$Res> {
  factory $LoadDecksForTrainCopyWith(
          LoadDecksForTrain value, $Res Function(LoadDecksForTrain) then) =
      _$LoadDecksForTrainCopyWithImpl<$Res>;
}

class _$LoadDecksForTrainCopyWithImpl<$Res>
    extends _$TrainEventCopyWithImpl<$Res>
    implements $LoadDecksForTrainCopyWith<$Res> {
  _$LoadDecksForTrainCopyWithImpl(
      LoadDecksForTrain _value, $Res Function(LoadDecksForTrain) _then)
      : super(_value, (v) => _then(v as LoadDecksForTrain));

  @override
  LoadDecksForTrain get _value => super._value as LoadDecksForTrain;
}

class _$LoadDecksForTrain
    with DiagnosticableTreeMixin
    implements LoadDecksForTrain {
  _$LoadDecksForTrain();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrainEvent.loadDecksForTrain()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrainEvent.loadDecksForTrain'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadDecksForTrain);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadDecksForTrain(),
    @required Result reverseAnswer(),
    @required Result flipCard(),
    @required Result proceedAnswer(Answer userAnswer),
    @required Result startNextDeck(),
    @required Result stopTrain(),
  }) {
    assert(loadDecksForTrain != null);
    assert(reverseAnswer != null);
    assert(flipCard != null);
    assert(proceedAnswer != null);
    assert(startNextDeck != null);
    assert(stopTrain != null);
    return loadDecksForTrain();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadDecksForTrain(),
    Result reverseAnswer(),
    Result flipCard(),
    Result proceedAnswer(Answer userAnswer),
    Result startNextDeck(),
    Result stopTrain(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadDecksForTrain != null) {
      return loadDecksForTrain();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadDecksForTrain(LoadDecksForTrain value),
    @required Result reverseAnswer(ReverseAnswer value),
    @required Result flipCard(FlipCard value),
    @required Result proceedAnswer(ProceedAnswer value),
    @required Result startNextDeck(StartNextDeck value),
    @required Result stopTrain(StopTrain value),
  }) {
    assert(loadDecksForTrain != null);
    assert(reverseAnswer != null);
    assert(flipCard != null);
    assert(proceedAnswer != null);
    assert(startNextDeck != null);
    assert(stopTrain != null);
    return loadDecksForTrain(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadDecksForTrain(LoadDecksForTrain value),
    Result reverseAnswer(ReverseAnswer value),
    Result flipCard(FlipCard value),
    Result proceedAnswer(ProceedAnswer value),
    Result startNextDeck(StartNextDeck value),
    Result stopTrain(StopTrain value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadDecksForTrain != null) {
      return loadDecksForTrain(this);
    }
    return orElse();
  }
}

abstract class LoadDecksForTrain implements TrainEvent {
  factory LoadDecksForTrain() = _$LoadDecksForTrain;
}

abstract class $ReverseAnswerCopyWith<$Res> {
  factory $ReverseAnswerCopyWith(
          ReverseAnswer value, $Res Function(ReverseAnswer) then) =
      _$ReverseAnswerCopyWithImpl<$Res>;
}

class _$ReverseAnswerCopyWithImpl<$Res> extends _$TrainEventCopyWithImpl<$Res>
    implements $ReverseAnswerCopyWith<$Res> {
  _$ReverseAnswerCopyWithImpl(
      ReverseAnswer _value, $Res Function(ReverseAnswer) _then)
      : super(_value, (v) => _then(v as ReverseAnswer));

  @override
  ReverseAnswer get _value => super._value as ReverseAnswer;
}

class _$ReverseAnswer with DiagnosticableTreeMixin implements ReverseAnswer {
  _$ReverseAnswer();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrainEvent.reverseAnswer()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'TrainEvent.reverseAnswer'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ReverseAnswer);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadDecksForTrain(),
    @required Result reverseAnswer(),
    @required Result flipCard(),
    @required Result proceedAnswer(Answer userAnswer),
    @required Result startNextDeck(),
    @required Result stopTrain(),
  }) {
    assert(loadDecksForTrain != null);
    assert(reverseAnswer != null);
    assert(flipCard != null);
    assert(proceedAnswer != null);
    assert(startNextDeck != null);
    assert(stopTrain != null);
    return reverseAnswer();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadDecksForTrain(),
    Result reverseAnswer(),
    Result flipCard(),
    Result proceedAnswer(Answer userAnswer),
    Result startNextDeck(),
    Result stopTrain(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (reverseAnswer != null) {
      return reverseAnswer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadDecksForTrain(LoadDecksForTrain value),
    @required Result reverseAnswer(ReverseAnswer value),
    @required Result flipCard(FlipCard value),
    @required Result proceedAnswer(ProceedAnswer value),
    @required Result startNextDeck(StartNextDeck value),
    @required Result stopTrain(StopTrain value),
  }) {
    assert(loadDecksForTrain != null);
    assert(reverseAnswer != null);
    assert(flipCard != null);
    assert(proceedAnswer != null);
    assert(startNextDeck != null);
    assert(stopTrain != null);
    return reverseAnswer(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadDecksForTrain(LoadDecksForTrain value),
    Result reverseAnswer(ReverseAnswer value),
    Result flipCard(FlipCard value),
    Result proceedAnswer(ProceedAnswer value),
    Result startNextDeck(StartNextDeck value),
    Result stopTrain(StopTrain value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (reverseAnswer != null) {
      return reverseAnswer(this);
    }
    return orElse();
  }
}

abstract class ReverseAnswer implements TrainEvent {
  factory ReverseAnswer() = _$ReverseAnswer;
}

abstract class $FlipCardCopyWith<$Res> {
  factory $FlipCardCopyWith(FlipCard value, $Res Function(FlipCard) then) =
      _$FlipCardCopyWithImpl<$Res>;
}

class _$FlipCardCopyWithImpl<$Res> extends _$TrainEventCopyWithImpl<$Res>
    implements $FlipCardCopyWith<$Res> {
  _$FlipCardCopyWithImpl(FlipCard _value, $Res Function(FlipCard) _then)
      : super(_value, (v) => _then(v as FlipCard));

  @override
  FlipCard get _value => super._value as FlipCard;
}

class _$FlipCard with DiagnosticableTreeMixin implements FlipCard {
  _$FlipCard();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrainEvent.flipCard()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'TrainEvent.flipCard'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FlipCard);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadDecksForTrain(),
    @required Result reverseAnswer(),
    @required Result flipCard(),
    @required Result proceedAnswer(Answer userAnswer),
    @required Result startNextDeck(),
    @required Result stopTrain(),
  }) {
    assert(loadDecksForTrain != null);
    assert(reverseAnswer != null);
    assert(flipCard != null);
    assert(proceedAnswer != null);
    assert(startNextDeck != null);
    assert(stopTrain != null);
    return flipCard();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadDecksForTrain(),
    Result reverseAnswer(),
    Result flipCard(),
    Result proceedAnswer(Answer userAnswer),
    Result startNextDeck(),
    Result stopTrain(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (flipCard != null) {
      return flipCard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadDecksForTrain(LoadDecksForTrain value),
    @required Result reverseAnswer(ReverseAnswer value),
    @required Result flipCard(FlipCard value),
    @required Result proceedAnswer(ProceedAnswer value),
    @required Result startNextDeck(StartNextDeck value),
    @required Result stopTrain(StopTrain value),
  }) {
    assert(loadDecksForTrain != null);
    assert(reverseAnswer != null);
    assert(flipCard != null);
    assert(proceedAnswer != null);
    assert(startNextDeck != null);
    assert(stopTrain != null);
    return flipCard(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadDecksForTrain(LoadDecksForTrain value),
    Result reverseAnswer(ReverseAnswer value),
    Result flipCard(FlipCard value),
    Result proceedAnswer(ProceedAnswer value),
    Result startNextDeck(StartNextDeck value),
    Result stopTrain(StopTrain value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (flipCard != null) {
      return flipCard(this);
    }
    return orElse();
  }
}

abstract class FlipCard implements TrainEvent {
  factory FlipCard() = _$FlipCard;
}

abstract class $ProceedAnswerCopyWith<$Res> {
  factory $ProceedAnswerCopyWith(
          ProceedAnswer value, $Res Function(ProceedAnswer) then) =
      _$ProceedAnswerCopyWithImpl<$Res>;
  $Res call({Answer userAnswer});
}

class _$ProceedAnswerCopyWithImpl<$Res> extends _$TrainEventCopyWithImpl<$Res>
    implements $ProceedAnswerCopyWith<$Res> {
  _$ProceedAnswerCopyWithImpl(
      ProceedAnswer _value, $Res Function(ProceedAnswer) _then)
      : super(_value, (v) => _then(v as ProceedAnswer));

  @override
  ProceedAnswer get _value => super._value as ProceedAnswer;

  @override
  $Res call({
    Object userAnswer = freezed,
  }) {
    return _then(ProceedAnswer(
      userAnswer:
          userAnswer == freezed ? _value.userAnswer : userAnswer as Answer,
    ));
  }
}

class _$ProceedAnswer with DiagnosticableTreeMixin implements ProceedAnswer {
  _$ProceedAnswer({@required this.userAnswer}) : assert(userAnswer != null);

  @override
  final Answer userAnswer;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrainEvent.proceedAnswer(userAnswer: $userAnswer)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrainEvent.proceedAnswer'))
      ..add(DiagnosticsProperty('userAnswer', userAnswer));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProceedAnswer &&
            (identical(other.userAnswer, userAnswer) ||
                const DeepCollectionEquality()
                    .equals(other.userAnswer, userAnswer)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userAnswer);

  @override
  $ProceedAnswerCopyWith<ProceedAnswer> get copyWith =>
      _$ProceedAnswerCopyWithImpl<ProceedAnswer>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadDecksForTrain(),
    @required Result reverseAnswer(),
    @required Result flipCard(),
    @required Result proceedAnswer(Answer userAnswer),
    @required Result startNextDeck(),
    @required Result stopTrain(),
  }) {
    assert(loadDecksForTrain != null);
    assert(reverseAnswer != null);
    assert(flipCard != null);
    assert(proceedAnswer != null);
    assert(startNextDeck != null);
    assert(stopTrain != null);
    return proceedAnswer(userAnswer);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadDecksForTrain(),
    Result reverseAnswer(),
    Result flipCard(),
    Result proceedAnswer(Answer userAnswer),
    Result startNextDeck(),
    Result stopTrain(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (proceedAnswer != null) {
      return proceedAnswer(userAnswer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadDecksForTrain(LoadDecksForTrain value),
    @required Result reverseAnswer(ReverseAnswer value),
    @required Result flipCard(FlipCard value),
    @required Result proceedAnswer(ProceedAnswer value),
    @required Result startNextDeck(StartNextDeck value),
    @required Result stopTrain(StopTrain value),
  }) {
    assert(loadDecksForTrain != null);
    assert(reverseAnswer != null);
    assert(flipCard != null);
    assert(proceedAnswer != null);
    assert(startNextDeck != null);
    assert(stopTrain != null);
    return proceedAnswer(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadDecksForTrain(LoadDecksForTrain value),
    Result reverseAnswer(ReverseAnswer value),
    Result flipCard(FlipCard value),
    Result proceedAnswer(ProceedAnswer value),
    Result startNextDeck(StartNextDeck value),
    Result stopTrain(StopTrain value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (proceedAnswer != null) {
      return proceedAnswer(this);
    }
    return orElse();
  }
}

abstract class ProceedAnswer implements TrainEvent {
  factory ProceedAnswer({@required Answer userAnswer}) = _$ProceedAnswer;

  Answer get userAnswer;
  $ProceedAnswerCopyWith<ProceedAnswer> get copyWith;
}

abstract class $StartNextDeckCopyWith<$Res> {
  factory $StartNextDeckCopyWith(
          StartNextDeck value, $Res Function(StartNextDeck) then) =
      _$StartNextDeckCopyWithImpl<$Res>;
}

class _$StartNextDeckCopyWithImpl<$Res> extends _$TrainEventCopyWithImpl<$Res>
    implements $StartNextDeckCopyWith<$Res> {
  _$StartNextDeckCopyWithImpl(
      StartNextDeck _value, $Res Function(StartNextDeck) _then)
      : super(_value, (v) => _then(v as StartNextDeck));

  @override
  StartNextDeck get _value => super._value as StartNextDeck;
}

class _$StartNextDeck with DiagnosticableTreeMixin implements StartNextDeck {
  _$StartNextDeck();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrainEvent.startNextDeck()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'TrainEvent.startNextDeck'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StartNextDeck);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadDecksForTrain(),
    @required Result reverseAnswer(),
    @required Result flipCard(),
    @required Result proceedAnswer(Answer userAnswer),
    @required Result startNextDeck(),
    @required Result stopTrain(),
  }) {
    assert(loadDecksForTrain != null);
    assert(reverseAnswer != null);
    assert(flipCard != null);
    assert(proceedAnswer != null);
    assert(startNextDeck != null);
    assert(stopTrain != null);
    return startNextDeck();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadDecksForTrain(),
    Result reverseAnswer(),
    Result flipCard(),
    Result proceedAnswer(Answer userAnswer),
    Result startNextDeck(),
    Result stopTrain(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (startNextDeck != null) {
      return startNextDeck();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadDecksForTrain(LoadDecksForTrain value),
    @required Result reverseAnswer(ReverseAnswer value),
    @required Result flipCard(FlipCard value),
    @required Result proceedAnswer(ProceedAnswer value),
    @required Result startNextDeck(StartNextDeck value),
    @required Result stopTrain(StopTrain value),
  }) {
    assert(loadDecksForTrain != null);
    assert(reverseAnswer != null);
    assert(flipCard != null);
    assert(proceedAnswer != null);
    assert(startNextDeck != null);
    assert(stopTrain != null);
    return startNextDeck(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadDecksForTrain(LoadDecksForTrain value),
    Result reverseAnswer(ReverseAnswer value),
    Result flipCard(FlipCard value),
    Result proceedAnswer(ProceedAnswer value),
    Result startNextDeck(StartNextDeck value),
    Result stopTrain(StopTrain value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (startNextDeck != null) {
      return startNextDeck(this);
    }
    return orElse();
  }
}

abstract class StartNextDeck implements TrainEvent {
  factory StartNextDeck() = _$StartNextDeck;
}

abstract class $StopTrainCopyWith<$Res> {
  factory $StopTrainCopyWith(StopTrain value, $Res Function(StopTrain) then) =
      _$StopTrainCopyWithImpl<$Res>;
}

class _$StopTrainCopyWithImpl<$Res> extends _$TrainEventCopyWithImpl<$Res>
    implements $StopTrainCopyWith<$Res> {
  _$StopTrainCopyWithImpl(StopTrain _value, $Res Function(StopTrain) _then)
      : super(_value, (v) => _then(v as StopTrain));

  @override
  StopTrain get _value => super._value as StopTrain;
}

class _$StopTrain with DiagnosticableTreeMixin implements StopTrain {
  _$StopTrain();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrainEvent.stopTrain()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'TrainEvent.stopTrain'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StopTrain);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loadDecksForTrain(),
    @required Result reverseAnswer(),
    @required Result flipCard(),
    @required Result proceedAnswer(Answer userAnswer),
    @required Result startNextDeck(),
    @required Result stopTrain(),
  }) {
    assert(loadDecksForTrain != null);
    assert(reverseAnswer != null);
    assert(flipCard != null);
    assert(proceedAnswer != null);
    assert(startNextDeck != null);
    assert(stopTrain != null);
    return stopTrain();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loadDecksForTrain(),
    Result reverseAnswer(),
    Result flipCard(),
    Result proceedAnswer(Answer userAnswer),
    Result startNextDeck(),
    Result stopTrain(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (stopTrain != null) {
      return stopTrain();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loadDecksForTrain(LoadDecksForTrain value),
    @required Result reverseAnswer(ReverseAnswer value),
    @required Result flipCard(FlipCard value),
    @required Result proceedAnswer(ProceedAnswer value),
    @required Result startNextDeck(StartNextDeck value),
    @required Result stopTrain(StopTrain value),
  }) {
    assert(loadDecksForTrain != null);
    assert(reverseAnswer != null);
    assert(flipCard != null);
    assert(proceedAnswer != null);
    assert(startNextDeck != null);
    assert(stopTrain != null);
    return stopTrain(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loadDecksForTrain(LoadDecksForTrain value),
    Result reverseAnswer(ReverseAnswer value),
    Result flipCard(FlipCard value),
    Result proceedAnswer(ProceedAnswer value),
    Result startNextDeck(StartNextDeck value),
    Result stopTrain(StopTrain value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (stopTrain != null) {
      return stopTrain(this);
    }
    return orElse();
  }
}

abstract class StopTrain implements TrainEvent {
  factory StopTrain() = _$StopTrain;
}

class _$TrainStateTearOff {
  const _$TrainStateTearOff();

  _TrainState call(
      {@required bool isPending,
      @required Option<Either<TrainFailure, Unit>> loadingDecksStatus,
      @required Queue<MDEDeck> decksToTrain}) {
    return _TrainState(
      isPending: isPending,
      loadingDecksStatus: loadingDecksStatus,
      decksToTrain: decksToTrain,
    );
  }
}

// ignore: unused_element
const $TrainState = _$TrainStateTearOff();

mixin _$TrainState {
  bool get isPending;
  Option<Either<TrainFailure, Unit>> get loadingDecksStatus;
  Queue<MDEDeck> get decksToTrain;

  $TrainStateCopyWith<TrainState> get copyWith;
}

abstract class $TrainStateCopyWith<$Res> {
  factory $TrainStateCopyWith(
          TrainState value, $Res Function(TrainState) then) =
      _$TrainStateCopyWithImpl<$Res>;
  $Res call(
      {bool isPending,
      Option<Either<TrainFailure, Unit>> loadingDecksStatus,
      Queue<MDEDeck> decksToTrain});
}

class _$TrainStateCopyWithImpl<$Res> implements $TrainStateCopyWith<$Res> {
  _$TrainStateCopyWithImpl(this._value, this._then);

  final TrainState _value;
  // ignore: unused_field
  final $Res Function(TrainState) _then;

  @override
  $Res call({
    Object isPending = freezed,
    Object loadingDecksStatus = freezed,
    Object decksToTrain = freezed,
  }) {
    return _then(_value.copyWith(
      isPending: isPending == freezed ? _value.isPending : isPending as bool,
      loadingDecksStatus: loadingDecksStatus == freezed
          ? _value.loadingDecksStatus
          : loadingDecksStatus as Option<Either<TrainFailure, Unit>>,
      decksToTrain: decksToTrain == freezed
          ? _value.decksToTrain
          : decksToTrain as Queue<MDEDeck>,
    ));
  }
}

abstract class _$TrainStateCopyWith<$Res> implements $TrainStateCopyWith<$Res> {
  factory _$TrainStateCopyWith(
          _TrainState value, $Res Function(_TrainState) then) =
      __$TrainStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isPending,
      Option<Either<TrainFailure, Unit>> loadingDecksStatus,
      Queue<MDEDeck> decksToTrain});
}

class __$TrainStateCopyWithImpl<$Res> extends _$TrainStateCopyWithImpl<$Res>
    implements _$TrainStateCopyWith<$Res> {
  __$TrainStateCopyWithImpl(
      _TrainState _value, $Res Function(_TrainState) _then)
      : super(_value, (v) => _then(v as _TrainState));

  @override
  _TrainState get _value => super._value as _TrainState;

  @override
  $Res call({
    Object isPending = freezed,
    Object loadingDecksStatus = freezed,
    Object decksToTrain = freezed,
  }) {
    return _then(_TrainState(
      isPending: isPending == freezed ? _value.isPending : isPending as bool,
      loadingDecksStatus: loadingDecksStatus == freezed
          ? _value.loadingDecksStatus
          : loadingDecksStatus as Option<Either<TrainFailure, Unit>>,
      decksToTrain: decksToTrain == freezed
          ? _value.decksToTrain
          : decksToTrain as Queue<MDEDeck>,
    ));
  }
}

class _$_TrainState with DiagnosticableTreeMixin implements _TrainState {
  const _$_TrainState(
      {@required this.isPending,
      @required this.loadingDecksStatus,
      @required this.decksToTrain})
      : assert(isPending != null),
        assert(loadingDecksStatus != null),
        assert(decksToTrain != null);

  @override
  final bool isPending;
  @override
  final Option<Either<TrainFailure, Unit>> loadingDecksStatus;
  @override
  final Queue<MDEDeck> decksToTrain;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TrainState(isPending: $isPending, loadingDecksStatus: $loadingDecksStatus, decksToTrain: $decksToTrain)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TrainState'))
      ..add(DiagnosticsProperty('isPending', isPending))
      ..add(DiagnosticsProperty('loadingDecksStatus', loadingDecksStatus))
      ..add(DiagnosticsProperty('decksToTrain', decksToTrain));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TrainState &&
            (identical(other.isPending, isPending) ||
                const DeepCollectionEquality()
                    .equals(other.isPending, isPending)) &&
            (identical(other.loadingDecksStatus, loadingDecksStatus) ||
                const DeepCollectionEquality()
                    .equals(other.loadingDecksStatus, loadingDecksStatus)) &&
            (identical(other.decksToTrain, decksToTrain) ||
                const DeepCollectionEquality()
                    .equals(other.decksToTrain, decksToTrain)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isPending) ^
      const DeepCollectionEquality().hash(loadingDecksStatus) ^
      const DeepCollectionEquality().hash(decksToTrain);

  @override
  _$TrainStateCopyWith<_TrainState> get copyWith =>
      __$TrainStateCopyWithImpl<_TrainState>(this, _$identity);
}

abstract class _TrainState implements TrainState {
  const factory _TrainState(
      {@required bool isPending,
      @required Option<Either<TrainFailure, Unit>> loadingDecksStatus,
      @required Queue<MDEDeck> decksToTrain}) = _$_TrainState;

  @override
  bool get isPending;
  @override
  Option<Either<TrainFailure, Unit>> get loadingDecksStatus;
  @override
  Queue<MDEDeck> get decksToTrain;
  @override
  _$TrainStateCopyWith<_TrainState> get copyWith;
}
