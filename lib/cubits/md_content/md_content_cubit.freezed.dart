// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'md_content_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MDContentStateTearOff {
  const _$MDContentStateTearOff();

  MDContentStateInitial<T> initial<T>() {
    return MDContentStateInitial<T>();
  }

  MDContentStateLoading<T> loading<T>() {
    return MDContentStateLoading<T>();
  }

  MDContentStateError<T> error<T>() {
    return MDContentStateError<T>();
  }

  MDContentStateLoaded<T> loaded<T>(T content) {
    return MDContentStateLoaded<T>(
      content,
    );
  }
}

// ignore: unused_element
const $MDContentState = _$MDContentStateTearOff();

mixin _$MDContentState<T> {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result error(),
    @required Result loaded(T content),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result error(),
    Result loaded(T content),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(MDContentStateInitial<T> value),
    @required Result loading(MDContentStateLoading<T> value),
    @required Result error(MDContentStateError<T> value),
    @required Result loaded(MDContentStateLoaded<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(MDContentStateInitial<T> value),
    Result loading(MDContentStateLoading<T> value),
    Result error(MDContentStateError<T> value),
    Result loaded(MDContentStateLoaded<T> value),
    @required Result orElse(),
  });
}

abstract class $MDContentStateCopyWith<T, $Res> {
  factory $MDContentStateCopyWith(
          MDContentState<T> value, $Res Function(MDContentState<T>) then) =
      _$MDContentStateCopyWithImpl<T, $Res>;
}

class _$MDContentStateCopyWithImpl<T, $Res>
    implements $MDContentStateCopyWith<T, $Res> {
  _$MDContentStateCopyWithImpl(this._value, this._then);

  final MDContentState<T> _value;
  // ignore: unused_field
  final $Res Function(MDContentState<T>) _then;
}

abstract class $MDContentStateInitialCopyWith<T, $Res> {
  factory $MDContentStateInitialCopyWith(MDContentStateInitial<T> value,
          $Res Function(MDContentStateInitial<T>) then) =
      _$MDContentStateInitialCopyWithImpl<T, $Res>;
}

class _$MDContentStateInitialCopyWithImpl<T, $Res>
    extends _$MDContentStateCopyWithImpl<T, $Res>
    implements $MDContentStateInitialCopyWith<T, $Res> {
  _$MDContentStateInitialCopyWithImpl(MDContentStateInitial<T> _value,
      $Res Function(MDContentStateInitial<T>) _then)
      : super(_value, (v) => _then(v as MDContentStateInitial<T>));

  @override
  MDContentStateInitial<T> get _value =>
      super._value as MDContentStateInitial<T>;
}

class _$MDContentStateInitial<T> implements MDContentStateInitial<T> {
  _$MDContentStateInitial();

