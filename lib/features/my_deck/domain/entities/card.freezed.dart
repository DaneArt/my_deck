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
      {@required UniqueId cardId,
      @required CardContent answer,
      @required CardContent question}) {
    return _Card(
      cardId: cardId,
      answer: answer,
      question: question,
    );
  }
}

// ignore: unused_element
const $Card = _$CardTearOff();

mixin _$Card {
  UniqueId get cardId;
  CardContent get answer;
  CardContent get question;

  $CardCopyWith<Card> get copyWith;
}

abstract class $CardCopyWith<$Res> {
  factory $CardCopyWith(Card value, $Res Function(Card) then) =
      _$CardCopyWithImpl<$Res>;
  $Res call({UniqueId cardId, CardContent answer, CardContent question});

  $CardContentCopyWith<$Res> get answer;
  $CardContentCopyWith<$Res> get question;
}

class _$CardCopyWithImpl<$Res> implements $CardCopyWith<$Res> {
  _$CardCopyWithImpl(this._value, this._then);

  final Card _value;
  // ignore: unused_field
  final $Res Function(Card) _then;

  @override
  $Res call({
    Object cardId = freezed,
    Object answer = freezed,
    Object question = freezed,
  }) {
    return _then(_value.copyWith(
      cardId: cardId == freezed ? _value.cardId : cardId as UniqueId,
      answer: answer == freezed ? _value.answer : answer as CardContent,
      question: question == freezed ? _value.question : question as CardContent,
    ));
  }

  @override
  $CardContentCopyWith<$Res> get answer {
    if (_value.answer == null) {
      return null;
    }
    return $CardContentCopyWith<$Res>(_value.answer, (value) {
      return _then(_value.copyWith(answer: value));
    });
  }

  @override
  $CardContentCopyWith<$Res> get question {
    if (_value.question == null) {
      return null;
    }
    return $CardContentCopyWith<$Res>(_value.question, (value) {
      return _then(_value.copyWith(question: value));
    });
  }
}

abstract class _$CardCopyWith<$Res> implements $CardCopyWith<$Res> {
  factory _$CardCopyWith(_Card value, $Res Function(_Card) then) =
      __$CardCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId cardId, CardContent answer, CardContent question});

  @override
  $CardContentCopyWith<$Res> get answer;
  @override
  $CardContentCopyWith<$Res> get question;
}

class __$CardCopyWithImpl<$Res> extends _$CardCopyWithImpl<$Res>
    implements _$CardCopyWith<$Res> {
  __$CardCopyWithImpl(_Card _value, $Res Function(_Card) _then)
      : super(_value, (v) => _then(v as _Card));

  @override
  _Card get _value => super._value as _Card;

  @override
  $Res call({
    Object cardId = freezed,
    Object answer = freezed,
    Object question = freezed,
  }) {
    return _then(_Card(
      cardId: cardId == freezed ? _value.cardId : cardId as UniqueId,
      answer: answer == freezed ? _value.answer : answer as CardContent,
      question: question == freezed ? _value.question : question as CardContent,
    ));
  }
}

class _$_Card extends _Card {
  const _$_Card(
      {@required this.cardId, @required this.answer, @required this.question})
      : assert(cardId != null),
        assert(answer != null),
        assert(question != null),
        super._();

  @override
  final UniqueId cardId;
  @override
  final CardContent answer;
  @override
  final CardContent question;

  @override
  String toString() {
    return 'Card(cardId: $cardId, answer: $answer, question: $question)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Card &&
            (identical(other.cardId, cardId) ||
                const DeepCollectionEquality().equals(other.cardId, cardId)) &&
            (identical(other.answer, answer) ||
                const DeepCollectionEquality().equals(other.answer, answer)) &&
            (identical(other.question, question) ||
                const DeepCollectionEquality()
                    .equals(other.question, question)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cardId) ^
      const DeepCollectionEquality().hash(answer) ^
      const DeepCollectionEquality().hash(question);

  @override
  _$CardCopyWith<_Card> get copyWith =>
      __$CardCopyWithImpl<_Card>(this, _$identity);
}

abstract class _Card extends Card {
  const _Card._() : super._();
  const factory _Card(
      {@required UniqueId cardId,
      @required CardContent answer,
      @required CardContent question}) = _$_Card;

  @override
  UniqueId get cardId;
  @override
  CardContent get answer;
  @override
  CardContent get question;
  @override
  _$CardCopyWith<_Card> get copyWith;
}
