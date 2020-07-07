// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'card_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CardDto _$CardDtoFromJson(Map<String, dynamic> json) {
  return _CardDto.fromJson(json);
}

class _$CardDtoTearOff {
  const _$CardDtoTearOff();

  _CardDto call(
      {@required @JsonKey(name: 'card_id') String cardId,
      @required @CardContentConverter() String answer,
      @required @CardContentConverter() String question}) {
    return _CardDto(
      cardId: cardId,
      answer: answer,
      question: question,
    );
  }
}

// ignore: unused_element
const $CardDto = _$CardDtoTearOff();

mixin _$CardDto {
  @JsonKey(name: 'card_id')
  String get cardId;
  @CardContentConverter()
  String get answer;
  @CardContentConverter()
  String get question;

  Map<String, dynamic> toJson();
  $CardDtoCopyWith<CardDto> get copyWith;
}

abstract class $CardDtoCopyWith<$Res> {
  factory $CardDtoCopyWith(CardDto value, $Res Function(CardDto) then) =
      _$CardDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'card_id') String cardId,
      @CardContentConverter() String answer,
      @CardContentConverter() String question});
}

class _$CardDtoCopyWithImpl<$Res> implements $CardDtoCopyWith<$Res> {
  _$CardDtoCopyWithImpl(this._value, this._then);

  final CardDto _value;
  // ignore: unused_field
  final $Res Function(CardDto) _then;

  @override
  $Res call({
    Object cardId = freezed,
    Object answer = freezed,
    Object question = freezed,
  }) {
    return _then(_value.copyWith(
      cardId: cardId == freezed ? _value.cardId : cardId as String,
      answer: answer == freezed ? _value.answer : answer as String,
      question: question == freezed ? _value.question : question as String,
    ));
  }
}

abstract class _$CardDtoCopyWith<$Res> implements $CardDtoCopyWith<$Res> {
  factory _$CardDtoCopyWith(_CardDto value, $Res Function(_CardDto) then) =
      __$CardDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'card_id') String cardId,
      @CardContentConverter() String answer,
      @CardContentConverter() String question});
}

class __$CardDtoCopyWithImpl<$Res> extends _$CardDtoCopyWithImpl<$Res>
    implements _$CardDtoCopyWith<$Res> {
  __$CardDtoCopyWithImpl(_CardDto _value, $Res Function(_CardDto) _then)
      : super(_value, (v) => _then(v as _CardDto));

  @override
  _CardDto get _value => super._value as _CardDto;

  @override
  $Res call({
    Object cardId = freezed,
    Object answer = freezed,
    Object question = freezed,
  }) {
    return _then(_CardDto(
      cardId: cardId == freezed ? _value.cardId : cardId as String,
      answer: answer == freezed ? _value.answer : answer as String,
      question: question == freezed ? _value.question : question as String,
    ));
  }
}

@JsonSerializable()
class _$_CardDto extends _CardDto {
  const _$_CardDto(
      {@required @JsonKey(name: 'card_id') this.cardId,
      @required @CardContentConverter() this.answer,
      @required @CardContentConverter() this.question})
      : assert(cardId != null),
        assert(answer != null),
        assert(question != null),
        super._();

  factory _$_CardDto.fromJson(Map<String, dynamic> json) =>
      _$_$_CardDtoFromJson(json);

  @override
  @JsonKey(name: 'card_id')
  final String cardId;
  @override
  @CardContentConverter()
  final String answer;
  @override
  @CardContentConverter()
  final String question;

  @override
  String toString() {
    return 'CardDto(cardId: $cardId, answer: $answer, question: $question)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CardDto &&
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
  _$CardDtoCopyWith<_CardDto> get copyWith =>
      __$CardDtoCopyWithImpl<_CardDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CardDtoToJson(this);
  }
}

abstract class _CardDto extends CardDto {
  const _CardDto._() : super._();
  const factory _CardDto(
      {@required @JsonKey(name: 'card_id') String cardId,
      @required @CardContentConverter() String answer,
      @required @CardContentConverter() String question}) = _$_CardDto;

  factory _CardDto.fromJson(Map<String, dynamic> json) = _$_CardDto.fromJson;

  @override
  @JsonKey(name: 'card_id')
  String get cardId;
  @override
  @CardContentConverter()
  String get answer;
  @override
  @CardContentConverter()
  String get question;
  @override
  _$CardDtoCopyWith<_CardDto> get copyWith;
}
