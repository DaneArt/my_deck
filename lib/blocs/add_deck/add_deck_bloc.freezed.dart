// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'add_deck_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AddDeckStateTearOff {
  const _$AddDeckStateTearOff();

  _AddDeckState call(
      {@required
          bool isLoading,
      @required
          DeckTitle title,
      @required
          DeckDescription description,
      @required
          DeckAvatar avatar,
      @required
          Deck freezedDeck,
      @required
          bool isShared,
      @required
          AddDeckStatus status,
      @required
          AddDeckGoal goal,
      @required
          DeckCategory category,
      @required
          bool availableQuickTrain,
      @required
          User author,
      @required
          Option<Either<StorageFailure<dynamic>, Unit>> loadingFailureOrSuccess,
      @required
          Option<Either<StorageFailure<dynamic>, Unit>> savingFailureOrSuccess,
      @required
          Option<Either<StorageFailure<dynamic>, Unit>> deleteFailureOrSuccess,
      @required
          bool isPending,
      @required
          List<Card> cardsList}) {
    return _AddDeckState(
      isLoading: isLoading,
      title: title,
      description: description,
      avatar: avatar,
      freezedDeck: freezedDeck,
      isShared: isShared,
      status: status,
      goal: goal,
      category: category,
      availableQuickTrain: availableQuickTrain,
      author: author,
      loadingFailureOrSuccess: loadingFailureOrSuccess,
      savingFailureOrSuccess: savingFailureOrSuccess,
      deleteFailureOrSuccess: deleteFailureOrSuccess,
      isPending: isPending,
      cardsList: cardsList,
    );
  }
}

// ignore: unused_element
const $AddDeckState = _$AddDeckStateTearOff();

mixin _$AddDeckState {
  bool get isLoading;
  DeckTitle get title;
  DeckDescription get description;
  DeckAvatar get avatar;
  Deck get freezedDeck;
  bool get isShared;
  AddDeckStatus get status;
  AddDeckGoal get goal;
  DeckCategory get category;
  bool get availableQuickTrain;
  User get author;
  Option<Either<StorageFailure<dynamic>, Unit>> get loadingFailureOrSuccess;
  Option<Either<StorageFailure<dynamic>, Unit>> get savingFailureOrSuccess;
  Option<Either<StorageFailure<dynamic>, Unit>> get deleteFailureOrSuccess;
  bool get isPending;
  List<Card> get cardsList;

  $AddDeckStateCopyWith<AddDeckState> get copyWith;
}

abstract class $AddDeckStateCopyWith<$Res> {
  factory $AddDeckStateCopyWith(
          AddDeckState value, $Res Function(AddDeckState) then) =
      _$AddDeckStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      DeckTitle title,
      DeckDescription description,
      DeckAvatar avatar,
      Deck freezedDeck,
      bool isShared,
      AddDeckStatus status,
      AddDeckGoal goal,
      DeckCategory category,
      bool availableQuickTrain,
      User author,
      Option<Either<StorageFailure<dynamic>, Unit>> loadingFailureOrSuccess,
      Option<Either<StorageFailure<dynamic>, Unit>> savingFailureOrSuccess,
      Option<Either<StorageFailure<dynamic>, Unit>> deleteFailureOrSuccess,
      bool isPending,
      List<Card> cardsList});

  $DeckCopyWith<$Res> get freezedDeck;
  $DeckCategoryCopyWith<$Res> get category;
  $UserCopyWith<$Res> get author;
}

class _$AddDeckStateCopyWithImpl<$Res> implements $AddDeckStateCopyWith<$Res> {
  _$AddDeckStateCopyWithImpl(this._value, this._then);

  final AddDeckState _value;
  // ignore: unused_field
  final $Res Function(AddDeckState) _then;

  @override
  $Res call({
    Object isLoading = freezed,
    Object title = freezed,
    Object description = freezed,
    Object avatar = freezed,
    Object freezedDeck = freezed,
    Object isShared = freezed,
    Object status = freezed,
    Object goal = freezed,
    Object category = freezed,
    Object availableQuickTrain = freezed,
    Object author = freezed,
    Object loadingFailureOrSuccess = freezed,
    Object savingFailureOrSuccess = freezed,
    Object deleteFailureOrSuccess = freezed,
    Object isPending = freezed,
    Object cardsList = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      title: title == freezed ? _value.title : title as DeckTitle,
      description: description == freezed
          ? _value.description
          : description as DeckDescription,
      avatar: avatar == freezed ? _value.avatar : avatar as DeckAvatar,
      freezedDeck:
          freezedDeck == freezed ? _value.freezedDeck : freezedDeck as Deck,
      isShared: isShared == freezed ? _value.isShared : isShared as bool,
      status: status == freezed ? _value.status : status as AddDeckStatus,
      goal: goal == freezed ? _value.goal : goal as AddDeckGoal,
      category:
          category == freezed ? _value.category : category as DeckCategory,
      availableQuickTrain: availableQuickTrain == freezed
          ? _value.availableQuickTrain
          : availableQuickTrain as bool,
      author: author == freezed ? _value.author : author as User,
      loadingFailureOrSuccess: loadingFailureOrSuccess == freezed
          ? _value.loadingFailureOrSuccess
          : loadingFailureOrSuccess
              as Option<Either<StorageFailure<dynamic>, Unit>>,
      savingFailureOrSuccess: savingFailureOrSuccess == freezed
          ? _value.savingFailureOrSuccess
          : savingFailureOrSuccess
              as Option<Either<StorageFailure<dynamic>, Unit>>,
      deleteFailureOrSuccess: deleteFailureOrSuccess == freezed
          ? _value.deleteFailureOrSuccess
          : deleteFailureOrSuccess
              as Option<Either<StorageFailure<dynamic>, Unit>>,
      isPending: isPending == freezed ? _value.isPending : isPending as bool,
      cardsList:
          cardsList == freezed ? _value.cardsList : cardsList as List<Card>,
    ));
  }

  @override
  $DeckCopyWith<$Res> get freezedDeck {
    if (_value.freezedDeck == null) {
      return null;
    }
    return $DeckCopyWith<$Res>(_value.freezedDeck, (value) {
      return _then(_value.copyWith(freezedDeck: value));
    });
  }

  @override
  $DeckCategoryCopyWith<$Res> get category {
    if (_value.category == null) {
      return null;
    }
    return $DeckCategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }

  @override
  $UserCopyWith<$Res> get author {
    if (_value.author == null) {
      return null;
    }
    return $UserCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value));
    });
  }
}

abstract class _$AddDeckStateCopyWith<$Res>
    implements $AddDeckStateCopyWith<$Res> {
  factory _$AddDeckStateCopyWith(
          _AddDeckState value, $Res Function(_AddDeckState) then) =
      __$AddDeckStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      DeckTitle title,
      DeckDescription description,
      DeckAvatar avatar,
      Deck freezedDeck,
      bool isShared,
      AddDeckStatus status,
      AddDeckGoal goal,
      DeckCategory category,
      bool availableQuickTrain,
      User author,
      Option<Either<StorageFailure<dynamic>, Unit>> loadingFailureOrSuccess,
      Option<Either<StorageFailure<dynamic>, Unit>> savingFailureOrSuccess,
      Option<Either<StorageFailure<dynamic>, Unit>> deleteFailureOrSuccess,
      bool isPending,
      List<Card> cardsList});

  @override
  $DeckCopyWith<$Res> get freezedDeck;
  @override
  $DeckCategoryCopyWith<$Res> get category;
  @override
  $UserCopyWith<$Res> get author;
}

