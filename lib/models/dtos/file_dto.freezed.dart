// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'file_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
MyDeckFileDto _$MyDeckFileDtoFromJson(Map<String, dynamic> json) {
  return _MyDeckFileDto.fromJson(json);
}

class _$MyDeckFileDtoTearOff {
  const _$MyDeckFileDtoTearOff();

  _MyDeckFileDto call(
      {@required String id,
      @required @ContentTypeConverter() ContentType type,
      @required @JsonKey(ignore: true) File file}) {
    return _MyDeckFileDto(
      id: id,
      type: type,
      file: file,
    );
  }
}

// ignore: unused_element
const $MyDeckFileDto = _$MyDeckFileDtoTearOff();

mixin _$MyDeckFileDto {
  String get id;
  @ContentTypeConverter()
  ContentType get type;
  @JsonKey(ignore: true)
  File get file;

  Map<String, dynamic> toJson();
  $MyDeckFileDtoCopyWith<MyDeckFileDto> get copyWith;
}

abstract class $MyDeckFileDtoCopyWith<$Res> {
  factory $MyDeckFileDtoCopyWith(
          MyDeckFileDto value, $Res Function(MyDeckFileDto) then) =
      _$MyDeckFileDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      @ContentTypeConverter() ContentType type,
      @JsonKey(ignore: true) File file});
}

class _$MyDeckFileDtoCopyWithImpl<$Res>
    implements $MyDeckFileDtoCopyWith<$Res> {
  _$MyDeckFileDtoCopyWithImpl(this._value, this._then);

  final MyDeckFileDto _value;
  // ignore: unused_field
  final $Res Function(MyDeckFileDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object type = freezed,
    Object file = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      type: type == freezed ? _value.type : type as ContentType,
      file: file == freezed ? _value.file : file as File,
    ));
  }
}

abstract class _$MyDeckFileDtoCopyWith<$Res>
    implements $MyDeckFileDtoCopyWith<$Res> {
  factory _$MyDeckFileDtoCopyWith(
          _MyDeckFileDto value, $Res Function(_MyDeckFileDto) then) =
      __$MyDeckFileDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      @ContentTypeConverter() ContentType type,
      @JsonKey(ignore: true) File file});
}

class __$MyDeckFileDtoCopyWithImpl<$Res>
    extends _$MyDeckFileDtoCopyWithImpl<$Res>
    implements _$MyDeckFileDtoCopyWith<$Res> {
  __$MyDeckFileDtoCopyWithImpl(
      _MyDeckFileDto _value, $Res Function(_MyDeckFileDto) _then)
      : super(_value, (v) => _then(v as _MyDeckFileDto));

  @override
  _MyDeckFileDto get _value => super._value as _MyDeckFileDto;

  @override
  $Res call({
    Object id = freezed,
    Object type = freezed,
    Object file = freezed,
  }) {
    return _then(_MyDeckFileDto(
      id: id == freezed ? _value.id : id as String,
      type: type == freezed ? _value.type : type as ContentType,
      file: file == freezed ? _value.file : file as File,
    ));
  }
}

@JsonSerializable()
class _$_MyDeckFileDto extends _MyDeckFileDto {
  const _$_MyDeckFileDto(
      {@required this.id,
      @required @ContentTypeConverter() this.type,
      @required @JsonKey(ignore: true) this.file})
      : assert(id != null),
        assert(type != null),
        assert(file != null),
        super._();

  factory _$_MyDeckFileDto.fromJson(Map<String, dynamic> json) =>
      _$_$_MyDeckFileDtoFromJson(json);

  @override
  final String id;
  @override
  @ContentTypeConverter()
  final ContentType type;
  @override
  @JsonKey(ignore: true)
  final File file;

  @override
  String toString() {
    return 'MyDeckFileDto(id: $id, type: $type, file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MyDeckFileDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(file);

  @override
  _$MyDeckFileDtoCopyWith<_MyDeckFileDto> get copyWith =>
      __$MyDeckFileDtoCopyWithImpl<_MyDeckFileDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MyDeckFileDtoToJson(this);
  }
}

abstract class _MyDeckFileDto extends MyDeckFileDto {
  const _MyDeckFileDto._() : super._();
  const factory _MyDeckFileDto(
      {@required String id,
      @required @ContentTypeConverter() ContentType type,
      @required @JsonKey(ignore: true) File file}) = _$_MyDeckFileDto;

  factory _MyDeckFileDto.fromJson(Map<String, dynamic> json) =
      _$_MyDeckFileDto.fromJson;

  @override
  String get id;
  @override
  @ContentTypeConverter()
  ContentType get type;
  @override
  @JsonKey(ignore: true)
  File get file;
  @override
  _$MyDeckFileDtoCopyWith<_MyDeckFileDto> get copyWith;
}
