// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'library_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LibraryEventTearOff {
  const _$LibraryEventTearOff();

  LoadUserLibrary loadUserLibrary() {
    return LoadUserLibrary();
  }
}

// ignore: unused_element
const $LibraryEvent = _$LibraryEventTearOff();

mixin _$LibraryEvent {}

abstract class $LibraryEventCopyWith<$Res> {
  factory $LibraryEventCopyWith(
          LibraryEvent value, $Res Function(LibraryEvent) then) =
      _$LibraryEventCopyWithImpl<$Res>;
}

class _$LibraryEventCopyWithImpl<$Res> implements $LibraryEventCopyWith<$Res> {
  _$LibraryEventCopyWithImpl(this._value, this._then);

  final LibraryEvent _value;
  // ignore: unused_field
  final $Res Function(LibraryEvent) _then;
}

abstract class $LoadUserLibraryCopyWith<$Res> {
  factory $LoadUserLibraryCopyWith(
          LoadUserLibrary value, $Res Function(LoadUserLibrary) then) =
      _$LoadUserLibraryCopyWithImpl<$Res>;
}

class _$LoadUserLibraryCopyWithImpl<$Res>
    extends _$LibraryEventCopyWithImpl<$Res>
    implements $LoadUserLibraryCopyWith<$Res> {
  _$LoadUserLibraryCopyWithImpl(
      LoadUserLibrary _value, $Res Function(LoadUserLibrary) _then)
      : super(_value, (v) => _then(v as LoadUserLibrary));

  @override
  LoadUserLibrary get _value => super._value as LoadUserLibrary;
}

class _$LoadUserLibrary implements LoadUserLibrary {
  _$LoadUserLibrary();

  @override
  String toString() {
    return 'LibraryEvent.loadUserLibrary()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadUserLibrary);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class LoadUserLibrary implements LibraryEvent {
  factory LoadUserLibrary() = _$LoadUserLibrary;
}

class _$LibraryStateTearOff {
  const _$LibraryStateTearOff();

  _LibraryState call(
      {@required List<Deck> decks,
      @required bool isLoading,
      @required Option<Either<String, Unit>> loadingFailureOrSuccess}) {
    return _LibraryState(
      decks: decks,
      isLoading: isLoading,
      loadingFailureOrSuccess: loadingFailureOrSuccess,
    );
  }
}

// ignore: unused_element
const $LibraryState = _$LibraryStateTearOff();

mixin _$LibraryState {
  List<Deck> get decks;
  bool get isLoading;
  Option<Either<String, Unit>> get loadingFailureOrSuccess;

  $LibraryStateCopyWith<LibraryState> get copyWith;
}

abstract class $LibraryStateCopyWith<$Res> {
  factory $LibraryStateCopyWith(
          LibraryState value, $Res Function(LibraryState) then) =
      _$LibraryStateCopyWithImpl<$Res>;
  $Res call(
      {List<Deck> decks,
      bool isLoading,
      Option<Either<String, Unit>> loadingFailureOrSuccess});
}

class _$LibraryStateCopyWithImpl<$Res> implements $LibraryStateCopyWith<$Res> {
  _$LibraryStateCopyWithImpl(this._value, this._then);

  final LibraryState _value;
  // ignore: unused_field
  final $Res Function(LibraryState) _then;

  @override
  $Res call({
    Object decks = freezed,
    Object isLoading = freezed,
    Object loadingFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      decks: decks == freezed ? _value.decks : decks as List<Deck>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      loadingFailureOrSuccess: loadingFailureOrSuccess == freezed
          ? _value.loadingFailureOrSuccess
          : loadingFailureOrSuccess as Option<Either<String, Unit>>,
    ));
  }
}

abstract class _$LibraryStateCopyWith<$Res>
    implements $LibraryStateCopyWith<$Res> {
  factory _$LibraryStateCopyWith(
          _LibraryState value, $Res Function(_LibraryState) then) =
      __$LibraryStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Deck> decks,
      bool isLoading,
      Option<Either<String, Unit>> loadingFailureOrSuccess});
}

class __$LibraryStateCopyWithImpl<$Res> extends _$LibraryStateCopyWithImpl<$Res>
    implements _$LibraryStateCopyWith<$Res> {
  __$LibraryStateCopyWithImpl(
      _LibraryState _value, $Res Function(_LibraryState) _then)
      : super(_value, (v) => _then(v as _LibraryState));

  @override
  _LibraryState get _value => super._value as _LibraryState;

  @override
  $Res call({
    Object decks = freezed,
    Object isLoading = freezed,
    Object loadingFailureOrSuccess = freezed,
  }) {
    return _then(_LibraryState(
      decks: decks == freezed ? _value.decks : decks as List<Deck>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      loadingFailureOrSuccess: loadingFailureOrSuccess == freezed
          ? _value.loadingFailureOrSuccess
          : loadingFailureOrSuccess as Option<Either<String, Unit>>,
    ));
  }
}

class _$_LibraryState implements _LibraryState {
  const _$_LibraryState(
      {@required this.decks,
      @required this.isLoading,
      @required this.loadingFailureOrSuccess})
      : assert(decks != null),
        assert(isLoading != null),
        assert(loadingFailureOrSuccess != null);

  @override
  final List<Deck> decks;
  @override
  final bool isLoading;
  @override
  final Option<Either<String, Unit>> loadingFailureOrSuccess;

  @override
  String toString() {
    return 'LibraryState(decks: $decks, isLoading: $isLoading, loadingFailureOrSuccess: $loadingFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LibraryState &&
            (identical(other.decks, decks) ||
                const DeepCollectionEquality().equals(other.decks, decks)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(
                    other.loadingFailureOrSuccess, loadingFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.loadingFailureOrSuccess, loadingFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(decks) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(loadingFailureOrSuccess);

  @override
  _$LibraryStateCopyWith<_LibraryState> get copyWith =>
      __$LibraryStateCopyWithImpl<_LibraryState>(this, _$identity);
}

abstract class _LibraryState implements LibraryState {
  const factory _LibraryState(
          {@required List<Deck> decks,
          @required bool isLoading,
          @required Option<Either<String, Unit>> loadingFailureOrSuccess}) =
      _$_LibraryState;

  @override
  List<Deck> get decks;
  @override
  bool get isLoading;
  @override
  Option<Either<String, Unit>> get loadingFailureOrSuccess;
  @override
  _$LibraryStateCopyWith<_LibraryState> get copyWith;
}
