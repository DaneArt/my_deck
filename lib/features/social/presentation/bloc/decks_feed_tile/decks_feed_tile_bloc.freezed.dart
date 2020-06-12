// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'decks_feed_tile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FeedTileEventTearOff {
  const _$FeedTileEventTearOff();

  LoadNewPageForCurrentCategory loadNewPageForCurrentCategory() {
    return LoadNewPageForCurrentCategory();
  }
}

// ignore: unused_element
const $FeedTileEvent = _$FeedTileEventTearOff();

mixin _$FeedTileEvent {}

abstract class $FeedTileEventCopyWith<$Res> {
  factory $FeedTileEventCopyWith(
          FeedTileEvent value, $Res Function(FeedTileEvent) then) =
      _$FeedTileEventCopyWithImpl<$Res>;
}

class _$FeedTileEventCopyWithImpl<$Res>
    implements $FeedTileEventCopyWith<$Res> {
  _$FeedTileEventCopyWithImpl(this._value, this._then);

  final FeedTileEvent _value;
  // ignore: unused_field
  final $Res Function(FeedTileEvent) _then;
}

abstract class $LoadNewPageForCurrentCategoryCopyWith<$Res> {
  factory $LoadNewPageForCurrentCategoryCopyWith(
          LoadNewPageForCurrentCategory value,
          $Res Function(LoadNewPageForCurrentCategory) then) =
      _$LoadNewPageForCurrentCategoryCopyWithImpl<$Res>;
}

class _$LoadNewPageForCurrentCategoryCopyWithImpl<$Res>
    extends _$FeedTileEventCopyWithImpl<$Res>
    implements $LoadNewPageForCurrentCategoryCopyWith<$Res> {
  _$LoadNewPageForCurrentCategoryCopyWithImpl(
      LoadNewPageForCurrentCategory _value,
      $Res Function(LoadNewPageForCurrentCategory) _then)
      : super(_value, (v) => _then(v as LoadNewPageForCurrentCategory));

  @override
  LoadNewPageForCurrentCategory get _value =>
      super._value as LoadNewPageForCurrentCategory;
}

class _$LoadNewPageForCurrentCategory implements LoadNewPageForCurrentCategory {
  _$LoadNewPageForCurrentCategory();

  @override
  String toString() {
    return 'FeedTileEvent.loadNewPageForCurrentCategory()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadNewPageForCurrentCategory);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class LoadNewPageForCurrentCategory implements FeedTileEvent {
  factory LoadNewPageForCurrentCategory() = _$LoadNewPageForCurrentCategory;
}

class _$FeedTileStateTearOff {
  const _$FeedTileStateTearOff();