class __$AddDeckStateCopyWithImpl<$Res> extends _$AddDeckStateCopyWithImpl<$Res>
    implements _$AddDeckStateCopyWith<$Res> {
  __$AddDeckStateCopyWithImpl(
      _AddDeckState _value, $Res Function(_AddDeckState) _then)
      : super(_value, (v) => _then(v as _AddDeckState));

  @override
  _AddDeckState get _value => super._value as _AddDeckState;

  @override
  $Res call({
    Object isLoading = freezed,
    Object title = freezed,
    Object description = freezed,
    Object avatar = freezed,
    Object freezedDeck = freezed,
    Object isShared = freezed,
    Object status = freezed,
    Object goal = freezed,
    Object category = freezed,
    Object availableQuickTrain = freezed,
    Object author = freezed,
    Object loadingFailureOrSuccess = freezed,
    Object savingFailureOrSuccess = freezed,
    Object deleteFailureOrSuccess = freezed,
    Object isPending = freezed,
    Object cardsList = freezed,
  }) {
    return _then(_AddDeckState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      title: title == freezed ? _value.title : title as DeckTitle,
      description: description == freezed
          ? _value.description
          : description as DeckDescription,
      avatar: avatar == freezed ? _value.avatar : avatar as DeckAvatar,
      freezedDeck:
          freezedDeck == freezed ? _value.freezedDeck : freezedDeck as Deck,
      isShared: isShared == freezed ? _value.isShared : isShared as bool,
      status: status == freezed ? _value.status : status as AddDeckStatus,
      goal: goal == freezed ? _value.goal : goal as AddDeckGoal,
      category:
          category == freezed ? _value.category : category as DeckCategory,
      availableQuickTrain: availableQuickTrain == freezed
          ? _value.availableQuickTrain
          : availableQuickTrain as bool,
      author: author == freezed ? _value.author : author as User,
      loadingFailureOrSuccess: loadingFailureOrSuccess == freezed
          ? _value.loadingFailureOrSuccess
          : loadingFailureOrSuccess
              as Option<Either<StorageFailure<dynamic>, Unit>>,
      savingFailureOrSuccess: savingFailureOrSuccess == freezed
          ? _value.savingFailureOrSuccess
          : savingFailureOrSuccess
              as Option<Either<StorageFailure<dynamic>, Unit>>,
      deleteFailureOrSuccess: deleteFailureOrSuccess == freezed
          ? _value.deleteFailureOrSuccess
          : deleteFailureOrSuccess
              as Option<Either<StorageFailure<dynamic>, Unit>>,
      isPending: isPending == freezed ? _value.isPending : isPending as bool,
      cardsList:
          cardsList == freezed ? _value.cardsList : cardsList as List<Card>,
    ));
  }
}

class _$_AddDeckState implements _AddDeckState {
  const _$_AddDeckState(
      {@required this.isLoading,
      @required this.title,
      @required this.description,
      @required this.avatar,
      @required this.freezedDeck,
      @required this.isShared,
      @required this.status,
      @required this.goal,
      @required this.category,
      @required this.availableQuickTrain,
      @required this.author,
      @required this.loadingFailureOrSuccess,
      @required this.savingFailureOrSuccess,
      @required this.deleteFailureOrSuccess,
      @required this.isPending,
      @required this.cardsList})
      : assert(isLoading != null),
        assert(title != null),
        assert(description != null),
        assert(avatar != null),
        assert(freezedDeck != null),
        assert(isShared != null),
        assert(status != null),
        assert(goal != null),
        assert(category != null),
        assert(availableQuickTrain != null),
        assert(author != null),
        assert(loadingFailureOrSuccess != null),
        assert(savingFailureOrSuccess != null),
        assert(deleteFailureOrSuccess != null),
        assert(isPending != null),
        assert(cardsList != null);

  @override
  final bool isLoading;
  @override
  final DeckTitle title;
  @override
  final DeckDescription description;
  @override
  final DeckAvatar avatar;
  @override
  final Deck freezedDeck;
  @override
  final bool isShared;
  @override
  final AddDeckStatus status;
  @override
  final AddDeckGoal goal;
  @override
  final DeckCategory category;
  @override
  final bool availableQuickTrain;
  @override
  final User author;
  @override
  final Option<Either<StorageFailure<dynamic>, Unit>> loadingFailureOrSuccess;
  @override
  final Option<Either<StorageFailure<dynamic>, Unit>> savingFailureOrSuccess;
  @override
  final Option<Either<StorageFailure<dynamic>, Unit>> deleteFailureOrSuccess;
  @override
  final bool isPending;
  @override
  final List<Card> cardsList;

