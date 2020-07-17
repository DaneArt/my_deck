// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'file_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
FileDto _$FileDtoFromJson(Map<String, dynamic> json) {
  return _CardContentDto.fromJson(json);
}

class _$FileDtoTearOff {
  const _$FileDtoTearOff();

  _CardContentDto call(
      {@required String id,
      @required @ContentTypeConverter() ContentType type}) {
    return _CardContentDto(
      id: id,
      type: type,
    );
  }
}

// ignore: unused_element
const $FileDto = _$FileDtoTearOff();

mixin _$FileDto {
  String get id;
  @ContentTypeConverter()
  ContentType get type;

  Map<String, dynamic> toJson();
  $FileDtoCopyWith<FileDto> get copyWith;
}

abstract class $FileDtoCopyWith<$Res> {
  factory $FileDtoCopyWith(FileDto value, $Res Function(FileDto) then) =
      _$FileDtoCopyWithImpl<$Res>;
  $Res call({String id, @ContentTypeConverter() ContentType type});
}

class _$FileDtoCopyWithImpl<$Res> implements $FileDtoCopyWith<$Res> {
  _$FileDtoCopyWithImpl(this._value, this._then);

  final FileDto _value;
  // ignore: unused_field
  final $Res Function(FileDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object type = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      type: type == freezed ? _value.type : type as ContentType,
    ));
  }
}

abstract class _$CardContentDtoCopyWith<$Res>
    implements $FileDtoCopyWith<$Res> {
  factory _$CardContentDtoCopyWith(
          _CardContentDto value, $Res Function(_CardContentDto) then) =
      __$CardContentDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, @ContentTypeConverter() ContentType type});
}

class __$CardContentDtoCopyWithImpl<$Res> extends _$FileDtoCopyWithImpl<$Res>
    implements _$CardContentDtoCopyWith<$Res> {
  __$CardContentDtoCopyWithImpl(
      _CardContentDto _value, $Res Function(_CardContentDto) _then)
      : super(_value, (v) => _then(v as _CardContentDto));

  @override
  _CardContentDto get _value => super._value as _CardContentDto;

  @override
  $Res call({
    Object id = freezed,
    Object type = freezed,
  }) {
    return _then(_CardContentDto(
      id: id == freezed ? _value.id : id as String,
      type: type == freezed ? _value.type : type as ContentType,
    ));
  }
}

@JsonSerializable()
class _$_CardContentDto extends _CardContentDto {
  const _$_CardContentDto(
      {@required this.id, @required @ContentTypeConverter() this.type})
      : assert(id != null),
        assert(type != null),
        super._();

  factory _$_CardContentDto.fromJson(Map<String, dynamic> json) =>
      _$_$_CardContentDtoFromJson(json);

  @override
  final String id;
  @override
  @ContentTypeConverter()
  final ContentType type;

  @override
  String toString() {
    return 'FileDto(id: $id, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CardContentDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type);

  @override
  _$CardContentDtoCopyWith<_CardContentDto> get copyWith =>
      __$CardContentDtoCopyWithImpl<_CardContentDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CardContentDtoToJson(this);
  }
}

abstract class _CardContentDto extends FileDto {
  const _CardContentDto._() : super._();
  const factory _CardContentDto(
      {@required String id,
      @required @ContentTypeConverter() ContentType type}) = _$_CardContentDto;

  factory _CardContentDto.fromJson(Map<String, dynamic> json) =
      _$_CardContentDto.fromJson;

  @override
  String get id;
  @override
  @ContentTypeConverter()
  ContentType get type;
  @override
  _$CardContentDtoCopyWith<_CardContentDto> get copyWith;
}
