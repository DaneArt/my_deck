// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'card_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CardContentTearOff {
  const _$CardContentTearOff();

  NoContent noContent() {
    return NoContent();
  }

  TextContent textContent({@required String text}) {
    return TextContent(
      text: text,
    );
  }

  ImageContent imageContent({@required File image}) {
    return ImageContent(
      image: image,
    );
  }
}

// ignore: unused_element
const $CardContent = _$CardContentTearOff();

mixin _$CardContent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noContent(),
    @required Result textContent(String text),
    @required Result imageContent(File image),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noContent(),
    Result textContent(String text),
    Result imageContent(File image),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result noContent(NoContent value),
    @required Result textContent(TextContent value),
    @required Result imageContent(ImageContent value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noContent(NoContent value),
    Result textContent(TextContent value),
    Result imageContent(ImageContent value),
    @required Result orElse(),
  });
}

abstract class $CardContentCopyWith<$Res> {
  factory $CardContentCopyWith(
          CardContent value, $Res Function(CardContent) then) =
      _$CardContentCopyWithImpl<$Res>;
}

class _$CardContentCopyWithImpl<$Res> implements $CardContentCopyWith<$Res> {
  _$CardContentCopyWithImpl(this._value, this._then);

  final CardContent _value;
  // ignore: unused_field
  final $Res Function(CardContent) _then;
}

abstract class $NoContentCopyWith<$Res> {
  factory $NoContentCopyWith(NoContent value, $Res Function(NoContent) then) =
      _$NoContentCopyWithImpl<$Res>;
}

class _$NoContentCopyWithImpl<$Res> extends _$CardContentCopyWithImpl<$Res>
    implements $NoContentCopyWith<$Res> {
  _$NoContentCopyWithImpl(NoContent _value, $Res Function(NoContent) _then)
      : super(_value, (v) => _then(v as NoContent));

  @override
  NoContent get _value => super._value as NoContent;
}

class _$NoContent implements NoContent {
  _$NoContent();

  bool _didmodel = false;
  String _model;

  @override
  String get model {
    if (_didmodel == false) {
      _didmodel = true;
      _model = this.map(
          noContent: (content) => '',
          textContent: (content) => content.text,
          imageContent: (content) => content.image.path);
    }
    return _model;
  }

