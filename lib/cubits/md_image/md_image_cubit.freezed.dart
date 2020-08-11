// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'md_image_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MDContentStateTearOff {
  const _$MDContentStateTearOff();

  MDImageStateInitial initial() {
    return MDImageStateInitial();
  }

  MDImageStateLoading loading() {
    return MDImageStateLoading();
  }

  MDImageStateError error() {
    return MDImageStateError();
  }

  MDImageStateLoaded loaded(File file) {
    return MDImageStateLoaded(
      file,
    );
  }
}

// ignore: unused_element
const $MDContentState = _$MDContentStateTearOff();

mixin _$MDContentState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result error(),
    @required Result loaded(File file),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result error(),
    Result loaded(File file),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(MDImageStateInitial value),
    @required Result loading(MDImageStateLoading value),
    @required Result error(MDImageStateError value),
    @required Result loaded(MDImageStateLoaded value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(MDImageStateInitial value),
    Result loading(MDImageStateLoading value),
    Result error(MDImageStateError value),
    Result loaded(MDImageStateLoaded value),
    @required Result orElse(),
  });
}

abstract class $MDContentStateCopyWith<$Res> {
  factory $MDContentStateCopyWith(
          MDContentState value, $Res Function(MDContentState) then) =
      _$MDContentStateCopyWithImpl<$Res>;
}

class _$MDContentStateCopyWithImpl<$Res>
    implements $MDContentStateCopyWith<$Res> {
  _$MDContentStateCopyWithImpl(this._value, this._then);

  final MDContentState _value;
  // ignore: unused_field
  final $Res Function(MDContentState) _then;
}

abstract class $MDImageStateInitialCopyWith<$Res> {
  factory $MDImageStateInitialCopyWith(
          MDImageStateInitial value, $Res Function(MDImageStateInitial) then) =
      _$MDImageStateInitialCopyWithImpl<$Res>;
}

class _$MDImageStateInitialCopyWithImpl<$Res>
    extends _$MDContentStateCopyWithImpl<$Res>
    implements $MDImageStateInitialCopyWith<$Res> {
  _$MDImageStateInitialCopyWithImpl(
      MDImageStateInitial _value, $Res Function(MDImageStateInitial) _then)
      : super(_value, (v) => _then(v as MDImageStateInitial));

  @override
  MDImageStateInitial get _value => super._value as MDImageStateInitial;
}

class _$MDImageStateInitial implements MDImageStateInitial {
  _$MDImageStateInitial();

