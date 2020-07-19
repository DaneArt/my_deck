// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'my_deck_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MyDeckFileTearOff {
  const _$MyDeckFileTearOff();

  TextFile text({@required File text, @required UniqueId uniqueId}) {
    return TextFile(
      text: text,
      uniqueId: uniqueId,
    );
  }

  ImageFile image({@required File image, @required UniqueId uniqueId}) {
    return ImageFile(
      image: image,
      uniqueId: uniqueId,
    );
  }
}

// ignore: unused_element
const $MyDeckFile = _$MyDeckFileTearOff();

mixin _$MyDeckFile {
  UniqueId get uniqueId;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result text(File text, UniqueId uniqueId),
    @required Result image(File image, UniqueId uniqueId),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result text(File text, UniqueId uniqueId),
    Result image(File image, UniqueId uniqueId),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result text(TextFile value),
    @required Result image(ImageFile value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result text(TextFile value),
    Result image(ImageFile value),
    @required Result orElse(),
  });

  $MyDeckFileCopyWith<MyDeckFile> get copyWith;
}

abstract class $MyDeckFileCopyWith<$Res> {
  factory $MyDeckFileCopyWith(
          MyDeckFile value, $Res Function(MyDeckFile) then) =
      _$MyDeckFileCopyWithImpl<$Res>;
  $Res call({UniqueId uniqueId});
}

class _$MyDeckFileCopyWithImpl<$Res> implements $MyDeckFileCopyWith<$Res> {
  _$MyDeckFileCopyWithImpl(this._value, this._then);

  final MyDeckFile _value;
  // ignore: unused_field
  final $Res Function(MyDeckFile) _then;

  @override
  $Res call({
    Object uniqueId = freezed,
  }) {
    return _then(_value.copyWith(
      uniqueId: uniqueId == freezed ? _value.uniqueId : uniqueId as UniqueId,
    ));
  }
}

abstract class $TextFileCopyWith<$Res> implements $MyDeckFileCopyWith<$Res> {
  factory $TextFileCopyWith(TextFile value, $Res Function(TextFile) then) =
      _$TextFileCopyWithImpl<$Res>;
  @override
  $Res call({File text, UniqueId uniqueId});
}

class _$TextFileCopyWithImpl<$Res> extends _$MyDeckFileCopyWithImpl<$Res>
    implements $TextFileCopyWith<$Res> {
  _$TextFileCopyWithImpl(TextFile _value, $Res Function(TextFile) _then)
      : super(_value, (v) => _then(v as TextFile));

  @override
  TextFile get _value => super._value as TextFile;

  @override
  $Res call({
    Object text = freezed,
    Object uniqueId = freezed,
  }) {
    return _then(TextFile(
      text: text == freezed ? _value.text : text as File,
      uniqueId: uniqueId == freezed ? _value.uniqueId : uniqueId as UniqueId,
    ));
  }
}

class _$TextFile implements TextFile {
  _$TextFile({@required this.text, @required this.uniqueId})
      : assert(text != null),
        assert(uniqueId != null);

  @override
  final File text;
  @override
  final UniqueId uniqueId;

  @override
  String toString() {
    return 'MyDeckFile.text(text: $text, uniqueId: $uniqueId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TextFile &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)) &&
            (identical(other.uniqueId, uniqueId) ||
                const DeepCollectionEquality()
                    .equals(other.uniqueId, uniqueId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(text) ^
      const DeepCollectionEquality().hash(uniqueId);

  @override
  $TextFileCopyWith<TextFile> get copyWith =>
      _$TextFileCopyWithImpl<TextFile>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result text(File text, UniqueId uniqueId),
    @required Result image(File image, UniqueId uniqueId),
  }) {
    assert(text != null);
    assert(image != null);
    return text(this.text, uniqueId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result text(File text, UniqueId uniqueId),
    Result image(File image, UniqueId uniqueId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (text != null) {
      return text(this.text, uniqueId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result text(TextFile value),
    @required Result image(ImageFile value),
  }) {
    assert(text != null);
    assert(image != null);
    return text(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result text(TextFile value),
    Result image(ImageFile value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (text != null) {
      return text(this);
    }
    return orElse();
  }
}

abstract class TextFile implements MyDeckFile {
  factory TextFile({@required File text, @required UniqueId uniqueId}) =
      _$TextFile;

  File get text;
  @override
  UniqueId get uniqueId;
  @override
  $TextFileCopyWith<TextFile> get copyWith;
}

abstract class $ImageFileCopyWith<$Res> implements $MyDeckFileCopyWith<$Res> {
  factory $ImageFileCopyWith(ImageFile value, $Res Function(ImageFile) then) =
      _$ImageFileCopyWithImpl<$Res>;
  @override
  $Res call({File image, UniqueId uniqueId});
}

class _$ImageFileCopyWithImpl<$Res> extends _$MyDeckFileCopyWithImpl<$Res>
    implements $ImageFileCopyWith<$Res> {
  _$ImageFileCopyWithImpl(ImageFile _value, $Res Function(ImageFile) _then)
      : super(_value, (v) => _then(v as ImageFile));

  @override
  ImageFile get _value => super._value as ImageFile;

  @override
  $Res call({
    Object image = freezed,
    Object uniqueId = freezed,
  }) {
    return _then(ImageFile(
      image: image == freezed ? _value.image : image as File,
      uniqueId: uniqueId == freezed ? _value.uniqueId : uniqueId as UniqueId,
    ));
  }
}

class _$ImageFile implements ImageFile {
  _$ImageFile({@required this.image, @required this.uniqueId})
      : assert(image != null),
        assert(uniqueId != null);

  @override
  final File image;
  @override
  final UniqueId uniqueId;

  @override
  String toString() {
    return 'MyDeckFile.image(image: $image, uniqueId: $uniqueId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ImageFile &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.uniqueId, uniqueId) ||
                const DeepCollectionEquality()
                    .equals(other.uniqueId, uniqueId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(uniqueId);

  @override
  $ImageFileCopyWith<ImageFile> get copyWith =>
      _$ImageFileCopyWithImpl<ImageFile>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result text(File text, UniqueId uniqueId),
    @required Result image(File image, UniqueId uniqueId),
  }) {
    assert(text != null);
    assert(image != null);
    return image(this.image, uniqueId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result text(File text, UniqueId uniqueId),
    Result image(File image, UniqueId uniqueId),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (image != null) {
      return image(this.image, uniqueId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result text(TextFile value),
    @required Result image(ImageFile value),
  }) {
    assert(text != null);
    assert(image != null);
    return image(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result text(TextFile value),
    Result image(ImageFile value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (image != null) {
      return image(this);
    }
    return orElse();
  }
}

abstract class ImageFile implements MyDeckFile {
  factory ImageFile({@required File image, @required UniqueId uniqueId}) =
      _$ImageFile;

  File get image;
  @override
  UniqueId get uniqueId;
  @override
  $ImageFileCopyWith<ImageFile> get copyWith;
}