  @override
  String toString() {
    return 'AddDeckState(isLoading: $isLoading, title: $title, description: $description, avatar: $avatar, freezedDeck: $freezedDeck, isShared: $isShared, status: $status, goal: $goal, category: $category, availableQuickTrain: $availableQuickTrain, author: $author, loadingFailureOrSuccess: $loadingFailureOrSuccess, savingFailureOrSuccess: $savingFailureOrSuccess, deleteFailureOrSuccess: $deleteFailureOrSuccess, isPending: $isPending, cardsList: $cardsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddDeckState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)) &&
            (identical(other.freezedDeck, freezedDeck) ||
                const DeepCollectionEquality()
                    .equals(other.freezedDeck, freezedDeck)) &&
            (identical(other.isShared, isShared) ||
                const DeepCollectionEquality()
                    .equals(other.isShared, isShared)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.goal, goal) ||
                const DeepCollectionEquality().equals(other.goal, goal)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.availableQuickTrain, availableQuickTrain) ||
                const DeepCollectionEquality()
                    .equals(other.availableQuickTrain, availableQuickTrain)) &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)) &&
            (identical(
                    other.loadingFailureOrSuccess, loadingFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.loadingFailureOrSuccess, loadingFailureOrSuccess)) &&
            (identical(other.savingFailureOrSuccess, savingFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.savingFailureOrSuccess, savingFailureOrSuccess)) &&
            (identical(other.deleteFailureOrSuccess, deleteFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.deleteFailureOrSuccess, deleteFailureOrSuccess)) &&
            (identical(other.isPending, isPending) ||
                const DeepCollectionEquality()
                    .equals(other.isPending, isPending)) &&
            (identical(other.cardsList, cardsList) ||
                const DeepCollectionEquality()
                    .equals(other.cardsList, cardsList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(avatar) ^
      const DeepCollectionEquality().hash(freezedDeck) ^
      const DeepCollectionEquality().hash(isShared) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(goal) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(availableQuickTrain) ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(loadingFailureOrSuccess) ^
      const DeepCollectionEquality().hash(savingFailureOrSuccess) ^
      const DeepCollectionEquality().hash(deleteFailureOrSuccess) ^
      const DeepCollectionEquality().hash(isPending) ^
      const DeepCollectionEquality().hash(cardsList);

  @override
  _$AddDeckStateCopyWith<_AddDeckState> get copyWith =>
      __$AddDeckStateCopyWithImpl<_AddDeckState>(this, _$identity);
}

abstract class _AddDeckState implements AddDeckState {
  const factory _AddDeckState(
      {@required
          bool isLoading,
      @required
          DeckTitle title,
      @required
          DeckDescription description,
      @required
          DeckAvatar avatar,
      @required
          Deck freezedDeck,
      @required
          bool isShared,
      @required
          AddDeckStatus status,
      @required
          AddDeckGoal goal,
      @required
          DeckCategory category,
      @required
          bool availableQuickTrain,
      @required
          User author,
      @required
          Option<Either<StorageFailure<dynamic>, Unit>> loadingFailureOrSuccess,
      @required
          Option<Either<StorageFailure<dynamic>, Unit>> savingFailureOrSuccess,
      @required
          Option<Either<StorageFailure<dynamic>, Unit>> deleteFailureOrSuccess,
      @required
          bool isPending,
      @required
          List<Card> cardsList}) = _$_AddDeckState;

  @override
  bool get isLoading;
  @override
  DeckTitle get title;
  @override
  DeckDescription get description;
  @override
  DeckAvatar get avatar;
  @override
  Deck get freezedDeck;
  @override
  bool get isShared;
  @override
  AddDeckStatus get status;
  @override
  AddDeckGoal get goal;
  @override
  DeckCategory get category;
  @override
  bool get availableQuickTrain;
  @override
  User get author;
  @override
  Option<Either<StorageFailure<dynamic>, Unit>> get loadingFailureOrSuccess;
  @override
  Option<Either<StorageFailure<dynamic>, Unit>> get savingFailureOrSuccess;
  @override
  Option<Either<StorageFailure<dynamic>, Unit>> get deleteFailureOrSuccess;
  @override
  bool get isPending;
  @override
  List<Card> get cardsList;
  @override
  _$AddDeckStateCopyWith<_AddDeckState> get copyWith;
}

class _$AddDeckEventTearOff {
  const _$AddDeckEventTearOff();

  InitFromOnline initFromOnline() {
    return InitFromOnline();
  }

  TitleChanged titleChanged(String titleStr) {
    return TitleChanged(
      titleStr,
    );
  }

  DescriptionChanged descriptionChanged(String descStr) {
    return DescriptionChanged(
      descStr,
    );
  }

  AvatarChanged avatarChanged(ImageFile avatar) {
    return AvatarChanged(
      avatar,
    );
  }

  PrivacyChanged changePrivacy() {
    return PrivacyChanged();
  }

  QuickTrainStateChanged quickTrainStateChanged() {
    return QuickTrainStateChanged();
  }

  CategoryChanged categoryChanged(DeckCategory category) {
    return CategoryChanged(
      category,
    );
  }

  SwitchEditState switchEditStatus() {
    return SwitchEditState();
  }

  SaveChanges saveChanges() {
    return SaveChanges();
  }

  DeleteDeck deleteDeck() {
    return DeleteDeck();
  }

  UpdateCards updateCards({@required List<Card> cards}) {
    return UpdateCards(
      cards: cards,
    );
  }
}

// ignore: unused_element
const $AddDeckEvent = _$AddDeckEventTearOff();

mixin _$AddDeckEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initFromOnline(),
    @required Result titleChanged(String titleStr),
    @required Result descriptionChanged(String descStr),
    @required Result avatarChanged(ImageFile avatar),
    @required Result changePrivacy(),
    @required Result quickTrainStateChanged(),
    @required Result categoryChanged(DeckCategory category),
    @required Result switchEditStatus(),
    @required Result saveChanges(),
    @required Result deleteDeck(),
    @required Result updateCards(List<Card> cards),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initFromOnline(),
    Result titleChanged(String titleStr),
    Result descriptionChanged(String descStr),
    Result avatarChanged(ImageFile avatar),
    Result changePrivacy(),
    Result quickTrainStateChanged(),
    Result categoryChanged(DeckCategory category),
    Result switchEditStatus(),
    Result saveChanges(),
    Result deleteDeck(),
    Result updateCards(List<Card> cards),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initFromOnline(InitFromOnline value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result avatarChanged(AvatarChanged value),
    @required Result changePrivacy(PrivacyChanged value),
    @required Result quickTrainStateChanged(QuickTrainStateChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result switchEditStatus(SwitchEditState value),
    @required Result saveChanges(SaveChanges value),
    @required Result deleteDeck(DeleteDeck value),
    @required Result updateCards(UpdateCards value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initFromOnline(InitFromOnline value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result avatarChanged(AvatarChanged value),
    Result changePrivacy(PrivacyChanged value),
    Result quickTrainStateChanged(QuickTrainStateChanged value),
    Result categoryChanged(CategoryChanged value),
    Result switchEditStatus(SwitchEditState value),
    Result saveChanges(SaveChanges value),
    Result deleteDeck(DeleteDeck value),
    Result updateCards(UpdateCards value),
    @required Result orElse(),
  });
}

abstract class $AddDeckEventCopyWith<$Res> {
  factory $AddDeckEventCopyWith(
          AddDeckEvent value, $Res Function(AddDeckEvent) then) =
      _$AddDeckEventCopyWithImpl<$Res>;
}

class _$AddDeckEventCopyWithImpl<$Res> implements $AddDeckEventCopyWith<$Res> {
  _$AddDeckEventCopyWithImpl(this._value, this._then);

  final AddDeckEvent _value;
  // ignore: unused_field
  final $Res Function(AddDeckEvent) _then;
}

abstract class $InitFromOnlineCopyWith<$Res> {
  factory $InitFromOnlineCopyWith(
          InitFromOnline value, $Res Function(InitFromOnline) then) =
      _$InitFromOnlineCopyWithImpl<$Res>;
}

class _$InitFromOnlineCopyWithImpl<$Res>
    extends _$AddDeckEventCopyWithImpl<$Res>
    implements $InitFromOnlineCopyWith<$Res> {
  _$InitFromOnlineCopyWithImpl(
      InitFromOnline _value, $Res Function(InitFromOnline) _then)
      : super(_value, (v) => _then(v as InitFromOnline));

  @override
  InitFromOnline get _value => super._value as InitFromOnline;
}

class _$InitFromOnline implements InitFromOnline {
  _$InitFromOnline();

  @override
  String toString() {
    return 'AddDeckEvent.initFromOnline()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InitFromOnline);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initFromOnline(),
    @required Result titleChanged(String titleStr),
    @required Result descriptionChanged(String descStr),
    @required Result avatarChanged(ImageFile avatar),
    @required Result changePrivacy(),
    @required Result quickTrainStateChanged(),
    @required Result categoryChanged(DeckCategory category),
    @required Result switchEditStatus(),
    @required Result saveChanges(),
    @required Result deleteDeck(),
    @required Result updateCards(List<Card> cards),
  }) {
    assert(initFromOnline != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(changePrivacy != null);
    assert(quickTrainStateChanged != null);
    assert(categoryChanged != null);
    assert(switchEditStatus != null);
    assert(saveChanges != null);
    assert(deleteDeck != null);
    assert(updateCards != null);
    return initFromOnline();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initFromOnline(),
    Result titleChanged(String titleStr),
    Result descriptionChanged(String descStr),
    Result avatarChanged(ImageFile avatar),
    Result changePrivacy(),
    Result quickTrainStateChanged(),
    Result categoryChanged(DeckCategory category),
    Result switchEditStatus(),
    Result saveChanges(),
    Result deleteDeck(),
    Result updateCards(List<Card> cards),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initFromOnline != null) {
      return initFromOnline();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initFromOnline(InitFromOnline value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result avatarChanged(AvatarChanged value),
    @required Result changePrivacy(PrivacyChanged value),
    @required Result quickTrainStateChanged(QuickTrainStateChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result switchEditStatus(SwitchEditState value),
    @required Result saveChanges(SaveChanges value),
    @required Result deleteDeck(DeleteDeck value),
    @required Result updateCards(UpdateCards value),
  }) {
    assert(initFromOnline != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(changePrivacy != null);
    assert(quickTrainStateChanged != null);
    assert(categoryChanged != null);
    assert(switchEditStatus != null);
    assert(saveChanges != null);
    assert(deleteDeck != null);
    assert(updateCards != null);
    return initFromOnline(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initFromOnline(InitFromOnline value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result avatarChanged(AvatarChanged value),
    Result changePrivacy(PrivacyChanged value),
    Result quickTrainStateChanged(QuickTrainStateChanged value),
    Result categoryChanged(CategoryChanged value),
    Result switchEditStatus(SwitchEditState value),
    Result saveChanges(SaveChanges value),
    Result deleteDeck(DeleteDeck value),
    Result updateCards(UpdateCards value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initFromOnline != null) {
      return initFromOnline(this);
    }
    return orElse();
  }
}

abstract class InitFromOnline implements AddDeckEvent {
  factory InitFromOnline() = _$InitFromOnline;
}

abstract class $TitleChangedCopyWith<$Res> {
  factory $TitleChangedCopyWith(
          TitleChanged value, $Res Function(TitleChanged) then) =
      _$TitleChangedCopyWithImpl<$Res>;
  $Res call({String titleStr});
}

class _$TitleChangedCopyWithImpl<$Res> extends _$AddDeckEventCopyWithImpl<$Res>
    implements $TitleChangedCopyWith<$Res> {
  _$TitleChangedCopyWithImpl(
      TitleChanged _value, $Res Function(TitleChanged) _then)
      : super(_value, (v) => _then(v as TitleChanged));

  @override
  TitleChanged get _value => super._value as TitleChanged;

  @override
  $Res call({
    Object titleStr = freezed,
  }) {
    return _then(TitleChanged(
      titleStr == freezed ? _value.titleStr : titleStr as String,
    ));
  }
}

class _$TitleChanged implements TitleChanged {
  _$TitleChanged(this.titleStr) : assert(titleStr != null);

  @override
  final String titleStr;

  @override
  String toString() {
    return 'AddDeckEvent.titleChanged(titleStr: $titleStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TitleChanged &&
            (identical(other.titleStr, titleStr) ||
                const DeepCollectionEquality()
                    .equals(other.titleStr, titleStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(titleStr);

  @override
  $TitleChangedCopyWith<TitleChanged> get copyWith =>
      _$TitleChangedCopyWithImpl<TitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initFromOnline(),
    @required Result titleChanged(String titleStr),
    @required Result descriptionChanged(String descStr),
    @required Result avatarChanged(ImageFile avatar),
    @required Result changePrivacy(),
    @required Result quickTrainStateChanged(),
    @required Result categoryChanged(DeckCategory category),
    @required Result switchEditStatus(),
    @required Result saveChanges(),
    @required Result deleteDeck(),
    @required Result updateCards(List<Card> cards),
  }) {
    assert(initFromOnline != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(changePrivacy != null);
    assert(quickTrainStateChanged != null);
    assert(categoryChanged != null);
    assert(switchEditStatus != null);
    assert(saveChanges != null);
    assert(deleteDeck != null);
    assert(updateCards != null);
    return titleChanged(titleStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initFromOnline(),
    Result titleChanged(String titleStr),
    Result descriptionChanged(String descStr),
    Result avatarChanged(ImageFile avatar),
    Result changePrivacy(),
    Result quickTrainStateChanged(),
    Result categoryChanged(DeckCategory category),
    Result switchEditStatus(),
    Result saveChanges(),
    Result deleteDeck(),
    Result updateCards(List<Card> cards),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (titleChanged != null) {
      return titleChanged(titleStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initFromOnline(InitFromOnline value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result avatarChanged(AvatarChanged value),
    @required Result changePrivacy(PrivacyChanged value),
    @required Result quickTrainStateChanged(QuickTrainStateChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result switchEditStatus(SwitchEditState value),
    @required Result saveChanges(SaveChanges value),
    @required Result deleteDeck(DeleteDeck value),
    @required Result updateCards(UpdateCards value),
  }) {
    assert(initFromOnline != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(changePrivacy != null);
    assert(quickTrainStateChanged != null);
    assert(categoryChanged != null);
    assert(switchEditStatus != null);
    assert(saveChanges != null);
    assert(deleteDeck != null);
    assert(updateCards != null);
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initFromOnline(InitFromOnline value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result avatarChanged(AvatarChanged value),
    Result changePrivacy(PrivacyChanged value),
    Result quickTrainStateChanged(QuickTrainStateChanged value),
    Result categoryChanged(CategoryChanged value),
    Result switchEditStatus(SwitchEditState value),
    Result saveChanges(SaveChanges value),
    Result deleteDeck(DeleteDeck value),
    Result updateCards(UpdateCards value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class TitleChanged implements AddDeckEvent {
  factory TitleChanged(String titleStr) = _$TitleChanged;

  String get titleStr;
  $TitleChangedCopyWith<TitleChanged> get copyWith;
}

abstract class $DescriptionChangedCopyWith<$Res> {
  factory $DescriptionChangedCopyWith(
          DescriptionChanged value, $Res Function(DescriptionChanged) then) =
      _$DescriptionChangedCopyWithImpl<$Res>;
  $Res call({String descStr});
}

class _$DescriptionChangedCopyWithImpl<$Res>
    extends _$AddDeckEventCopyWithImpl<$Res>
    implements $DescriptionChangedCopyWith<$Res> {
  _$DescriptionChangedCopyWithImpl(
      DescriptionChanged _value, $Res Function(DescriptionChanged) _then)
      : super(_value, (v) => _then(v as DescriptionChanged));

  @override
  DescriptionChanged get _value => super._value as DescriptionChanged;

  @override
  $Res call({
    Object descStr = freezed,
  }) {
    return _then(DescriptionChanged(
      descStr == freezed ? _value.descStr : descStr as String,
    ));
  }
}

class _$DescriptionChanged implements DescriptionChanged {
  _$DescriptionChanged(this.descStr) : assert(descStr != null);

  @override
  final String descStr;

  @override
  String toString() {
    return 'AddDeckEvent.descriptionChanged(descStr: $descStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DescriptionChanged &&
            (identical(other.descStr, descStr) ||
                const DeepCollectionEquality().equals(other.descStr, descStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(descStr);

  @override
  $DescriptionChangedCopyWith<DescriptionChanged> get copyWith =>
      _$DescriptionChangedCopyWithImpl<DescriptionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initFromOnline(),
    @required Result titleChanged(String titleStr),
    @required Result descriptionChanged(String descStr),
    @required Result avatarChanged(ImageFile avatar),
    @required Result changePrivacy(),
    @required Result quickTrainStateChanged(),
    @required Result categoryChanged(DeckCategory category),
    @required Result switchEditStatus(),
    @required Result saveChanges(),
    @required Result deleteDeck(),
    @required Result updateCards(List<Card> cards),
  }) {
    assert(initFromOnline != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(changePrivacy != null);
    assert(quickTrainStateChanged != null);
    assert(categoryChanged != null);
    assert(switchEditStatus != null);
    assert(saveChanges != null);
    assert(deleteDeck != null);
    assert(updateCards != null);
    return descriptionChanged(descStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initFromOnline(),
    Result titleChanged(String titleStr),
    Result descriptionChanged(String descStr),
    Result avatarChanged(ImageFile avatar),
    Result changePrivacy(),
    Result quickTrainStateChanged(),
    Result categoryChanged(DeckCategory category),
    Result switchEditStatus(),
    Result saveChanges(),
    Result deleteDeck(),
    Result updateCards(List<Card> cards),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChanged != null) {
      return descriptionChanged(descStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initFromOnline(InitFromOnline value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result avatarChanged(AvatarChanged value),
    @required Result changePrivacy(PrivacyChanged value),
    @required Result quickTrainStateChanged(QuickTrainStateChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result switchEditStatus(SwitchEditState value),
    @required Result saveChanges(SaveChanges value),
    @required Result deleteDeck(DeleteDeck value),
    @required Result updateCards(UpdateCards value),
  }) {
    assert(initFromOnline != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(changePrivacy != null);
    assert(quickTrainStateChanged != null);
    assert(categoryChanged != null);
    assert(switchEditStatus != null);
    assert(saveChanges != null);
    assert(deleteDeck != null);
    assert(updateCards != null);
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initFromOnline(InitFromOnline value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result avatarChanged(AvatarChanged value),
    Result changePrivacy(PrivacyChanged value),
    Result quickTrainStateChanged(QuickTrainStateChanged value),
    Result categoryChanged(CategoryChanged value),
    Result switchEditStatus(SwitchEditState value),
    Result saveChanges(SaveChanges value),
    Result deleteDeck(DeleteDeck value),
    Result updateCards(UpdateCards value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class DescriptionChanged implements AddDeckEvent {
  factory DescriptionChanged(String descStr) = _$DescriptionChanged;

  String get descStr;
  $DescriptionChangedCopyWith<DescriptionChanged> get copyWith;
}

abstract class $AvatarChangedCopyWith<$Res> {
  factory $AvatarChangedCopyWith(
          AvatarChanged value, $Res Function(AvatarChanged) then) =
      _$AvatarChangedCopyWithImpl<$Res>;
  $Res call({ImageFile avatar});
}

class _$AvatarChangedCopyWithImpl<$Res> extends _$AddDeckEventCopyWithImpl<$Res>
    implements $AvatarChangedCopyWith<$Res> {
  _$AvatarChangedCopyWithImpl(
      AvatarChanged _value, $Res Function(AvatarChanged) _then)
      : super(_value, (v) => _then(v as AvatarChanged));

  @override
  AvatarChanged get _value => super._value as AvatarChanged;

  @override
  $Res call({
    Object avatar = freezed,
  }) {
    return _then(AvatarChanged(
      avatar == freezed ? _value.avatar : avatar as ImageFile,
    ));
  }
}

class _$AvatarChanged implements AvatarChanged {
  _$AvatarChanged(this.avatar) : assert(avatar != null);

  @override
  final ImageFile avatar;

  @override
  String toString() {
    return 'AddDeckEvent.avatarChanged(avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AvatarChanged &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(avatar);

  @override
  $AvatarChangedCopyWith<AvatarChanged> get copyWith =>
      _$AvatarChangedCopyWithImpl<AvatarChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initFromOnline(),
    @required Result titleChanged(String titleStr),
    @required Result descriptionChanged(String descStr),
    @required Result avatarChanged(ImageFile avatar),
    @required Result changePrivacy(),
    @required Result quickTrainStateChanged(),
    @required Result categoryChanged(DeckCategory category),
    @required Result switchEditStatus(),
    @required Result saveChanges(),
    @required Result deleteDeck(),
    @required Result updateCards(List<Card> cards),
  }) {
    assert(initFromOnline != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(changePrivacy != null);
    assert(quickTrainStateChanged != null);
    assert(categoryChanged != null);
    assert(switchEditStatus != null);
    assert(saveChanges != null);
    assert(deleteDeck != null);
    assert(updateCards != null);
    return avatarChanged(avatar);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initFromOnline(),
    Result titleChanged(String titleStr),
    Result descriptionChanged(String descStr),
    Result avatarChanged(ImageFile avatar),
    Result changePrivacy(),
    Result quickTrainStateChanged(),
    Result categoryChanged(DeckCategory category),
    Result switchEditStatus(),
    Result saveChanges(),
    Result deleteDeck(),
    Result updateCards(List<Card> cards),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (avatarChanged != null) {
      return avatarChanged(avatar);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initFromOnline(InitFromOnline value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result avatarChanged(AvatarChanged value),
    @required Result changePrivacy(PrivacyChanged value),
    @required Result quickTrainStateChanged(QuickTrainStateChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result switchEditStatus(SwitchEditState value),
    @required Result saveChanges(SaveChanges value),
    @required Result deleteDeck(DeleteDeck value),
    @required Result updateCards(UpdateCards value),
  }) {
    assert(initFromOnline != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(changePrivacy != null);
    assert(quickTrainStateChanged != null);
    assert(categoryChanged != null);
    assert(switchEditStatus != null);
    assert(saveChanges != null);
    assert(deleteDeck != null);
    assert(updateCards != null);
    return avatarChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initFromOnline(InitFromOnline value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result avatarChanged(AvatarChanged value),
    Result changePrivacy(PrivacyChanged value),
    Result quickTrainStateChanged(QuickTrainStateChanged value),
    Result categoryChanged(CategoryChanged value),
    Result switchEditStatus(SwitchEditState value),
    Result saveChanges(SaveChanges value),
    Result deleteDeck(DeleteDeck value),
    Result updateCards(UpdateCards value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (avatarChanged != null) {
      return avatarChanged(this);
    }
    return orElse();
  }
}

abstract class AvatarChanged implements AddDeckEvent {
  factory AvatarChanged(ImageFile avatar) = _$AvatarChanged;

  ImageFile get avatar;
  $AvatarChangedCopyWith<AvatarChanged> get copyWith;
}

abstract class $PrivacyChangedCopyWith<$Res> {
  factory $PrivacyChangedCopyWith(
          PrivacyChanged value, $Res Function(PrivacyChanged) then) =
      _$PrivacyChangedCopyWithImpl<$Res>;
}

class _$PrivacyChangedCopyWithImpl<$Res>
    extends _$AddDeckEventCopyWithImpl<$Res>
    implements $PrivacyChangedCopyWith<$Res> {
  _$PrivacyChangedCopyWithImpl(
      PrivacyChanged _value, $Res Function(PrivacyChanged) _then)
      : super(_value, (v) => _then(v as PrivacyChanged));

  @override
  PrivacyChanged get _value => super._value as PrivacyChanged;
}

class _$PrivacyChanged implements PrivacyChanged {
  _$PrivacyChanged();

  @override
  String toString() {
    return 'AddDeckEvent.changePrivacy()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PrivacyChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initFromOnline(),
    @required Result titleChanged(String titleStr),
    @required Result descriptionChanged(String descStr),
    @required Result avatarChanged(ImageFile avatar),
    @required Result changePrivacy(),
    @required Result quickTrainStateChanged(),
    @required Result categoryChanged(DeckCategory category),
    @required Result switchEditStatus(),
    @required Result saveChanges(),
    @required Result deleteDeck(),
    @required Result updateCards(List<Card> cards),
  }) {
    assert(initFromOnline != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(changePrivacy != null);
    assert(quickTrainStateChanged != null);
    assert(categoryChanged != null);
    assert(switchEditStatus != null);
    assert(saveChanges != null);
    assert(deleteDeck != null);
    assert(updateCards != null);
    return changePrivacy();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initFromOnline(),
    Result titleChanged(String titleStr),
    Result descriptionChanged(String descStr),
    Result avatarChanged(ImageFile avatar),
    Result changePrivacy(),
    Result quickTrainStateChanged(),
    Result categoryChanged(DeckCategory category),
    Result switchEditStatus(),
    Result saveChanges(),
    Result deleteDeck(),
    Result updateCards(List<Card> cards),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changePrivacy != null) {
      return changePrivacy();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initFromOnline(InitFromOnline value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result avatarChanged(AvatarChanged value),
    @required Result changePrivacy(PrivacyChanged value),
    @required Result quickTrainStateChanged(QuickTrainStateChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result switchEditStatus(SwitchEditState value),
    @required Result saveChanges(SaveChanges value),
    @required Result deleteDeck(DeleteDeck value),
    @required Result updateCards(UpdateCards value),
  }) {
    assert(initFromOnline != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(changePrivacy != null);
    assert(quickTrainStateChanged != null);
    assert(categoryChanged != null);
    assert(switchEditStatus != null);
    assert(saveChanges != null);
    assert(deleteDeck != null);
    assert(updateCards != null);
    return changePrivacy(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initFromOnline(InitFromOnline value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result avatarChanged(AvatarChanged value),
    Result changePrivacy(PrivacyChanged value),
    Result quickTrainStateChanged(QuickTrainStateChanged value),
    Result categoryChanged(CategoryChanged value),
    Result switchEditStatus(SwitchEditState value),
    Result saveChanges(SaveChanges value),
    Result deleteDeck(DeleteDeck value),
    Result updateCards(UpdateCards value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changePrivacy != null) {
      return changePrivacy(this);
    }
    return orElse();
  }
}

abstract class PrivacyChanged implements AddDeckEvent {
  factory PrivacyChanged() = _$PrivacyChanged;
}

abstract class $QuickTrainStateChangedCopyWith<$Res> {
  factory $QuickTrainStateChangedCopyWith(QuickTrainStateChanged value,
          $Res Function(QuickTrainStateChanged) then) =
      _$QuickTrainStateChangedCopyWithImpl<$Res>;
}

class _$QuickTrainStateChangedCopyWithImpl<$Res>
    extends _$AddDeckEventCopyWithImpl<$Res>
    implements $QuickTrainStateChangedCopyWith<$Res> {
  _$QuickTrainStateChangedCopyWithImpl(QuickTrainStateChanged _value,
      $Res Function(QuickTrainStateChanged) _then)
      : super(_value, (v) => _then(v as QuickTrainStateChanged));

  @override
  QuickTrainStateChanged get _value => super._value as QuickTrainStateChanged;
}

class _$QuickTrainStateChanged implements QuickTrainStateChanged {
  _$QuickTrainStateChanged();

  @override
  String toString() {
    return 'AddDeckEvent.quickTrainStateChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is QuickTrainStateChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initFromOnline(),
    @required Result titleChanged(String titleStr),
    @required Result descriptionChanged(String descStr),
    @required Result avatarChanged(ImageFile avatar),
    @required Result changePrivacy(),
    @required Result quickTrainStateChanged(),
    @required Result categoryChanged(DeckCategory category),
    @required Result switchEditStatus(),
    @required Result saveChanges(),
    @required Result deleteDeck(),
    @required Result updateCards(List<Card> cards),
  }) {
    assert(initFromOnline != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(changePrivacy != null);
    assert(quickTrainStateChanged != null);
    assert(categoryChanged != null);
    assert(switchEditStatus != null);
    assert(saveChanges != null);
    assert(deleteDeck != null);
    assert(updateCards != null);
    return quickTrainStateChanged();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initFromOnline(),
    Result titleChanged(String titleStr),
    Result descriptionChanged(String descStr),
    Result avatarChanged(ImageFile avatar),
    Result changePrivacy(),
    Result quickTrainStateChanged(),
    Result categoryChanged(DeckCategory category),
    Result switchEditStatus(),
    Result saveChanges(),
    Result deleteDeck(),
    Result updateCards(List<Card> cards),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (quickTrainStateChanged != null) {
      return quickTrainStateChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initFromOnline(InitFromOnline value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result avatarChanged(AvatarChanged value),
    @required Result changePrivacy(PrivacyChanged value),
    @required Result quickTrainStateChanged(QuickTrainStateChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result switchEditStatus(SwitchEditState value),
    @required Result saveChanges(SaveChanges value),
    @required Result deleteDeck(DeleteDeck value),
    @required Result updateCards(UpdateCards value),
  }) {
    assert(initFromOnline != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(changePrivacy != null);
    assert(quickTrainStateChanged != null);
    assert(categoryChanged != null);
    assert(switchEditStatus != null);
    assert(saveChanges != null);
    assert(deleteDeck != null);
    assert(updateCards != null);
    return quickTrainStateChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initFromOnline(InitFromOnline value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result avatarChanged(AvatarChanged value),
    Result changePrivacy(PrivacyChanged value),
    Result quickTrainStateChanged(QuickTrainStateChanged value),
    Result categoryChanged(CategoryChanged value),
    Result switchEditStatus(SwitchEditState value),
    Result saveChanges(SaveChanges value),
    Result deleteDeck(DeleteDeck value),
    Result updateCards(UpdateCards value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (quickTrainStateChanged != null) {
      return quickTrainStateChanged(this);
    }
    return orElse();
  }
}

abstract class QuickTrainStateChanged implements AddDeckEvent {
  factory QuickTrainStateChanged() = _$QuickTrainStateChanged;
}

abstract class $CategoryChangedCopyWith<$Res> {
  factory $CategoryChangedCopyWith(
          CategoryChanged value, $Res Function(CategoryChanged) then) =
      _$CategoryChangedCopyWithImpl<$Res>;
  $Res call({DeckCategory category});

  $DeckCategoryCopyWith<$Res> get category;
}

class _$CategoryChangedCopyWithImpl<$Res>
    extends _$AddDeckEventCopyWithImpl<$Res>
    implements $CategoryChangedCopyWith<$Res> {
  _$CategoryChangedCopyWithImpl(
      CategoryChanged _value, $Res Function(CategoryChanged) _then)
      : super(_value, (v) => _then(v as CategoryChanged));

  @override
  CategoryChanged get _value => super._value as CategoryChanged;

  @override
  $Res call({
    Object category = freezed,
  }) {
    return _then(CategoryChanged(
      category == freezed ? _value.category : category as DeckCategory,
    ));
  }

  @override
  $DeckCategoryCopyWith<$Res> get category {
    if (_value.category == null) {
      return null;
    }
    return $DeckCategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

class _$CategoryChanged implements CategoryChanged {
  _$CategoryChanged(this.category) : assert(category != null);

  @override
  final DeckCategory category;

  @override
  String toString() {
    return 'AddDeckEvent.categoryChanged(category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CategoryChanged &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(category);

  @override
  $CategoryChangedCopyWith<CategoryChanged> get copyWith =>
      _$CategoryChangedCopyWithImpl<CategoryChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initFromOnline(),
    @required Result titleChanged(String titleStr),
    @required Result descriptionChanged(String descStr),
    @required Result avatarChanged(ImageFile avatar),
    @required Result changePrivacy(),
    @required Result quickTrainStateChanged(),
    @required Result categoryChanged(DeckCategory category),
    @required Result switchEditStatus(),
    @required Result saveChanges(),
    @required Result deleteDeck(),
    @required Result updateCards(List<Card> cards),
  }) {
    assert(initFromOnline != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(changePrivacy != null);
    assert(quickTrainStateChanged != null);
    assert(categoryChanged != null);
    assert(switchEditStatus != null);
    assert(saveChanges != null);
    assert(deleteDeck != null);
    assert(updateCards != null);
    return categoryChanged(category);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initFromOnline(),
    Result titleChanged(String titleStr),
    Result descriptionChanged(String descStr),
    Result avatarChanged(ImageFile avatar),
    Result changePrivacy(),
    Result quickTrainStateChanged(),
    Result categoryChanged(DeckCategory category),
    Result switchEditStatus(),
    Result saveChanges(),
    Result deleteDeck(),
    Result updateCards(List<Card> cards),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (categoryChanged != null) {
      return categoryChanged(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initFromOnline(InitFromOnline value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result avatarChanged(AvatarChanged value),
    @required Result changePrivacy(PrivacyChanged value),
    @required Result quickTrainStateChanged(QuickTrainStateChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result switchEditStatus(SwitchEditState value),
    @required Result saveChanges(SaveChanges value),
    @required Result deleteDeck(DeleteDeck value),
    @required Result updateCards(UpdateCards value),
  }) {
    assert(initFromOnline != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(changePrivacy != null);
    assert(quickTrainStateChanged != null);
    assert(categoryChanged != null);
    assert(switchEditStatus != null);
    assert(saveChanges != null);
    assert(deleteDeck != null);
    assert(updateCards != null);
    return categoryChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initFromOnline(InitFromOnline value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result avatarChanged(AvatarChanged value),
    Result changePrivacy(PrivacyChanged value),
    Result quickTrainStateChanged(QuickTrainStateChanged value),
    Result categoryChanged(CategoryChanged value),
    Result switchEditStatus(SwitchEditState value),
    Result saveChanges(SaveChanges value),
    Result deleteDeck(DeleteDeck value),
    Result updateCards(UpdateCards value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (categoryChanged != null) {
      return categoryChanged(this);
    }
    return orElse();
  }
}

abstract class CategoryChanged implements AddDeckEvent {
  factory CategoryChanged(DeckCategory category) = _$CategoryChanged;

  DeckCategory get category;
  $CategoryChangedCopyWith<CategoryChanged> get copyWith;
}

abstract class $SwitchEditStateCopyWith<$Res> {
  factory $SwitchEditStateCopyWith(
          SwitchEditState value, $Res Function(SwitchEditState) then) =
      _$SwitchEditStateCopyWithImpl<$Res>;
}

class _$SwitchEditStateCopyWithImpl<$Res>
    extends _$AddDeckEventCopyWithImpl<$Res>
    implements $SwitchEditStateCopyWith<$Res> {
  _$SwitchEditStateCopyWithImpl(
      SwitchEditState _value, $Res Function(SwitchEditState) _then)
      : super(_value, (v) => _then(v as SwitchEditState));

  @override
  SwitchEditState get _value => super._value as SwitchEditState;
}

class _$SwitchEditState implements SwitchEditState {
  _$SwitchEditState();

  @override
  String toString() {
    return 'AddDeckEvent.switchEditStatus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SwitchEditState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initFromOnline(),
    @required Result titleChanged(String titleStr),
    @required Result descriptionChanged(String descStr),
    @required Result avatarChanged(ImageFile avatar),
    @required Result changePrivacy(),
    @required Result quickTrainStateChanged(),
    @required Result categoryChanged(DeckCategory category),
    @required Result switchEditStatus(),
    @required Result saveChanges(),
    @required Result deleteDeck(),
    @required Result updateCards(List<Card> cards),
  }) {
    assert(initFromOnline != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(changePrivacy != null);
    assert(quickTrainStateChanged != null);
    assert(categoryChanged != null);
    assert(switchEditStatus != null);
    assert(saveChanges != null);
    assert(deleteDeck != null);
    assert(updateCards != null);
    return switchEditStatus();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initFromOnline(),
    Result titleChanged(String titleStr),
    Result descriptionChanged(String descStr),
    Result avatarChanged(ImageFile avatar),
    Result changePrivacy(),
    Result quickTrainStateChanged(),
    Result categoryChanged(DeckCategory category),
    Result switchEditStatus(),
    Result saveChanges(),
    Result deleteDeck(),
    Result updateCards(List<Card> cards),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (switchEditStatus != null) {
      return switchEditStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initFromOnline(InitFromOnline value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result avatarChanged(AvatarChanged value),
    @required Result changePrivacy(PrivacyChanged value),
    @required Result quickTrainStateChanged(QuickTrainStateChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result switchEditStatus(SwitchEditState value),
    @required Result saveChanges(SaveChanges value),
    @required Result deleteDeck(DeleteDeck value),
    @required Result updateCards(UpdateCards value),
  }) {
    assert(initFromOnline != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(changePrivacy != null);
    assert(quickTrainStateChanged != null);
    assert(categoryChanged != null);
    assert(switchEditStatus != null);
    assert(saveChanges != null);
    assert(deleteDeck != null);
    assert(updateCards != null);
    return switchEditStatus(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initFromOnline(InitFromOnline value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result avatarChanged(AvatarChanged value),
    Result changePrivacy(PrivacyChanged value),
    Result quickTrainStateChanged(QuickTrainStateChanged value),
    Result categoryChanged(CategoryChanged value),
    Result switchEditStatus(SwitchEditState value),
    Result saveChanges(SaveChanges value),
    Result deleteDeck(DeleteDeck value),
    Result updateCards(UpdateCards value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (switchEditStatus != null) {
      return switchEditStatus(this);
    }
    return orElse();
  }
}

abstract class SwitchEditState implements AddDeckEvent {
  factory SwitchEditState() = _$SwitchEditState;
}

abstract class $SaveChangesCopyWith<$Res> {
  factory $SaveChangesCopyWith(
          SaveChanges value, $Res Function(SaveChanges) then) =
      _$SaveChangesCopyWithImpl<$Res>;
}

class _$SaveChangesCopyWithImpl<$Res> extends _$AddDeckEventCopyWithImpl<$Res>
    implements $SaveChangesCopyWith<$Res> {
  _$SaveChangesCopyWithImpl(
      SaveChanges _value, $Res Function(SaveChanges) _then)
      : super(_value, (v) => _then(v as SaveChanges));

  @override
  SaveChanges get _value => super._value as SaveChanges;
}

class _$SaveChanges implements SaveChanges {
  _$SaveChanges();

  @override
  String toString() {
    return 'AddDeckEvent.saveChanges()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SaveChanges);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initFromOnline(),
    @required Result titleChanged(String titleStr),
    @required Result descriptionChanged(String descStr),
    @required Result avatarChanged(ImageFile avatar),
    @required Result changePrivacy(),
    @required Result quickTrainStateChanged(),
    @required Result categoryChanged(DeckCategory category),
    @required Result switchEditStatus(),
    @required Result saveChanges(),
    @required Result deleteDeck(),
    @required Result updateCards(List<Card> cards),
  }) {
    assert(initFromOnline != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(changePrivacy != null);
    assert(quickTrainStateChanged != null);
    assert(categoryChanged != null);
    assert(switchEditStatus != null);
    assert(saveChanges != null);
    assert(deleteDeck != null);
    assert(updateCards != null);
    return saveChanges();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initFromOnline(),
    Result titleChanged(String titleStr),
    Result descriptionChanged(String descStr),
    Result avatarChanged(ImageFile avatar),
    Result changePrivacy(),
    Result quickTrainStateChanged(),
    Result categoryChanged(DeckCategory category),
    Result switchEditStatus(),
    Result saveChanges(),
    Result deleteDeck(),
    Result updateCards(List<Card> cards),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saveChanges != null) {
      return saveChanges();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initFromOnline(InitFromOnline value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result avatarChanged(AvatarChanged value),
    @required Result changePrivacy(PrivacyChanged value),
    @required Result quickTrainStateChanged(QuickTrainStateChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result switchEditStatus(SwitchEditState value),
    @required Result saveChanges(SaveChanges value),
    @required Result deleteDeck(DeleteDeck value),
    @required Result updateCards(UpdateCards value),
  }) {
    assert(initFromOnline != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(changePrivacy != null);
    assert(quickTrainStateChanged != null);
    assert(categoryChanged != null);
    assert(switchEditStatus != null);
    assert(saveChanges != null);
    assert(deleteDeck != null);
    assert(updateCards != null);
    return saveChanges(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initFromOnline(InitFromOnline value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result avatarChanged(AvatarChanged value),
    Result changePrivacy(PrivacyChanged value),
    Result quickTrainStateChanged(QuickTrainStateChanged value),
    Result categoryChanged(CategoryChanged value),
    Result switchEditStatus(SwitchEditState value),
    Result saveChanges(SaveChanges value),
    Result deleteDeck(DeleteDeck value),
    Result updateCards(UpdateCards value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saveChanges != null) {
      return saveChanges(this);
    }
    return orElse();
  }
}

abstract class SaveChanges implements AddDeckEvent {
  factory SaveChanges() = _$SaveChanges;
}

abstract class $DeleteDeckCopyWith<$Res> {
  factory $DeleteDeckCopyWith(
          DeleteDeck value, $Res Function(DeleteDeck) then) =
      _$DeleteDeckCopyWithImpl<$Res>;
}

class _$DeleteDeckCopyWithImpl<$Res> extends _$AddDeckEventCopyWithImpl<$Res>
    implements $DeleteDeckCopyWith<$Res> {
  _$DeleteDeckCopyWithImpl(DeleteDeck _value, $Res Function(DeleteDeck) _then)
      : super(_value, (v) => _then(v as DeleteDeck));

  @override
  DeleteDeck get _value => super._value as DeleteDeck;
}

class _$DeleteDeck implements DeleteDeck {
  _$DeleteDeck();

  @override
  String toString() {
    return 'AddDeckEvent.deleteDeck()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DeleteDeck);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initFromOnline(),
    @required Result titleChanged(String titleStr),
    @required Result descriptionChanged(String descStr),
    @required Result avatarChanged(ImageFile avatar),
    @required Result changePrivacy(),
    @required Result quickTrainStateChanged(),
    @required Result categoryChanged(DeckCategory category),
    @required Result switchEditStatus(),
    @required Result saveChanges(),
    @required Result deleteDeck(),
    @required Result updateCards(List<Card> cards),
  }) {
    assert(initFromOnline != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(changePrivacy != null);
    assert(quickTrainStateChanged != null);
    assert(categoryChanged != null);
    assert(switchEditStatus != null);
    assert(saveChanges != null);
    assert(deleteDeck != null);
    assert(updateCards != null);
    return deleteDeck();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initFromOnline(),
    Result titleChanged(String titleStr),
    Result descriptionChanged(String descStr),
    Result avatarChanged(ImageFile avatar),
    Result changePrivacy(),
    Result quickTrainStateChanged(),
    Result categoryChanged(DeckCategory category),
    Result switchEditStatus(),
    Result saveChanges(),
    Result deleteDeck(),
    Result updateCards(List<Card> cards),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteDeck != null) {
      return deleteDeck();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initFromOnline(InitFromOnline value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result avatarChanged(AvatarChanged value),
    @required Result changePrivacy(PrivacyChanged value),
    @required Result quickTrainStateChanged(QuickTrainStateChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result switchEditStatus(SwitchEditState value),
    @required Result saveChanges(SaveChanges value),
    @required Result deleteDeck(DeleteDeck value),
    @required Result updateCards(UpdateCards value),
  }) {
    assert(initFromOnline != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(changePrivacy != null);
    assert(quickTrainStateChanged != null);
    assert(categoryChanged != null);
    assert(switchEditStatus != null);
    assert(saveChanges != null);
    assert(deleteDeck != null);
    assert(updateCards != null);
    return deleteDeck(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initFromOnline(InitFromOnline value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result avatarChanged(AvatarChanged value),
    Result changePrivacy(PrivacyChanged value),
    Result quickTrainStateChanged(QuickTrainStateChanged value),
    Result categoryChanged(CategoryChanged value),
    Result switchEditStatus(SwitchEditState value),
    Result saveChanges(SaveChanges value),
    Result deleteDeck(DeleteDeck value),
    Result updateCards(UpdateCards value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteDeck != null) {
      return deleteDeck(this);
    }
    return orElse();
  }
}

abstract class DeleteDeck implements AddDeckEvent {
  factory DeleteDeck() = _$DeleteDeck;
}

abstract class $UpdateCardsCopyWith<$Res> {
  factory $UpdateCardsCopyWith(
          UpdateCards value, $Res Function(UpdateCards) then) =
      _$UpdateCardsCopyWithImpl<$Res>;
  $Res call({List<Card> cards});
}

class _$UpdateCardsCopyWithImpl<$Res> extends _$AddDeckEventCopyWithImpl<$Res>
    implements $UpdateCardsCopyWith<$Res> {
  _$UpdateCardsCopyWithImpl(
      UpdateCards _value, $Res Function(UpdateCards) _then)
      : super(_value, (v) => _then(v as UpdateCards));

  @override
  UpdateCards get _value => super._value as UpdateCards;

  @override
  $Res call({
    Object cards = freezed,
  }) {
    return _then(UpdateCards(
      cards: cards == freezed ? _value.cards : cards as List<Card>,
    ));
  }
}

class _$UpdateCards implements UpdateCards {
  _$UpdateCards({@required this.cards}) : assert(cards != null);

  @override
  final List<Card> cards;

  @override
  String toString() {
    return 'AddDeckEvent.updateCards(cards: $cards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateCards &&
            (identical(other.cards, cards) ||
                const DeepCollectionEquality().equals(other.cards, cards)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cards);

  @override
  $UpdateCardsCopyWith<UpdateCards> get copyWith =>
      _$UpdateCardsCopyWithImpl<UpdateCards>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initFromOnline(),
    @required Result titleChanged(String titleStr),
    @required Result descriptionChanged(String descStr),
    @required Result avatarChanged(ImageFile avatar),
    @required Result changePrivacy(),
    @required Result quickTrainStateChanged(),
    @required Result categoryChanged(DeckCategory category),
    @required Result switchEditStatus(),
    @required Result saveChanges(),
    @required Result deleteDeck(),
    @required Result updateCards(List<Card> cards),
  }) {
    assert(initFromOnline != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(changePrivacy != null);
    assert(quickTrainStateChanged != null);
    assert(categoryChanged != null);
    assert(switchEditStatus != null);
    assert(saveChanges != null);
    assert(deleteDeck != null);
    assert(updateCards != null);
    return updateCards(cards);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initFromOnline(),
    Result titleChanged(String titleStr),
    Result descriptionChanged(String descStr),
    Result avatarChanged(ImageFile avatar),
    Result changePrivacy(),
    Result quickTrainStateChanged(),
    Result categoryChanged(DeckCategory category),
    Result switchEditStatus(),
    Result saveChanges(),
    Result deleteDeck(),
    Result updateCards(List<Card> cards),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateCards != null) {
      return updateCards(cards);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initFromOnline(InitFromOnline value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result avatarChanged(AvatarChanged value),
    @required Result changePrivacy(PrivacyChanged value),
    @required Result quickTrainStateChanged(QuickTrainStateChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result switchEditStatus(SwitchEditState value),
    @required Result saveChanges(SaveChanges value),
    @required Result deleteDeck(DeleteDeck value),
    @required Result updateCards(UpdateCards value),
  }) {
    assert(initFromOnline != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(changePrivacy != null);
    assert(quickTrainStateChanged != null);
    assert(categoryChanged != null);
    assert(switchEditStatus != null);
    assert(saveChanges != null);
    assert(deleteDeck != null);
    assert(updateCards != null);
    return updateCards(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initFromOnline(InitFromOnline value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result avatarChanged(AvatarChanged value),
    Result changePrivacy(PrivacyChanged value),
    Result quickTrainStateChanged(QuickTrainStateChanged value),
    Result categoryChanged(CategoryChanged value),
    Result switchEditStatus(SwitchEditState value),
    Result saveChanges(SaveChanges value),
    Result deleteDeck(DeleteDeck value),
    Result updateCards(UpdateCards value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateCards != null) {
      return updateCards(this);
    }
    return orElse();
  }
}

abstract class UpdateCards implements AddDeckEvent {
  factory UpdateCards({@required List<Card> cards}) = _$UpdateCards;

  List<Card> get cards;
  $UpdateCardsCopyWith<UpdateCards> get copyWith;
}