  @override
  String toString() {
    return 'MDContentState<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MDContentStateInitial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result error(),
    @required Result loaded(T content),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(loaded != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result error(),
    Result loaded(T content),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(MDContentStateInitial<T> value),
    @required Result loading(MDContentStateLoading<T> value),
    @required Result error(MDContentStateError<T> value),
    @required Result loaded(MDContentStateLoaded<T> value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(loaded != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(MDContentStateInitial<T> value),
    Result loading(MDContentStateLoading<T> value),
    Result error(MDContentStateError<T> value),
    Result loaded(MDContentStateLoaded<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MDContentStateInitial<T> implements MDContentState<T> {
  factory MDContentStateInitial() = _$MDContentStateInitial<T>;
}

abstract class $MDContentStateLoadingCopyWith<T, $Res> {
  factory $MDContentStateLoadingCopyWith(MDContentStateLoading<T> value,
          $Res Function(MDContentStateLoading<T>) then) =
      _$MDContentStateLoadingCopyWithImpl<T, $Res>;
}

class _$MDContentStateLoadingCopyWithImpl<T, $Res>
    extends _$MDContentStateCopyWithImpl<T, $Res>
    implements $MDContentStateLoadingCopyWith<T, $Res> {
  _$MDContentStateLoadingCopyWithImpl(MDContentStateLoading<T> _value,
      $Res Function(MDContentStateLoading<T>) _then)
      : super(_value, (v) => _then(v as MDContentStateLoading<T>));

  @override
  MDContentStateLoading<T> get _value =>
      super._value as MDContentStateLoading<T>;
}

class _$MDContentStateLoading<T> implements MDContentStateLoading<T> {
  _$MDContentStateLoading();

  @override
  String toString() {
    return 'MDContentState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MDContentStateLoading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result error(),
    @required Result loaded(T content),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(loaded != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result error(),
    Result loaded(T content),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(MDContentStateInitial<T> value),
    @required Result loading(MDContentStateLoading<T> value),
    @required Result error(MDContentStateError<T> value),
    @required Result loaded(MDContentStateLoaded<T> value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(loaded != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(MDContentStateInitial<T> value),
    Result loading(MDContentStateLoading<T> value),
    Result error(MDContentStateError<T> value),
    Result loaded(MDContentStateLoaded<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MDContentStateLoading<T> implements MDContentState<T> {
  factory MDContentStateLoading() = _$MDContentStateLoading<T>;
}

abstract class $MDContentStateErrorCopyWith<T, $Res> {
  factory $MDContentStateErrorCopyWith(MDContentStateError<T> value,
          $Res Function(MDContentStateError<T>) then) =
      _$MDContentStateErrorCopyWithImpl<T, $Res>;
}

class _$MDContentStateErrorCopyWithImpl<T, $Res>
    extends _$MDContentStateCopyWithImpl<T, $Res>
    implements $MDContentStateErrorCopyWith<T, $Res> {
  _$MDContentStateErrorCopyWithImpl(MDContentStateError<T> _value,
      $Res Function(MDContentStateError<T>) _then)
      : super(_value, (v) => _then(v as MDContentStateError<T>));

  @override
  MDContentStateError<T> get _value => super._value as MDContentStateError<T>;
}

class _$MDContentStateError<T> implements MDContentStateError<T> {
  _$MDContentStateError();

  @override
  String toString() {
    return 'MDContentState<$T>.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MDContentStateError<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result error(),
    @required Result loaded(T content),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(loaded != null);
    return error();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result error(),
    Result loaded(T content),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(MDContentStateInitial<T> value),
    @required Result loading(MDContentStateLoading<T> value),
    @required Result error(MDContentStateError<T> value),
    @required Result loaded(MDContentStateLoaded<T> value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(loaded != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(MDContentStateInitial<T> value),
    Result loading(MDContentStateLoading<T> value),
    Result error(MDContentStateError<T> value),
    Result loaded(MDContentStateLoaded<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MDContentStateError<T> implements MDContentState<T> {
  factory MDContentStateError() = _$MDContentStateError<T>;
}

abstract class $MDContentStateLoadedCopyWith<T, $Res> {
  factory $MDContentStateLoadedCopyWith(MDContentStateLoaded<T> value,
          $Res Function(MDContentStateLoaded<T>) then) =
      _$MDContentStateLoadedCopyWithImpl<T, $Res>;
  $Res call({T content});
}

class _$MDContentStateLoadedCopyWithImpl<T, $Res>
    extends _$MDContentStateCopyWithImpl<T, $Res>
    implements $MDContentStateLoadedCopyWith<T, $Res> {
  _$MDContentStateLoadedCopyWithImpl(MDContentStateLoaded<T> _value,
      $Res Function(MDContentStateLoaded<T>) _then)
      : super(_value, (v) => _then(v as MDContentStateLoaded<T>));

  @override
  MDContentStateLoaded<T> get _value => super._value as MDContentStateLoaded<T>;

  @override
  $Res call({
    Object content = freezed,
  }) {
    return _then(MDContentStateLoaded<T>(
      content == freezed ? _value.content : content as T,
    ));
  }
}

class _$MDContentStateLoaded<T> implements MDContentStateLoaded<T> {
  _$MDContentStateLoaded(this.content) : assert(content != null);

  @override
  final T content;

  @override
  String toString() {
    return 'MDContentState<$T>.loaded(content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MDContentStateLoaded<T> &&
            (identical(other.content, content) ||
                const DeepCollectionEquality().equals(other.content, content)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(content);

  @override
  $MDContentStateLoadedCopyWith<T, MDContentStateLoaded<T>> get copyWith =>
      _$MDContentStateLoadedCopyWithImpl<T, MDContentStateLoaded<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result error(),
    @required Result loaded(T content),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(loaded != null);
    return loaded(content);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result error(),
    Result loaded(T content),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(MDContentStateInitial<T> value),
    @required Result loading(MDContentStateLoading<T> value),
    @required Result error(MDContentStateError<T> value),
    @required Result loaded(MDContentStateLoaded<T> value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(loaded != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(MDContentStateInitial<T> value),
    Result loading(MDContentStateLoading<T> value),
    Result error(MDContentStateError<T> value),
    Result loaded(MDContentStateLoaded<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class MDContentStateLoaded<T> implements MDContentState<T> {
  factory MDContentStateLoaded(T content) = _$MDContentStateLoaded<T>;

  T get content;
  $MDContentStateLoadedCopyWith<T, MDContentStateLoaded<T>> get copyWith;
}
