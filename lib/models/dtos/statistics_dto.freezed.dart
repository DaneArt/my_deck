// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'statistics_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
StatisticsDto _$StatisticsDtoFromJson(Map<String, dynamic> json) {
  return _StatisticsDto.fromJson(json);
}

class _$StatisticsDtoTearOff {
  const _$StatisticsDtoTearOff();

  _StatisticsDto call(
      {@required String userId, @required String cardId, @required int xp}) {
    return _StatisticsDto(
      userId: userId,
      cardId: cardId,
      xp: xp,
    );
  }
}

// ignore: unused_element
const $StatisticsDto = _$StatisticsDtoTearOff();

mixin _$StatisticsDto {
  String get userId;
  String get cardId;
  int get xp;

  Map<String, dynamic> toJson();
  $StatisticsDtoCopyWith<StatisticsDto> get copyWith;
}

abstract class $StatisticsDtoCopyWith<$Res> {
  factory $StatisticsDtoCopyWith(
          StatisticsDto value, $Res Function(StatisticsDto) then) =
      _$StatisticsDtoCopyWithImpl<$Res>;
  $Res call({String userId, String cardId, int xp});
}

class _$StatisticsDtoCopyWithImpl<$Res>
    implements $StatisticsDtoCopyWith<$Res> {
  _$StatisticsDtoCopyWithImpl(this._value, this._then);

  final StatisticsDto _value;
  // ignore: unused_field
  final $Res Function(StatisticsDto) _then;

  @override
  $Res call({
    Object userId = freezed,
    Object cardId = freezed,
    Object xp = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed ? _value.userId : userId as String,
      cardId: cardId == freezed ? _value.cardId : cardId as String,
      xp: xp == freezed ? _value.xp : xp as int,
    ));
  }
}

abstract class _$StatisticsDtoCopyWith<$Res>
    implements $StatisticsDtoCopyWith<$Res> {
  factory _$StatisticsDtoCopyWith(
          _StatisticsDto value, $Res Function(_StatisticsDto) then) =
      __$StatisticsDtoCopyWithImpl<$Res>;
  @override
  $Res call({String userId, String cardId, int xp});
}

class __$StatisticsDtoCopyWithImpl<$Res>
    extends _$StatisticsDtoCopyWithImpl<$Res>
    implements _$StatisticsDtoCopyWith<$Res> {
  __$StatisticsDtoCopyWithImpl(
      _StatisticsDto _value, $Res Function(_StatisticsDto) _then)
      : super(_value, (v) => _then(v as _StatisticsDto));

  @override
  _StatisticsDto get _value => super._value as _StatisticsDto;

  @override
  $Res call({
    Object userId = freezed,
    Object cardId = freezed,
    Object xp = freezed,
  }) {
    return _then(_StatisticsDto(
      userId: userId == freezed ? _value.userId : userId as String,
      cardId: cardId == freezed ? _value.cardId : cardId as String,
      xp: xp == freezed ? _value.xp : xp as int,
    ));
  }
}

@JsonSerializable()
class _$_StatisticsDto extends _StatisticsDto {
  const _$_StatisticsDto(
      {@required this.userId, @required this.cardId, @required this.xp})
      : assert(userId != null),
        assert(cardId != null),
        assert(xp != null),
        super._();

  factory _$_StatisticsDto.fromJson(Map<String, dynamic> json) =>
      _$_$_StatisticsDtoFromJson(json);

  @override
  final String userId;
  @override
  final String cardId;
  @override
  final int xp;

  @override
  String toString() {
    return 'StatisticsDto(userId: $userId, cardId: $cardId, xp: $xp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StatisticsDto &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.cardId, cardId) ||
                const DeepCollectionEquality().equals(other.cardId, cardId)) &&
            (identical(other.xp, xp) ||
                const DeepCollectionEquality().equals(other.xp, xp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(cardId) ^
      const DeepCollectionEquality().hash(xp);

  @override
  _$StatisticsDtoCopyWith<_StatisticsDto> get copyWith =>
      __$StatisticsDtoCopyWithImpl<_StatisticsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StatisticsDtoToJson(this);
  }
}

abstract class _StatisticsDto extends StatisticsDto {
  const _StatisticsDto._() : super._();
  const factory _StatisticsDto(
      {@required String userId,
      @required String cardId,
      @required int xp}) = _$_StatisticsDto;

  factory _StatisticsDto.fromJson(Map<String, dynamic> json) =
      _$_StatisticsDto.fromJson;

  @override
  String get userId;
  @override
  String get cardId;
  @override
  int get xp;
  @override
  _$StatisticsDtoCopyWith<_StatisticsDto> get copyWith;
}
