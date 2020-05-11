// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'decks_feed_tile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$DecksFeedTileEventTearOff {
  const _$DecksFeedTileEventTearOff();

  LoadNewPageForCategory loadNewPageForCategory(
      {@required CategoryModel category}) {
    return LoadNewPageForCategory(
      category: category,
    );
  }
}

// ignore: unused_element
const $DecksFeedTileEvent = _$DecksFeedTileEventTearOff();

mixin _$DecksFeedTileEvent {
  CategoryModel get category;

  $DecksFeedTileEventCopyWith<DecksFeedTileEvent> get copyWith;
}

abstract class $DecksFeedTileEventCopyWith<$Res> {
  factory $DecksFeedTileEventCopyWith(
          DecksFeedTileEvent value, $Res Function(DecksFeedTileEvent) then) =
      _$DecksFeedTileEventCopyWithImpl<$Res>;
  $Res call({CategoryModel category});
}

class _$DecksFeedTileEventCopyWithImpl<$Res>
    implements $DecksFeedTileEventCopyWith<$Res> {
  _$DecksFeedTileEventCopyWithImpl(this._value, this._then);

  final DecksFeedTileEvent _value;
  // ignore: unused_field
  final $Res Function(DecksFeedTileEvent) _then;

  @override
  $Res call({
    Object category = freezed,
  }) {
    return _then(_value.copyWith(
      category:
          category == freezed ? _value.category : category as CategoryModel,
    ));
  }
}

abstract class $LoadNewPageForCategoryCopyWith<$Res>
    implements $DecksFeedTileEventCopyWith<$Res> {
  factory $LoadNewPageForCategoryCopyWith(LoadNewPageForCategory value,
          $Res Function(LoadNewPageForCategory) then) =
      _$LoadNewPageForCategoryCopyWithImpl<$Res>;
  @override
  $Res call({CategoryModel category});
}

class _$LoadNewPageForCategoryCopyWithImpl<$Res>
    extends _$DecksFeedTileEventCopyWithImpl<$Res>
    implements $LoadNewPageForCategoryCopyWith<$Res> {
  _$LoadNewPageForCategoryCopyWithImpl(LoadNewPageForCategory _value,
      $Res Function(LoadNewPageForCategory) _then)
      : super(_value, (v) => _then(v as LoadNewPageForCategory));

  @override
  LoadNewPageForCategory get _value => super._value as LoadNewPageForCategory;

  @override
  $Res call({
    Object category = freezed,
  }) {
    return _then(LoadNewPageForCategory(
      category:
          category == freezed ? _value.category : category as CategoryModel,
    ));
  }
}

class _$LoadNewPageForCategory implements LoadNewPageForCategory {
  _$LoadNewPageForCategory({@required this.category})
      : assert(category != null);

  @override
  final CategoryModel category;

  @override
  String toString() {
    return 'DecksFeedTileEvent.loadNewPageForCategory(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadNewPageForCategory &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(category);

  @override
  $LoadNewPageForCategoryCopyWith<LoadNewPageForCategory> get copyWith =>
      _$LoadNewPageForCategoryCopyWithImpl<LoadNewPageForCategory>(
          this, _$identity);
}

abstract class LoadNewPageForCategory implements DecksFeedTileEvent {
  factory LoadNewPageForCategory({@required CategoryModel category}) =
      _$LoadNewPageForCategory;

  @override
  CategoryModel get category;
  @override
  $LoadNewPageForCategoryCopyWith<LoadNewPageForCategory> get copyWith;
}

class _$DecksFeedTileStateTearOff {
  const _$DecksFeedTileStateTearOff();

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
const $DecksFeedTileState = _$DecksFeedTileStateTearOff();

mixin _$DecksFeedTileState {
  CategoryModel get categoryModel;
  List<Deck> get decksList;
  Option<StorageFailure<dynamic>> get loadingPageFailureOrSuccess;
  bool get isLoading;

  $DecksFeedTileStateCopyWith<DecksFeedTileState> get copyWith;
}

abstract class $DecksFeedTileStateCopyWith<$Res> {
  factory $DecksFeedTileStateCopyWith(
          DecksFeedTileState value, $Res Function(DecksFeedTileState) then) =
      _$DecksFeedTileStateCopyWithImpl<$Res>;
  $Res call(
      {CategoryModel categoryModel,
      List<Deck> decksList,
      Option<StorageFailure<dynamic>> loadingPageFailureOrSuccess,
      bool isLoading});
}

class _$DecksFeedTileStateCopyWithImpl<$Res>
    implements $DecksFeedTileStateCopyWith<$Res> {
  _$DecksFeedTileStateCopyWithImpl(this._value, this._then);

  final DecksFeedTileState _value;
  // ignore: unused_field
  final $Res Function(DecksFeedTileState) _then;

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
    implements $DecksFeedTileStateCopyWith<$Res> {
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
    extends _$DecksFeedTileStateCopyWithImpl<$Res>
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
    return 'DecksFeedTileState(categoryModel: $categoryModel, decksList: $decksList, loadingPageFailureOrSuccess: $loadingPageFailureOrSuccess, isLoading: $isLoading)';
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

abstract class _DecksFeedTileState implements DecksFeedTileState {
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
