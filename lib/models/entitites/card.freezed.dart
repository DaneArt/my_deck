// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CardTearOff {
  const _$CardTearOff();

  _Card call(
      {@required UniqueId id,
      @required MDFile answer,
      @required MDFile question}) {
    return _Card(
      id: id,
      answer: answer,
      question: question,
    );
  }
}

// ignore: unused_element
const $Card = _$CardTearOff();

mixin _$Card {
  UniqueId get id;
  MDFile get answer;
  MDFile get question;

  $CardCopyWith<Card> get copyWith;
}

abstract class $CardCopyWith<$Res> {
  factory $CardCopyWith(Card value, $Res Function(Card) then) =
      _$CardCopyWithImpl<$Res>;
  $Res call({UniqueId id, MDFile answer, MDFile question});
}

class _$CardCopyWithImpl<$Res> implements $CardCopyWith<$Res> {
  _$CardCopyWithImpl(this._value, this._then);

  final Card _value;
  // ignore: unused_field
  final $Res Function(Card) _then;

  @override
  $Res call({
    Object id = freezed,
    Object answer = freezed,
    Object question = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      answer: answer == freezed ? _value.answer : answer as MDFile,
      question: question == freezed ? _value.question : question as MDFile,
    ));
  }
}

abstract class _$CardCopyWith<$Res> implements $CardCopyWith<$Res> {
  factory _$CardCopyWith(_Card value, $Res Function(_Card) then) =
      __$CardCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, MDFile answer, MDFile question});
}

class __$CardCopyWithImpl<$Res> extends _$CardCopyWithImpl<$Res>
    implements _$CardCopyWith<$Res> {
  __$CardCopyWithImpl(_Card _value, $Res Function(_Card) _then)
      : super(_value, (v) => _then(v as _Card));

  @override
  _Card get _value => super._value as _Card;

  @override
  $Res call({
    Object id = freezed,
    Object answer = freezed,
    Object question = freezed,
  }) {
    return _then(_Card(
      id: id == freezed ? _value.id : id as UniqueId,
      answer: answer == freezed ? _value.answer : answer as MDFile,
      question: question == freezed ? _value.question : question as MDFile,
    ));
  }
}

class _$_Card extends _Card {
  const _$_Card(
      {@required this.id, @required this.answer, @required this.question})
      : assert(id != null),
        assert(answer != null),
        assert(question != null),
        super._();

  @override
  final UniqueId id;
  @override
  final MDFile answer;
  @override
  final MDFile question;

  @override
  String toString() {
    return 'Card(id: $id, answer: $answer, question: $question)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Card &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.answer, answer) ||
                const DeepCollectionEquality().equals(other.answer, answer)) &&
            (identical(other.question, question) ||
                const DeepCollectionEquality()
                    .equals(other.question, question)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(answer) ^
      const DeepCollectionEquality().hash(question);

  @override
  _$CardCopyWith<_Card> get copyWith =>
      __$CardCopyWithImpl<_Card>(this, _$identity);
}

abstract class _Card extends Card {
  const _Card._() : super._();
  const factory _Card(
      {@required UniqueId id,
      @required MDFile answer,
      @required MDFile question}) = _$_Card;

  @override
  UniqueId get id;
  @override
  MDFile get answer;
  @override
  MDFile get question;
  @override
  _$CardCopyWith<_Card> get copyWith;
}
