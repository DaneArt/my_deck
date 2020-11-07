// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'mde_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MDECardTearOff {
  const _$MDECardTearOff();

  _MDECard call(
      {@required UniqueId id,
      @required MDEFile answer,
      @required MDEFile question,
      MDEStatistics statistics}) {
    return _MDECard(
      id: id,
      answer: answer,
      question: question,
      statistics: statistics,
    );
  }
}

// ignore: unused_element
const $MDECard = _$MDECardTearOff();

mixin _$MDECard {
  UniqueId get id;
  MDEFile get answer;
  MDEFile get question;
  MDEStatistics get statistics;

  $MDECardCopyWith<MDECard> get copyWith;
}

abstract class $MDECardCopyWith<$Res> {
  factory $MDECardCopyWith(MDECard value, $Res Function(MDECard) then) =
      _$MDECardCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      MDEFile answer,
      MDEFile question,
      MDEStatistics statistics});

  $MDEStatisticsCopyWith<$Res> get statistics;
}

class _$MDECardCopyWithImpl<$Res> implements $MDECardCopyWith<$Res> {
  _$MDECardCopyWithImpl(this._value, this._then);

  final MDECard _value;
  // ignore: unused_field
  final $Res Function(MDECard) _then;

  @override
  $Res call({
    Object id = freezed,
    Object answer = freezed,
    Object question = freezed,
    Object statistics = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      answer: answer == freezed ? _value.answer : answer as MDEFile,
      question: question == freezed ? _value.question : question as MDEFile,
      statistics: statistics == freezed
          ? _value.statistics
          : statistics as MDEStatistics,
    ));
  }

  @override
  $MDEStatisticsCopyWith<$Res> get statistics {
    if (_value.statistics == null) {
      return null;
    }
    return $MDEStatisticsCopyWith<$Res>(_value.statistics, (value) {
      return _then(_value.copyWith(statistics: value));
    });
  }
}

abstract class _$MDECardCopyWith<$Res> implements $MDECardCopyWith<$Res> {
  factory _$MDECardCopyWith(_MDECard value, $Res Function(_MDECard) then) =
      __$MDECardCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      MDEFile answer,
      MDEFile question,
      MDEStatistics statistics});

  @override
  $MDEStatisticsCopyWith<$Res> get statistics;
}

class __$MDECardCopyWithImpl<$Res> extends _$MDECardCopyWithImpl<$Res>
    implements _$MDECardCopyWith<$Res> {
  __$MDECardCopyWithImpl(_MDECard _value, $Res Function(_MDECard) _then)
      : super(_value, (v) => _then(v as _MDECard));

  @override
  _MDECard get _value => super._value as _MDECard;

  @override
  $Res call({
    Object id = freezed,
    Object answer = freezed,
    Object question = freezed,
    Object statistics = freezed,
  }) {
    return _then(_MDECard(
      id: id == freezed ? _value.id : id as UniqueId,
      answer: answer == freezed ? _value.answer : answer as MDEFile,
      question: question == freezed ? _value.question : question as MDEFile,
      statistics: statistics == freezed
          ? _value.statistics
          : statistics as MDEStatistics,
    ));
  }
}

class _$_MDECard extends _MDECard {
  const _$_MDECard(
      {@required this.id,
      @required this.answer,
      @required this.question,
      this.statistics})
      : assert(id != null),
        assert(answer != null),
        assert(question != null),
        super._();

  @override
  final UniqueId id;
  @override
  final MDEFile answer;
  @override
  final MDEFile question;
  @override
  final MDEStatistics statistics;

  @override
  String toString() {
    return 'MDECard(id: $id, answer: $answer, question: $question, statistics: $statistics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MDECard &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.answer, answer) ||
                const DeepCollectionEquality().equals(other.answer, answer)) &&
            (identical(other.question, question) ||
                const DeepCollectionEquality()
                    .equals(other.question, question)) &&
            (identical(other.statistics, statistics) ||
                const DeepCollectionEquality()
                    .equals(other.statistics, statistics)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(answer) ^
      const DeepCollectionEquality().hash(question) ^
      const DeepCollectionEquality().hash(statistics);

  @override
  _$MDECardCopyWith<_MDECard> get copyWith =>
      __$MDECardCopyWithImpl<_MDECard>(this, _$identity);
}

abstract class _MDECard extends MDECard {
  const _MDECard._() : super._();
  const factory _MDECard(
      {@required UniqueId id,
      @required MDEFile answer,
      @required MDEFile question,
      MDEStatistics statistics}) = _$_MDECard;

  @override
  UniqueId get id;
  @override
  MDEFile get answer;
  @override
  MDEFile get question;
  @override
  MDEStatistics get statistics;
  @override
  _$MDECardCopyWith<_MDECard> get copyWith;
}