  @override
  String toString() {
    return 'CardContent.noContent(model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoContent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noContent(),
    @required Result textContent(String text),
    @required Result imageContent(File image),
  }) {
    assert(noContent != null);
    assert(textContent != null);
    assert(imageContent != null);
    return noContent();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noContent(),
    Result textContent(String text),
    Result imageContent(File image),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noContent != null) {
      return noContent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result noContent(NoContent value),
    @required Result textContent(TextContent value),
    @required Result imageContent(ImageContent value),
  }) {
    assert(noContent != null);
    assert(textContent != null);
    assert(imageContent != null);
    return noContent(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noContent(NoContent value),
    Result textContent(TextContent value),
    Result imageContent(ImageContent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (noContent != null) {
      return noContent(this);
    }
    return orElse();
  }
}

abstract class NoContent implements CardContent {
  factory NoContent() = _$NoContent;
}

abstract class $TextContentCopyWith<$Res> {
  factory $TextContentCopyWith(
          TextContent value, $Res Function(TextContent) then) =
      _$TextContentCopyWithImpl<$Res>;
  $Res call({String text});
}

class _$TextContentCopyWithImpl<$Res> extends _$CardContentCopyWithImpl<$Res>
    implements $TextContentCopyWith<$Res> {
  _$TextContentCopyWithImpl(
      TextContent _value, $Res Function(TextContent) _then)
      : super(_value, (v) => _then(v as TextContent));

  @override
  TextContent get _value => super._value as TextContent;

  @override
  $Res call({
    Object text = freezed,
  }) {
    return _then(TextContent(
      text: text == freezed ? _value.text : text as String,
    ));
  }
}

class _$TextContent implements TextContent {
  _$TextContent({@required this.text}) : assert(text != null);

  @override
  final String text;

  bool _didmodel = false;
  String _model;

  @override
  String get model {
    if (_didmodel == false) {
      _didmodel = true;
      _model = this.map(
          noContent: (content) => '',
          textContent: (content) => content.text,
          imageContent: (content) => content.image.path);
    }
    return _model;
  }

  @override
  String toString() {
    return 'CardContent.textContent(text: $text, model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TextContent &&
            (identical(other.text, text) ||
                const DeepCollectionEquality().equals(other.text, text)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(text);

  @override
  $TextContentCopyWith<TextContent> get copyWith =>
      _$TextContentCopyWithImpl<TextContent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noContent(),
    @required Result textContent(String text),
    @required Result imageContent(File image),
  }) {
    assert(noContent != null);
    assert(textContent != null);
    assert(imageContent != null);
    return textContent(text);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noContent(),
    Result textContent(String text),
    Result imageContent(File image),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (textContent != null) {
      return textContent(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result noContent(NoContent value),
    @required Result textContent(TextContent value),
    @required Result imageContent(ImageContent value),
  }) {
    assert(noContent != null);
    assert(textContent != null);
    assert(imageContent != null);
    return textContent(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noContent(NoContent value),
    Result textContent(TextContent value),
    Result imageContent(ImageContent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (textContent != null) {
      return textContent(this);
    }
    return orElse();
  }
}

abstract class TextContent implements CardContent {
  factory TextContent({@required String text}) = _$TextContent;

  String get text;
  $TextContentCopyWith<TextContent> get copyWith;
}

abstract class $ImageContentCopyWith<$Res> {
  factory $ImageContentCopyWith(
          ImageContent value, $Res Function(ImageContent) then) =
      _$ImageContentCopyWithImpl<$Res>;
  $Res call({File image});
}

class _$ImageContentCopyWithImpl<$Res> extends _$CardContentCopyWithImpl<$Res>
    implements $ImageContentCopyWith<$Res> {
  _$ImageContentCopyWithImpl(
      ImageContent _value, $Res Function(ImageContent) _then)
      : super(_value, (v) => _then(v as ImageContent));

  @override
  ImageContent get _value => super._value as ImageContent;

  @override
  $Res call({
    Object image = freezed,
  }) {
    return _then(ImageContent(
      image: image == freezed ? _value.image : image as File,
    ));
  }
}

class _$ImageContent implements ImageContent {
  _$ImageContent({@required this.image}) : assert(image != null);

  @override
  final File image;

  bool _didmodel = false;
  String _model;

  @override
  String get model {
    if (_didmodel == false) {
      _didmodel = true;
      _model = this.map(
          noContent: (content) => '',
          textContent: (content) => content.text,
          imageContent: (content) => content.image.path);
    }
    return _model;
  }

  @override
  String toString() {
    return 'CardContent.imageContent(image: $image, model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ImageContent &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(image);

  @override
  $ImageContentCopyWith<ImageContent> get copyWith =>
      _$ImageContentCopyWithImpl<ImageContent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result noContent(),
    @required Result textContent(String text),
    @required Result imageContent(File image),
  }) {
    assert(noContent != null);
    assert(textContent != null);
    assert(imageContent != null);
    return imageContent(image);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result noContent(),
    Result textContent(String text),
    Result imageContent(File image),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imageContent != null) {
      return imageContent(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result noContent(NoContent value),
    @required Result textContent(TextContent value),
    @required Result imageContent(ImageContent value),
  }) {
    assert(noContent != null);
    assert(textContent != null);
    assert(imageContent != null);
    return imageContent(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result noContent(NoContent value),
    Result textContent(TextContent value),
    Result imageContent(ImageContent value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (imageContent != null) {
      return imageContent(this);
    }
    return orElse();
  }
}

abstract class ImageContent implements CardContent {
  factory ImageContent({@required File image}) = _$ImageContent;

  File get image;
  $ImageContentCopyWith<ImageContent> get copyWith;
}
