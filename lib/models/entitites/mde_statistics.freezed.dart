// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'mde_statistics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MDEStatisticsTearOff {
  const _$MDEStatisticsTearOff();

  _MDEStatistics call({@required int xp}) {
    return _MDEStatistics(
      xp: xp,
    );
  }
}

// ignore: unused_element
const $MDEStatistics = _$MDEStatisticsTearOff();

mixin _$MDEStatistics {
  int get xp;

  $MDEStatisticsCopyWith<MDEStatistics> get copyWith;
}

abstract class $MDEStatisticsCopyWith<$Res> {
  factory $MDEStatisticsCopyWith(
          MDEStatistics value, $Res Function(MDEStatistics) then) =
      _$MDEStatisticsCopyWithImpl<$Res>;
  $Res call({int xp});
}

class _$MDEStatisticsCopyWithImpl<$Res>
    implements $MDEStatisticsCopyWith<$Res> {
  _$MDEStatisticsCopyWithImpl(this._value, this._then);

  final MDEStatistics _value;
  // ignore: unused_field
  final $Res Function(MDEStatistics) _then;

  @override
  $Res call({
    Object xp = freezed,
  }) {
    return _then(_value.copyWith(
      xp: xp == freezed ? _value.xp : xp as int,
    ));
  }
}

abstract class _$MDEStatisticsCopyWith<$Res>
    implements $MDEStatisticsCopyWith<$Res> {
  factory _$MDEStatisticsCopyWith(
          _MDEStatistics value, $Res Function(_MDEStatistics) then) =
      __$MDEStatisticsCopyWithImpl<$Res>;
  @override
  $Res call({int xp});
}

class __$MDEStatisticsCopyWithImpl<$Res>
    extends _$MDEStatisticsCopyWithImpl<$Res>
    implements _$MDEStatisticsCopyWith<$Res> {
  __$MDEStatisticsCopyWithImpl(
      _MDEStatistics _value, $Res Function(_MDEStatistics) _then)
      : super(_value, (v) => _then(v as _MDEStatistics));

  @override
  _MDEStatistics get _value => super._value as _MDEStatistics;

  @override
  $Res call({
    Object xp = freezed,
  }) {
    return _then(_MDEStatistics(
      xp: xp == freezed ? _value.xp : xp as int,
    ));
  }
}

class _$_MDEStatistics extends _MDEStatistics {
  const _$_MDEStatistics({@required this.xp})
      : assert(xp != null),
        super._();

  @override
  final int xp;

  @override
  String toString() {
    return 'MDEStatistics(xp: $xp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MDEStatistics &&
            (identical(other.xp, xp) ||
                const DeepCollectionEquality().equals(other.xp, xp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(xp);

  @override
  _$MDEStatisticsCopyWith<_MDEStatistics> get copyWith =>
      __$MDEStatisticsCopyWithImpl<_MDEStatistics>(this, _$identity);
}

abstract class _MDEStatistics extends MDEStatistics {
  const _MDEStatistics._() : super._();
  const factory _MDEStatistics({@required int xp}) = _$_MDEStatistics;

  @override
  int get xp;
  @override
  _$MDEStatisticsCopyWith<_MDEStatistics> get copyWith;
}
