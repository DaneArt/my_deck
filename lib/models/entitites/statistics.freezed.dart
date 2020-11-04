// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'statistics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$StatisticsTearOff {
  const _$StatisticsTearOff();

  _Statistics call({@required int xp}) {
    return _Statistics(
      xp: xp,
    );
  }
}

// ignore: unused_element
const $Statistics = _$StatisticsTearOff();

mixin _$Statistics {
  int get xp;

  $StatisticsCopyWith<Statistics> get copyWith;
}

abstract class $StatisticsCopyWith<$Res> {
  factory $StatisticsCopyWith(
          Statistics value, $Res Function(Statistics) then) =
      _$StatisticsCopyWithImpl<$Res>;
  $Res call({int xp});
}

class _$StatisticsCopyWithImpl<$Res> implements $StatisticsCopyWith<$Res> {
  _$StatisticsCopyWithImpl(this._value, this._then);

  final Statistics _value;
  // ignore: unused_field
  final $Res Function(Statistics) _then;

  @override
  $Res call({
    Object xp = freezed,
  }) {
    return _then(_value.copyWith(
      xp: xp == freezed ? _value.xp : xp as int,
    ));
  }
}

abstract class _$StatisticsCopyWith<$Res> implements $StatisticsCopyWith<$Res> {
  factory _$StatisticsCopyWith(
          _Statistics value, $Res Function(_Statistics) then) =
      __$StatisticsCopyWithImpl<$Res>;
  @override
  $Res call({int xp});
}

class __$StatisticsCopyWithImpl<$Res> extends _$StatisticsCopyWithImpl<$Res>
    implements _$StatisticsCopyWith<$Res> {
  __$StatisticsCopyWithImpl(
      _Statistics _value, $Res Function(_Statistics) _then)
      : super(_value, (v) => _then(v as _Statistics));

  @override
  _Statistics get _value => super._value as _Statistics;

  @override
  $Res call({
    Object xp = freezed,
  }) {
    return _then(_Statistics(
      xp: xp == freezed ? _value.xp : xp as int,
    ));
  }
}

class _$_Statistics extends _Statistics {
  const _$_Statistics({@required this.xp})
      : assert(xp != null),
        super._();

  @override
  final int xp;

  @override
  String toString() {
    return 'Statistics(xp: $xp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Statistics &&
            (identical(other.xp, xp) ||
                const DeepCollectionEquality().equals(other.xp, xp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(xp);

  @override
  _$StatisticsCopyWith<_Statistics> get copyWith =>
      __$StatisticsCopyWithImpl<_Statistics>(this, _$identity);
}

abstract class _Statistics extends Statistics {
  const _Statistics._() : super._();
  const factory _Statistics({@required int xp}) = _$_Statistics;

  @override
  int get xp;
  @override
  _$StatisticsCopyWith<_Statistics> get copyWith;
}
