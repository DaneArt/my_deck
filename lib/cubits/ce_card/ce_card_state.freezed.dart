// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'ce_card_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CECardStateTearOff {
  const _$CECardStateTearOff();

  _CECardState call({@required MDECard card, @required bool isQuestion}) {
    return _CECardState(
      card: card,
      isQuestion: isQuestion,
    );
  }
}

// ignore: unused_element
const $CECardState = _$CECardStateTearOff();

mixin _$CECardState {
  MDECard get card;
  bool get isQuestion;

  $CECardStateCopyWith<CECardState> get copyWith;
}

abstract class $CECardStateCopyWith<$Res> {
  factory $CECardStateCopyWith(
          CECardState value, $Res Function(CECardState) then) =
      _$CECardStateCopyWithImpl<$Res>;
  $Res call({MDECard card, bool isQuestion});

  $MDECardCopyWith<$Res> get card;
}

class _$CECardStateCopyWithImpl<$Res> implements $CECardStateCopyWith<$Res> {
  _$CECardStateCopyWithImpl(this._value, this._then);

  final CECardState _value;
  // ignore: unused_field
  final $Res Function(CECardState) _then;

  @override
  $Res call({
    Object card = freezed,
    Object isQuestion = freezed,
  }) {
    return _then(_value.copyWith(
      card: card == freezed ? _value.card : card as MDECard,
      isQuestion:
          isQuestion == freezed ? _value.isQuestion : isQuestion as bool,
    ));
  }

  @override
  $MDECardCopyWith<$Res> get card {
    if (_value.card == null) {
      return null;
    }
    return $MDECardCopyWith<$Res>(_value.card, (value) {
      return _then(_value.copyWith(card: value));
    });
  }
}

abstract class _$CECardStateCopyWith<$Res>
    implements $CECardStateCopyWith<$Res> {
  factory _$CECardStateCopyWith(
          _CECardState value, $Res Function(_CECardState) then) =
      __$CECardStateCopyWithImpl<$Res>;
  @override
  $Res call({MDECard card, bool isQuestion});

  @override
  $MDECardCopyWith<$Res> get card;
}

class __$CECardStateCopyWithImpl<$Res> extends _$CECardStateCopyWithImpl<$Res>
    implements _$CECardStateCopyWith<$Res> {
  __$CECardStateCopyWithImpl(
      _CECardState _value, $Res Function(_CECardState) _then)
      : super(_value, (v) => _then(v as _CECardState));

  @override
  _CECardState get _value => super._value as _CECardState;

  @override
  $Res call({
    Object card = freezed,
    Object isQuestion = freezed,
  }) {
    return _then(_CECardState(
      card: card == freezed ? _value.card : card as MDECard,
      isQuestion:
          isQuestion == freezed ? _value.isQuestion : isQuestion as bool,
    ));
  }
}

class _$_CECardState implements _CECardState {
  const _$_CECardState({@required this.card, @required this.isQuestion})
      : assert(card != null),
        assert(isQuestion != null);

  @override
  final MDECard card;
  @override
  final bool isQuestion;

  @override
  String toString() {
    return 'CECardState(card: $card, isQuestion: $isQuestion)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CECardState &&
            (identical(other.card, card) ||
                const DeepCollectionEquality().equals(other.card, card)) &&
            (identical(other.isQuestion, isQuestion) ||
                const DeepCollectionEquality()
                    .equals(other.isQuestion, isQuestion)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(card) ^
      const DeepCollectionEquality().hash(isQuestion);

  @override
  _$CECardStateCopyWith<_CECardState> get copyWith =>
      __$CECardStateCopyWithImpl<_CECardState>(this, _$identity);
}

abstract class _CECardState implements CECardState {
  const factory _CECardState(
      {@required MDECard card, @required bool isQuestion}) = _$_CECardState;

  @override
  MDECard get card;
  @override
  bool get isQuestion;
  @override
  _$CECardStateCopyWith<_CECardState> get copyWith;
}