  _DecksFeedTileState call(
      {@required CategoryModel categoryModel,
      @required List<Deck> decksList,
      @required Option<StorageFailure<dynamic>> loadingPageFailureOrSuccess,
      @required bool isLoading}) {
    return _DecksFeedTileState(
      categoryModel: categoryModel,
      decksList: decksList,
      loadingPageFailureOrSuccess: loadingPageFailureOrSuccess,
      isLoading: isLoading,
    );
  }
}

// ignore: unused_element
const $FeedTileState = _$FeedTileStateTearOff();

mixin _$FeedTileState {
  CategoryModel get categoryModel;
  List<Deck> get decksList;
  Option<StorageFailure<dynamic>> get loadingPageFailureOrSuccess;
  bool get isLoading;

  $FeedTileStateCopyWith<FeedTileState> get copyWith;
}

abstract class $FeedTileStateCopyWith<$Res> {
  factory $FeedTileStateCopyWith(
          FeedTileState value, $Res Function(FeedTileState) then) =
      _$FeedTileStateCopyWithImpl<$Res>;
  $Res call(
      {CategoryModel categoryModel,
      List<Deck> decksList,
      Option<StorageFailure<dynamic>> loadingPageFailureOrSuccess,
      bool isLoading});
}

class _$FeedTileStateCopyWithImpl<$Res>
    implements $FeedTileStateCopyWith<$Res> {
  _$FeedTileStateCopyWithImpl(this._value, this._then);

  final FeedTileState _value;
  // ignore: unused_field
  final $Res Function(FeedTileState) _then;

  @override
  $Res call({
    Object categoryModel = freezed,
    Object decksList = freezed,
    Object loadingPageFailureOrSuccess = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      categoryModel: categoryModel == freezed
          ? _value.categoryModel
          : categoryModel as CategoryModel,
      decksList:
          decksList == freezed ? _value.decksList : decksList as List<Deck>,
      loadingPageFailureOrSuccess: loadingPageFailureOrSuccess == freezed
          ? _value.loadingPageFailureOrSuccess
          : loadingPageFailureOrSuccess as Option<StorageFailure<dynamic>>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

abstract class _$DecksFeedTileStateCopyWith<$Res>
    implements $FeedTileStateCopyWith<$Res> {
  factory _$DecksFeedTileStateCopyWith(
          _DecksFeedTileState value, $Res Function(_DecksFeedTileState) then) =
      __$DecksFeedTileStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {CategoryModel categoryModel,
      List<Deck> decksList,
      Option<StorageFailure<dynamic>> loadingPageFailureOrSuccess,
      bool isLoading});
}

class __$DecksFeedTileStateCopyWithImpl<$Res>
    extends _$FeedTileStateCopyWithImpl<$Res>
    implements _$DecksFeedTileStateCopyWith<$Res> {
  __$DecksFeedTileStateCopyWithImpl(
      _DecksFeedTileState _value, $Res Function(_DecksFeedTileState) _then)
      : super(_value, (v) => _then(v as _DecksFeedTileState));

  @override
  _DecksFeedTileState get _value => super._value as _DecksFeedTileState;

  @override
  $Res call({
    Object categoryModel = freezed,
    Object decksList = freezed,
    Object loadingPageFailureOrSuccess = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_DecksFeedTileState(
      categoryModel: categoryModel == freezed
          ? _value.categoryModel
          : categoryModel as CategoryModel,
      decksList:
          decksList == freezed ? _value.decksList : decksList as List<Deck>,
      loadingPageFailureOrSuccess: loadingPageFailureOrSuccess == freezed
          ? _value.loadingPageFailureOrSuccess
          : loadingPageFailureOrSuccess as Option<StorageFailure<dynamic>>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

class _$_DecksFeedTileState implements _DecksFeedTileState {
  const _$_DecksFeedTileState(
      {@required this.categoryModel,
      @required this.decksList,
      @required this.loadingPageFailureOrSuccess,
      @required this.isLoading})
      : assert(categoryModel != null),
        assert(decksList != null),
        assert(loadingPageFailureOrSuccess != null),
        assert(isLoading != null);

  @override
  final CategoryModel categoryModel;
  @override
  final List<Deck> decksList;
  @override
  final Option<StorageFailure<dynamic>> loadingPageFailureOrSuccess;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'FeedTileState(categoryModel: $categoryModel, decksList: $decksList, loadingPageFailureOrSuccess: $loadingPageFailureOrSuccess, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DecksFeedTileState &&
            (identical(other.categoryModel, categoryModel) ||
                const DeepCollectionEquality()
                    .equals(other.categoryModel, categoryModel)) &&
            (identical(other.decksList, decksList) ||
                const DeepCollectionEquality()
                    .equals(other.decksList, decksList)) &&
            (identical(other.loadingPageFailureOrSuccess,
                    loadingPageFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.loadingPageFailureOrSuccess,
                    loadingPageFailureOrSuccess)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(categoryModel) ^
      const DeepCollectionEquality().hash(decksList) ^
      const DeepCollectionEquality().hash(loadingPageFailureOrSuccess) ^
      const DeepCollectionEquality().hash(isLoading);

  @override
  _$DecksFeedTileStateCopyWith<_DecksFeedTileState> get copyWith =>
      __$DecksFeedTileStateCopyWithImpl<_DecksFeedTileState>(this, _$identity);
}

abstract class _DecksFeedTileState implements FeedTileState {
  const factory _DecksFeedTileState(
      {@required CategoryModel categoryModel,
      @required List<Deck> decksList,
      @required Option<StorageFailure<dynamic>> loadingPageFailureOrSuccess,
      @required bool isLoading}) = _$_DecksFeedTileState;

  @override
  CategoryModel get categoryModel;
  @override
  List<Deck> get decksList;
  @override
  Option<StorageFailure<dynamic>> get loadingPageFailureOrSuccess;
  @override
  bool get isLoading;
  @override
  _$DecksFeedTileStateCopyWith<_DecksFeedTileState> get copyWith;
}