  @override
  String toString() {
    return 'MDContentState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MDImageStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result error(),
    @required Result loaded(File file),
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
    Result loaded(File file),
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
    @required Result initial(MDImageStateInitial value),
    @required Result loading(MDImageStateLoading value),
    @required Result error(MDImageStateError value),
    @required Result loaded(MDImageStateLoaded value),
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
    Result initial(MDImageStateInitial value),
    Result loading(MDImageStateLoading value),
    Result error(MDImageStateError value),
    Result loaded(MDImageStateLoaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MDImageStateInitial implements MDContentState {
  factory MDImageStateInitial() = _$MDImageStateInitial;
}

abstract class $MDImageStateLoadingCopyWith<$Res> {
  factory $MDImageStateLoadingCopyWith(
          MDImageStateLoading value, $Res Function(MDImageStateLoading) then) =
      _$MDImageStateLoadingCopyWithImpl<$Res>;
}

class _$MDImageStateLoadingCopyWithImpl<$Res>
    extends _$MDContentStateCopyWithImpl<$Res>
    implements $MDImageStateLoadingCopyWith<$Res> {
  _$MDImageStateLoadingCopyWithImpl(
      MDImageStateLoading _value, $Res Function(MDImageStateLoading) _then)
      : super(_value, (v) => _then(v as MDImageStateLoading));

  @override
  MDImageStateLoading get _value => super._value as MDImageStateLoading;
}

class _$MDImageStateLoading implements MDImageStateLoading {
  _$MDImageStateLoading();

  @override
  String toString() {
    return 'MDContentState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MDImageStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result error(),
    @required Result loaded(File file),
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
    Result loaded(File file),
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
    @required Result initial(MDImageStateInitial value),
    @required Result loading(MDImageStateLoading value),
    @required Result error(MDImageStateError value),
    @required Result loaded(MDImageStateLoaded value),
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
    Result initial(MDImageStateInitial value),
    Result loading(MDImageStateLoading value),
    Result error(MDImageStateError value),
    Result loaded(MDImageStateLoaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MDImageStateLoading implements MDContentState {
  factory MDImageStateLoading() = _$MDImageStateLoading;
}

abstract class $MDImageStateErrorCopyWith<$Res> {
  factory $MDImageStateErrorCopyWith(
          MDImageStateError value, $Res Function(MDImageStateError) then) =
      _$MDImageStateErrorCopyWithImpl<$Res>;
}

class _$MDImageStateErrorCopyWithImpl<$Res>
    extends _$MDContentStateCopyWithImpl<$Res>
    implements $MDImageStateErrorCopyWith<$Res> {
  _$MDImageStateErrorCopyWithImpl(
      MDImageStateError _value, $Res Function(MDImageStateError) _then)
      : super(_value, (v) => _then(v as MDImageStateError));

  @override
  MDImageStateError get _value => super._value as MDImageStateError;
}

class _$MDImageStateError implements MDImageStateError {
  _$MDImageStateError();

  @override
  String toString() {
    return 'MDContentState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MDImageStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result error(),
    @required Result loaded(File file),
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
    Result loaded(File file),
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
    @required Result initial(MDImageStateInitial value),
    @required Result loading(MDImageStateLoading value),
    @required Result error(MDImageStateError value),
    @required Result loaded(MDImageStateLoaded value),
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
    Result initial(MDImageStateInitial value),
    Result loading(MDImageStateLoading value),
    Result error(MDImageStateError value),
    Result loaded(MDImageStateLoaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MDImageStateError implements MDContentState {
  factory MDImageStateError() = _$MDImageStateError;
}

abstract class $MDImageStateLoadedCopyWith<$Res> {
  factory $MDImageStateLoadedCopyWith(
          MDImageStateLoaded value, $Res Function(MDImageStateLoaded) then) =
      _$MDImageStateLoadedCopyWithImpl<$Res>;
  $Res call({File file});
}

class _$MDImageStateLoadedCopyWithImpl<$Res>
    extends _$MDContentStateCopyWithImpl<$Res>
    implements $MDImageStateLoadedCopyWith<$Res> {
  _$MDImageStateLoadedCopyWithImpl(
      MDImageStateLoaded _value, $Res Function(MDImageStateLoaded) _then)
      : super(_value, (v) => _then(v as MDImageStateLoaded));

  @override
  MDImageStateLoaded get _value => super._value as MDImageStateLoaded;

  @override
  $Res call({
    Object file = freezed,
  }) {
    return _then(MDImageStateLoaded(
      file == freezed ? _value.file : file as File,
    ));
  }
}

class _$MDImageStateLoaded implements MDImageStateLoaded {
  _$MDImageStateLoaded(this.file) : assert(file != null);

  @override
  final File file;

  @override
  String toString() {
    return 'MDContentState.loaded(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MDImageStateLoaded &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(file);

  @override
  $MDImageStateLoadedCopyWith<MDImageStateLoaded> get copyWith =>
      _$MDImageStateLoadedCopyWithImpl<MDImageStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result error(),
    @required Result loaded(File file),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(error != null);
    assert(loaded != null);
    return loaded(file);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result error(),
    Result loaded(File file),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(MDImageStateInitial value),
    @required Result loading(MDImageStateLoading value),
    @required Result error(MDImageStateError value),
    @required Result loaded(MDImageStateLoaded value),
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
    Result initial(MDImageStateInitial value),
    Result loading(MDImageStateLoading value),
    Result error(MDImageStateError value),
    Result loaded(MDImageStateLoaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class MDImageStateLoaded implements MDContentState {
  factory MDImageStateLoaded(File file) = _$MDImageStateLoaded;

  File get file;
  $MDImageStateLoadedCopyWith<MDImageStateLoaded> get copyWith;
}
