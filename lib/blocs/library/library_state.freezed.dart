// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'library_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LibraryStateTearOff {
  const _$LibraryStateTearOff();

  _LibraryState call(
      {@required List<Deck> decksSourceList,
      @required bool isLoading,
      @required Option<Either<String, List<Deck>>> trainStartFailureOrSuccess,
      @required Option<Either<String, Unit>> loadingFailureOrSuccess}) {
    return _LibraryState(
      decksSourceList: decksSourceList,
      isLoading: isLoading,
      trainStartFailureOrSuccess: trainStartFailureOrSuccess,
      loadingFailureOrSuccess: loadingFailureOrSuccess,
    );
  }
}

// ignore: unused_element
const $LibraryState = _$LibraryStateTearOff();

mixin _$LibraryState {
  List<Deck> get decksSourceList;
  bool get isLoading;
  Option<Either<String, List<Deck>>> get trainStartFailureOrSuccess;
  Option<Either<String, Unit>> get loadingFailureOrSuccess;

  $LibraryStateCopyWith<LibraryState> get copyWith;
}

abstract class $LibraryStateCopyWith<$Res> {
  factory $LibraryStateCopyWith(
          LibraryState value, $Res Function(LibraryState) then) =
      _$LibraryStateCopyWithImpl<$Res>;
  $Res call(
      {List<Deck> decksSourceList,
      bool isLoading,
      Option<Either<String, List<Deck>>> trainStartFailureOrSuccess,
      Option<Either<String, Unit>> loadingFailureOrSuccess});
}

class _$LibraryStateCopyWithImpl<$Res> implements $LibraryStateCopyWith<$Res> {
  _$LibraryStateCopyWithImpl(this._value, this._then);

  final LibraryState _value;
  // ignore: unused_field
  final $Res Function(LibraryState) _then;

  @override
  $Res call({
    Object decksSourceList = freezed,
    Object isLoading = freezed,
    Object trainStartFailureOrSuccess = freezed,
    Object loadingFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      decksSourceList: decksSourceList == freezed
          ? _value.decksSourceList
          : decksSourceList as List<Deck>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      trainStartFailureOrSuccess: trainStartFailureOrSuccess == freezed
          ? _value.trainStartFailureOrSuccess
          : trainStartFailureOrSuccess as Option<Either<String, List<Deck>>>,
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
      {List<Deck> decksSourceList,
      bool isLoading,
      Option<Either<String, List<Deck>>> trainStartFailureOrSuccess,
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
    Object decksSourceList = freezed,
    Object isLoading = freezed,
    Object trainStartFailureOrSuccess = freezed,
    Object loadingFailureOrSuccess = freezed,
  }) {
    return _then(_LibraryState(
      decksSourceList: decksSourceList == freezed
          ? _value.decksSourceList
          : decksSourceList as List<Deck>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      trainStartFailureOrSuccess: trainStartFailureOrSuccess == freezed
          ? _value.trainStartFailureOrSuccess
          : trainStartFailureOrSuccess as Option<Either<String, List<Deck>>>,
      loadingFailureOrSuccess: loadingFailureOrSuccess == freezed
          ? _value.loadingFailureOrSuccess
          : loadingFailureOrSuccess as Option<Either<String, Unit>>,
    ));
  }
}

class _$_LibraryState implements _LibraryState {
  const _$_LibraryState(
      {@required this.decksSourceList,
      @required this.isLoading,
      @required this.trainStartFailureOrSuccess,
      @required this.loadingFailureOrSuccess})
      : assert(decksSourceList != null),
        assert(isLoading != null),
        assert(trainStartFailureOrSuccess != null),
        assert(loadingFailureOrSuccess != null);

  @override
  final List<Deck> decksSourceList;
  @override
  final bool isLoading;
  @override
  final Option<Either<String, List<Deck>>> trainStartFailureOrSuccess;
  @override
  final Option<Either<String, Unit>> loadingFailureOrSuccess;

  @override
  String toString() {
    return 'LibraryState(decksSourceList: $decksSourceList, isLoading: $isLoading, trainStartFailureOrSuccess: $trainStartFailureOrSuccess, loadingFailureOrSuccess: $loadingFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LibraryState &&
            (identical(other.decksSourceList, decksSourceList) ||
                const DeepCollectionEquality()
                    .equals(other.decksSourceList, decksSourceList)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.trainStartFailureOrSuccess,
                    trainStartFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.trainStartFailureOrSuccess,
                    trainStartFailureOrSuccess)) &&
            (identical(
                    other.loadingFailureOrSuccess, loadingFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.loadingFailureOrSuccess, loadingFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(decksSourceList) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(trainStartFailureOrSuccess) ^
      const DeepCollectionEquality().hash(loadingFailureOrSuccess);

  @override
  _$LibraryStateCopyWith<_LibraryState> get copyWith =>
      __$LibraryStateCopyWithImpl<_LibraryState>(this, _$identity);
}

abstract class _LibraryState implements LibraryState {
  const factory _LibraryState(
          {@required
              List<Deck> decksSourceList,
          @required
              bool isLoading,
          @required
              Option<Either<String, List<Deck>>> trainStartFailureOrSuccess,
          @required
              Option<Either<String, Unit>> loadingFailureOrSuccess}) =
      _$_LibraryState;

  @override
  List<Deck> get decksSourceList;
  @override
  bool get isLoading;
  @override
  Option<Either<String, List<Deck>>> get trainStartFailureOrSuccess;
  @override
  Option<Either<String, Unit>> get loadingFailureOrSuccess;
  @override
  _$LibraryStateCopyWith<_LibraryState> get copyWith;
}
