// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'deck_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DeckCategory _$DeckCategoryFromJson(Map<String, dynamic> json) {
  return _DeckCategory.fromJson(json);
}

class _$DeckCategoryTearOff {
  const _$DeckCategoryTearOff();

  _DeckCategory call({@required String categoryName}) {
    return _DeckCategory(
      categoryName: categoryName,
    );
  }
}

// ignore: unused_element
const $DeckCategory = _$DeckCategoryTearOff();

mixin _$DeckCategory {
  String get categoryName;

  Map<String, dynamic> toJson();
  $DeckCategoryCopyWith<DeckCategory> get copyWith;
}

abstract class $DeckCategoryCopyWith<$Res> {
  factory $DeckCategoryCopyWith(
          DeckCategory value, $Res Function(DeckCategory) then) =
      _$DeckCategoryCopyWithImpl<$Res>;
  $Res call({String categoryName});
}

class _$DeckCategoryCopyWithImpl<$Res> implements $DeckCategoryCopyWith<$Res> {
  _$DeckCategoryCopyWithImpl(this._value, this._then);

  final DeckCategory _value;
  // ignore: unused_field
  final $Res Function(DeckCategory) _then;

  @override
  $Res call({
    Object categoryName = freezed,
  }) {
    return _then(_value.copyWith(
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName as String,
    ));
  }
}

abstract class _$DeckCategoryCopyWith<$Res>
    implements $DeckCategoryCopyWith<$Res> {
  factory _$DeckCategoryCopyWith(
          _DeckCategory value, $Res Function(_DeckCategory) then) =
      __$DeckCategoryCopyWithImpl<$Res>;
  @override
  $Res call({String categoryName});
}

class __$DeckCategoryCopyWithImpl<$Res> extends _$DeckCategoryCopyWithImpl<$Res>
    implements _$DeckCategoryCopyWith<$Res> {
  __$DeckCategoryCopyWithImpl(
      _DeckCategory _value, $Res Function(_DeckCategory) _then)
      : super(_value, (v) => _then(v as _DeckCategory));

  @override
  _DeckCategory get _value => super._value as _DeckCategory;

  @override
  $Res call({
    Object categoryName = freezed,
  }) {
    return _then(_DeckCategory(
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName as String,
    ));
  }
}

@JsonSerializable()
class _$_DeckCategory extends _DeckCategory with DiagnosticableTreeMixin {
  const _$_DeckCategory({@required this.categoryName})
      : assert(categoryName != null),
        super._();

  factory _$_DeckCategory.fromJson(Map<String, dynamic> json) =>
      _$_$_DeckCategoryFromJson(json);

  @override
  final String categoryName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DeckCategory(categoryName: $categoryName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeckCategory'))
      ..add(DiagnosticsProperty('categoryName', categoryName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeckCategory &&
            (identical(other.categoryName, categoryName) ||
                const DeepCollectionEquality()
                    .equals(other.categoryName, categoryName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(categoryName);

  @override
  _$DeckCategoryCopyWith<_DeckCategory> get copyWith =>
      __$DeckCategoryCopyWithImpl<_DeckCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DeckCategoryToJson(this);
  }
}

abstract class _DeckCategory extends DeckCategory {
  const _DeckCategory._() : super._();
  const factory _DeckCategory({@required String categoryName}) =
      _$_DeckCategory;

  factory _DeckCategory.fromJson(Map<String, dynamic> json) =
      _$_DeckCategory.fromJson;

  @override
  String get categoryName;
  @override
  _$DeckCategoryCopyWith<_DeckCategory> get copyWith;
}
