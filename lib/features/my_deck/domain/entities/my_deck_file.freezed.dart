// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'my_deck_file.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MyDeckFileTearOff {
  const _$MyDeckFileTearOff();

  TextContent text({@required File text, @required UniqueId uniqueId}) {
    return TextContent(
      text: text,
      uniqueId: uniqueId,
    );
  }

  ImageContent image({@required File image, @required UniqueId uniqueId}) {
    return ImageContent(
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
    @required Result text(TextContent value),
    @required Result image(ImageContent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result text(TextContent value),
    Result image(ImageContent value),
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

abstract class $TextContentCopyWith<$Res> implements $MyDeckFileCopyWith<$Res> {
  factory $TextContentCopyWith(
          TextContent value, $Res Function(TextContent) then) =
      _$TextContentCopyWithImpl<$Res>;
  @override
  $Res call({File text, UniqueId uniqueId});
}

class _$TextContentCopyWithImpl<$Res> extends _$MyDeckFileCopyWithImpl<$Res>
    implements $TextContentCopyWith<$Res> {
  _$TextContentCopyWithImpl(
      TextContent _value, $Res Function(TextContent) _then)
      : super(_value, (v) => _then(v as TextContent));

  @override
  TextContent get _value => super._value as TextContent;

  @override
  $Res call({
    Object text = freezed,
    Object uniqueId = freezed,
  }) {
    return _then(TextContent(
      text: text == freezed ? _value.text : text as File,
      uniqueId: uniqueId == freezed ? _value.uniqueId : uniqueId as UniqueId,
    ));
  }
}

class _$TextContent implements TextContent {
  _$TextContent({@required this.text, @required this.uniqueId})
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
        (other is TextContent &&
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
  $TextContentCopyWith<TextContent> get copyWith =>
      _$TextContentCopyWithImpl<TextContent>(this, _$identity);

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
    @required Result text(TextContent value),
    @required Result image(ImageContent value),
  }) {
    assert(text != null);
    assert(image != null);
    return text(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result text(TextContent value),
    Result image(ImageContent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (text != null) {
      return text(this);
    }
    return orElse();
  }
}

abstract class TextContent implements MyDeckFile {
  factory TextContent({@required File text, @required UniqueId uniqueId}) =
      _$TextContent;

  File get text;
  @override
  UniqueId get uniqueId;
  @override
  $TextContentCopyWith<TextContent> get copyWith;
}

abstract class $ImageContentCopyWith<$Res>
    implements $MyDeckFileCopyWith<$Res> {
  factory $ImageContentCopyWith(
          ImageContent value, $Res Function(ImageContent) then) =
      _$ImageContentCopyWithImpl<$Res>;
  @override
  $Res call({File image, UniqueId uniqueId});
}

class _$ImageContentCopyWithImpl<$Res> extends _$MyDeckFileCopyWithImpl<$Res>
    implements $ImageContentCopyWith<$Res> {
  _$ImageContentCopyWithImpl(
      ImageContent _value, $Res Function(ImageContent) _then)
      : super(_value, (v) => _then(v as ImageContent));

  @override
  ImageContent get _value => super._value as ImageContent;

  @override
  $Res call({
    Object image = freezed,
    Object uniqueId = freezed,
  }) {
    return _then(ImageContent(
      image: image == freezed ? _value.image : image as File,
      uniqueId: uniqueId == freezed ? _value.uniqueId : uniqueId as UniqueId,
    ));
  }
}

class _$ImageContent implements ImageContent {
  _$ImageContent({@required this.image, @required this.uniqueId})
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
        (other is ImageContent &&
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
  $ImageContentCopyWith<ImageContent> get copyWith =>
      _$ImageContentCopyWithImpl<ImageContent>(this, _$identity);

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
    @required Result text(TextContent value),
    @required Result image(ImageContent value),
  }) {
    assert(text != null);
    assert(image != null);
    return image(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result text(TextContent value),
    Result image(ImageContent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (image != null) {
      return image(this);
    }
    return orElse();
  }
}

abstract class ImageContent implements MyDeckFile {
  factory ImageContent({@required File image, @required UniqueId uniqueId}) =
      _$ImageContent;

  File get image;
  @override
  UniqueId get uniqueId;
  @override
  $ImageContentCopyWith<ImageContent> get copyWith;
}
