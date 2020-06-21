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
          bool isShared,
      @required
          CategoryModel category,
      @required
          UserModel author,
      @required
          List<Card> cardsList,
      @required
          Option<Either<StorageFailure<dynamic>, Deck>>
              saveFailureOrSuccessOption,
      @required
          Deck initialDeck}) {
    return _AddDeckState(
      isLoading: isLoading,
      title: title,
      description: description,
      avatar: avatar,
      isShared: isShared,
      category: category,
      author: author,
      cardsList: cardsList,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
      initialDeck: initialDeck,
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
  bool get isShared;
  CategoryModel get category;
  UserModel get author;
  List<Card> get cardsList;
  Option<Either<StorageFailure<dynamic>, Deck>> get saveFailureOrSuccessOption;
  Deck get initialDeck;

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
      bool isShared,
      CategoryModel category,
      UserModel author,
      List<Card> cardsList,
      Option<Either<StorageFailure<dynamic>, Deck>> saveFailureOrSuccessOption,
      Deck initialDeck});

  $DeckCopyWith<$Res> get initialDeck;
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
    Object isShared = freezed,
    Object category = freezed,
    Object author = freezed,
    Object cardsList = freezed,
    Object saveFailureOrSuccessOption = freezed,
    Object initialDeck = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      title: title == freezed ? _value.title : title as DeckTitle,
      description: description == freezed
          ? _value.description
          : description as DeckDescription,
      avatar: avatar == freezed ? _value.avatar : avatar as DeckAvatar,
      isShared: isShared == freezed ? _value.isShared : isShared as bool,
      category:
          category == freezed ? _value.category : category as CategoryModel,
      author: author == freezed ? _value.author : author as UserModel,
      cardsList:
          cardsList == freezed ? _value.cardsList : cardsList as List<Card>,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption
              as Option<Either<StorageFailure<dynamic>, Deck>>,
      initialDeck:
          initialDeck == freezed ? _value.initialDeck : initialDeck as Deck,
    ));
  }

  @override
  $DeckCopyWith<$Res> get initialDeck {
    if (_value.initialDeck == null) {
      return null;
    }
    return $DeckCopyWith<$Res>(_value.initialDeck, (value) {
      return _then(_value.copyWith(initialDeck: value));
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
      bool isShared,
      CategoryModel category,
      UserModel author,
      List<Card> cardsList,
      Option<Either<StorageFailure<dynamic>, Deck>> saveFailureOrSuccessOption,
      Deck initialDeck});

  @override
  $DeckCopyWith<$Res> get initialDeck;
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
    Object isShared = freezed,
    Object category = freezed,
    Object author = freezed,
    Object cardsList = freezed,
    Object saveFailureOrSuccessOption = freezed,
    Object initialDeck = freezed,
  }) {
    return _then(_AddDeckState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      title: title == freezed ? _value.title : title as DeckTitle,
      description: description == freezed
          ? _value.description
          : description as DeckDescription,
      avatar: avatar == freezed ? _value.avatar : avatar as DeckAvatar,
      isShared: isShared == freezed ? _value.isShared : isShared as bool,
      category:
          category == freezed ? _value.category : category as CategoryModel,
      author: author == freezed ? _value.author : author as UserModel,
      cardsList:
          cardsList == freezed ? _value.cardsList : cardsList as List<Card>,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption
              as Option<Either<StorageFailure<dynamic>, Deck>>,
      initialDeck:
          initialDeck == freezed ? _value.initialDeck : initialDeck as Deck,
    ));
  }
}

class _$_AddDeckState implements _AddDeckState {
  const _$_AddDeckState(
      {@required this.isLoading,
      @required this.title,
      @required this.description,
      @required this.avatar,
      @required this.isShared,
      @required this.category,
      @required this.author,
      @required this.cardsList,
      @required this.saveFailureOrSuccessOption,
      @required this.initialDeck})
      : assert(isLoading != null),
        assert(title != null),
        assert(description != null),
        assert(avatar != null),
        assert(isShared != null),
        assert(category != null),
        assert(author != null),
        assert(cardsList != null),
        assert(saveFailureOrSuccessOption != null),
        assert(initialDeck != null);

  @override
  final bool isLoading;
  @override
  final DeckTitle title;
  @override
  final DeckDescription description;
  @override
  final DeckAvatar avatar;
  @override
  final bool isShared;
  @override
  final CategoryModel category;
  @override
  final UserModel author;
  @override
  final List<Card> cardsList;
  @override
  final Option<Either<StorageFailure<dynamic>, Deck>>
      saveFailureOrSuccessOption;
  @override
  final Deck initialDeck;

  @override
  String toString() {
    return 'AddDeckState(isLoading: $isLoading, title: $title, description: $description, avatar: $avatar, isShared: $isShared, category: $category, author: $author, cardsList: $cardsList, saveFailureOrSuccessOption: $saveFailureOrSuccessOption, initialDeck: $initialDeck)';
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
            (identical(other.isShared, isShared) ||
                const DeepCollectionEquality()
                    .equals(other.isShared, isShared)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)) &&
            (identical(other.cardsList, cardsList) ||
                const DeepCollectionEquality()
                    .equals(other.cardsList, cardsList)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)) &&
            (identical(other.initialDeck, initialDeck) ||
                const DeepCollectionEquality()
                    .equals(other.initialDeck, initialDeck)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(avatar) ^
      const DeepCollectionEquality().hash(isShared) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(cardsList) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(initialDeck);

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
          bool isShared,
      @required
          CategoryModel category,
      @required
          UserModel author,
      @required
          List<Card> cardsList,
      @required
          Option<Either<StorageFailure<dynamic>, Deck>>
              saveFailureOrSuccessOption,
      @required
          Deck initialDeck}) = _$_AddDeckState;

  @override
  bool get isLoading;
  @override
  DeckTitle get title;
  @override
  DeckDescription get description;
  @override
  DeckAvatar get avatar;
  @override
  bool get isShared;
  @override
  CategoryModel get category;
  @override
  UserModel get author;
  @override
  List<Card> get cardsList;
  @override
  Option<Either<StorageFailure<dynamic>, Deck>> get saveFailureOrSuccessOption;
  @override
  Deck get initialDeck;
  @override
  _$AddDeckStateCopyWith<_AddDeckState> get copyWith;
}

class _$AddDeckEventTearOff {
  const _$AddDeckEventTearOff();

  InitFromOnline initFromOnline() {
    return InitFromOnline();
  }

  SaveDeckChanges saveChanges() {
    return SaveDeckChanges();
  }

  SaveDraft saveDraft() {
    return SaveDraft();
  }

  DiscardChanges discardChangesAndExit() {
    return DiscardChanges();
  }

  DeleteDeck deleteDeck() {
    return DeleteDeck();
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

  AvatarChanged avatarChanged(String avatar) {
    return AvatarChanged(
      avatar,
    );
  }

  PrivacyChanged privacyChanged(bool isShared) {
    return PrivacyChanged(
      isShared,
    );
  }

  CategoryChanged categoryChanged(CategoryModel category) {
    return CategoryChanged(
      category,
    );
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
    @required Result saveChanges(),
    @required Result saveDraft(),
    @required Result discardChangesAndExit(),
    @required Result deleteDeck(),
    @required Result titleChanged(String titleStr),
    @required Result descriptionChanged(String descStr),
    @required Result avatarChanged(String avatar),
    @required Result privacyChanged(bool isShared),
    @required Result categoryChanged(CategoryModel category),
    @required Result updateCards(List<Card> cards),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initFromOnline(),
    Result saveChanges(),
    Result saveDraft(),
    Result discardChangesAndExit(),
    Result deleteDeck(),
    Result titleChanged(String titleStr),
    Result descriptionChanged(String descStr),
    Result avatarChanged(String avatar),
    Result privacyChanged(bool isShared),
    Result categoryChanged(CategoryModel category),
    Result updateCards(List<Card> cards),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initFromOnline(InitFromOnline value),
    @required Result saveChanges(SaveDeckChanges value),
    @required Result saveDraft(SaveDraft value),
    @required Result discardChangesAndExit(DiscardChanges value),
    @required Result deleteDeck(DeleteDeck value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result avatarChanged(AvatarChanged value),
    @required Result privacyChanged(PrivacyChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result updateCards(UpdateCards value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initFromOnline(InitFromOnline value),
    Result saveChanges(SaveDeckChanges value),
    Result saveDraft(SaveDraft value),
    Result discardChangesAndExit(DiscardChanges value),
    Result deleteDeck(DeleteDeck value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result avatarChanged(AvatarChanged value),
    Result privacyChanged(PrivacyChanged value),
    Result categoryChanged(CategoryChanged value),
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
    @required Result saveChanges(),
    @required Result saveDraft(),
    @required Result discardChangesAndExit(),
    @required Result deleteDeck(),
    @required Result titleChanged(String titleStr),
    @required Result descriptionChanged(String descStr),
    @required Result avatarChanged(String avatar),
    @required Result privacyChanged(bool isShared),
    @required Result categoryChanged(CategoryModel category),
    @required Result updateCards(List<Card> cards),
  }) {
    assert(initFromOnline != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(updateCards != null);
    return initFromOnline();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initFromOnline(),
    Result saveChanges(),
    Result saveDraft(),
    Result discardChangesAndExit(),
    Result deleteDeck(),
    Result titleChanged(String titleStr),
    Result descriptionChanged(String descStr),
    Result avatarChanged(String avatar),
    Result privacyChanged(bool isShared),
    Result categoryChanged(CategoryModel category),
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
    @required Result saveChanges(SaveDeckChanges value),
    @required Result saveDraft(SaveDraft value),
    @required Result discardChangesAndExit(DiscardChanges value),
    @required Result deleteDeck(DeleteDeck value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result avatarChanged(AvatarChanged value),
    @required Result privacyChanged(PrivacyChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result updateCards(UpdateCards value),
  }) {
    assert(initFromOnline != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(updateCards != null);
    return initFromOnline(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initFromOnline(InitFromOnline value),
    Result saveChanges(SaveDeckChanges value),
    Result saveDraft(SaveDraft value),
    Result discardChangesAndExit(DiscardChanges value),
    Result deleteDeck(DeleteDeck value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result avatarChanged(AvatarChanged value),
    Result privacyChanged(PrivacyChanged value),
    Result categoryChanged(CategoryChanged value),
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

abstract class $SaveDeckChangesCopyWith<$Res> {
  factory $SaveDeckChangesCopyWith(
          SaveDeckChanges value, $Res Function(SaveDeckChanges) then) =
      _$SaveDeckChangesCopyWithImpl<$Res>;
}

class _$SaveDeckChangesCopyWithImpl<$Res>
    extends _$AddDeckEventCopyWithImpl<$Res>
    implements $SaveDeckChangesCopyWith<$Res> {
  _$SaveDeckChangesCopyWithImpl(
      SaveDeckChanges _value, $Res Function(SaveDeckChanges) _then)
      : super(_value, (v) => _then(v as SaveDeckChanges));

  @override
  SaveDeckChanges get _value => super._value as SaveDeckChanges;
}

class _$SaveDeckChanges implements SaveDeckChanges {
  _$SaveDeckChanges();

  @override
  String toString() {
    return 'AddDeckEvent.saveChanges()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SaveDeckChanges);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initFromOnline(),
    @required Result saveChanges(),
    @required Result saveDraft(),
    @required Result discardChangesAndExit(),
    @required Result deleteDeck(),
    @required Result titleChanged(String titleStr),
    @required Result descriptionChanged(String descStr),
    @required Result avatarChanged(String avatar),
    @required Result privacyChanged(bool isShared),
    @required Result categoryChanged(CategoryModel category),
    @required Result updateCards(List<Card> cards),
  }) {
    assert(initFromOnline != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(updateCards != null);
    return saveChanges();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initFromOnline(),
    Result saveChanges(),
    Result saveDraft(),
    Result discardChangesAndExit(),
    Result deleteDeck(),
    Result titleChanged(String titleStr),
    Result descriptionChanged(String descStr),
    Result avatarChanged(String avatar),
    Result privacyChanged(bool isShared),
    Result categoryChanged(CategoryModel category),
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
    @required Result saveChanges(SaveDeckChanges value),
    @required Result saveDraft(SaveDraft value),
    @required Result discardChangesAndExit(DiscardChanges value),
    @required Result deleteDeck(DeleteDeck value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result avatarChanged(AvatarChanged value),
    @required Result privacyChanged(PrivacyChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result updateCards(UpdateCards value),
  }) {
    assert(initFromOnline != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(updateCards != null);
    return saveChanges(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initFromOnline(InitFromOnline value),
    Result saveChanges(SaveDeckChanges value),
    Result saveDraft(SaveDraft value),
    Result discardChangesAndExit(DiscardChanges value),
    Result deleteDeck(DeleteDeck value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result avatarChanged(AvatarChanged value),
    Result privacyChanged(PrivacyChanged value),
    Result categoryChanged(CategoryChanged value),
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

abstract class SaveDeckChanges implements AddDeckEvent {
  factory SaveDeckChanges() = _$SaveDeckChanges;
}

abstract class $SaveDraftCopyWith<$Res> {
  factory $SaveDraftCopyWith(SaveDraft value, $Res Function(SaveDraft) then) =
      _$SaveDraftCopyWithImpl<$Res>;
}

class _$SaveDraftCopyWithImpl<$Res> extends _$AddDeckEventCopyWithImpl<$Res>
    implements $SaveDraftCopyWith<$Res> {
  _$SaveDraftCopyWithImpl(SaveDraft _value, $Res Function(SaveDraft) _then)
      : super(_value, (v) => _then(v as SaveDraft));

  @override
  SaveDraft get _value => super._value as SaveDraft;
}

class _$SaveDraft implements SaveDraft {
  _$SaveDraft();

  @override
  String toString() {
    return 'AddDeckEvent.saveDraft()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SaveDraft);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initFromOnline(),
    @required Result saveChanges(),
    @required Result saveDraft(),
    @required Result discardChangesAndExit(),
    @required Result deleteDeck(),
    @required Result titleChanged(String titleStr),
    @required Result descriptionChanged(String descStr),
    @required Result avatarChanged(String avatar),
    @required Result privacyChanged(bool isShared),
    @required Result categoryChanged(CategoryModel category),
    @required Result updateCards(List<Card> cards),
  }) {
    assert(initFromOnline != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(updateCards != null);
    return saveDraft();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initFromOnline(),
    Result saveChanges(),
    Result saveDraft(),
    Result discardChangesAndExit(),
    Result deleteDeck(),
    Result titleChanged(String titleStr),
    Result descriptionChanged(String descStr),
    Result avatarChanged(String avatar),
    Result privacyChanged(bool isShared),
    Result categoryChanged(CategoryModel category),
    Result updateCards(List<Card> cards),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saveDraft != null) {
      return saveDraft();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initFromOnline(InitFromOnline value),
    @required Result saveChanges(SaveDeckChanges value),
    @required Result saveDraft(SaveDraft value),
    @required Result discardChangesAndExit(DiscardChanges value),
    @required Result deleteDeck(DeleteDeck value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result avatarChanged(AvatarChanged value),
    @required Result privacyChanged(PrivacyChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result updateCards(UpdateCards value),
  }) {
    assert(initFromOnline != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(updateCards != null);
    return saveDraft(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initFromOnline(InitFromOnline value),
    Result saveChanges(SaveDeckChanges value),
    Result saveDraft(SaveDraft value),
    Result discardChangesAndExit(DiscardChanges value),
    Result deleteDeck(DeleteDeck value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result avatarChanged(AvatarChanged value),
    Result privacyChanged(PrivacyChanged value),
    Result categoryChanged(CategoryChanged value),
    Result updateCards(UpdateCards value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saveDraft != null) {
      return saveDraft(this);
    }
    return orElse();
  }
}

abstract class SaveDraft implements AddDeckEvent {
  factory SaveDraft() = _$SaveDraft;
}

abstract class $DiscardChangesCopyWith<$Res> {
  factory $DiscardChangesCopyWith(
          DiscardChanges value, $Res Function(DiscardChanges) then) =
      _$DiscardChangesCopyWithImpl<$Res>;
}

class _$DiscardChangesCopyWithImpl<$Res>
    extends _$AddDeckEventCopyWithImpl<$Res>
    implements $DiscardChangesCopyWith<$Res> {
  _$DiscardChangesCopyWithImpl(
      DiscardChanges _value, $Res Function(DiscardChanges) _then)
      : super(_value, (v) => _then(v as DiscardChanges));

  @override
  DiscardChanges get _value => super._value as DiscardChanges;
}

class _$DiscardChanges implements DiscardChanges {
  _$DiscardChanges();

  @override
  String toString() {
    return 'AddDeckEvent.discardChangesAndExit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DiscardChanges);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initFromOnline(),
    @required Result saveChanges(),
    @required Result saveDraft(),
    @required Result discardChangesAndExit(),
    @required Result deleteDeck(),
    @required Result titleChanged(String titleStr),
    @required Result descriptionChanged(String descStr),
    @required Result avatarChanged(String avatar),
    @required Result privacyChanged(bool isShared),
    @required Result categoryChanged(CategoryModel category),
    @required Result updateCards(List<Card> cards),
  }) {
    assert(initFromOnline != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(updateCards != null);
    return discardChangesAndExit();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initFromOnline(),
    Result saveChanges(),
    Result saveDraft(),
    Result discardChangesAndExit(),
    Result deleteDeck(),
    Result titleChanged(String titleStr),
    Result descriptionChanged(String descStr),
    Result avatarChanged(String avatar),
    Result privacyChanged(bool isShared),
    Result categoryChanged(CategoryModel category),
    Result updateCards(List<Card> cards),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (discardChangesAndExit != null) {
      return discardChangesAndExit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initFromOnline(InitFromOnline value),
    @required Result saveChanges(SaveDeckChanges value),
    @required Result saveDraft(SaveDraft value),
    @required Result discardChangesAndExit(DiscardChanges value),
    @required Result deleteDeck(DeleteDeck value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result avatarChanged(AvatarChanged value),
    @required Result privacyChanged(PrivacyChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result updateCards(UpdateCards value),
  }) {
    assert(initFromOnline != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(updateCards != null);
    return discardChangesAndExit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initFromOnline(InitFromOnline value),
    Result saveChanges(SaveDeckChanges value),
    Result saveDraft(SaveDraft value),
    Result discardChangesAndExit(DiscardChanges value),
    Result deleteDeck(DeleteDeck value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result avatarChanged(AvatarChanged value),
    Result privacyChanged(PrivacyChanged value),
    Result categoryChanged(CategoryChanged value),
    Result updateCards(UpdateCards value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (discardChangesAndExit != null) {
      return discardChangesAndExit(this);
    }
    return orElse();
  }
}

abstract class DiscardChanges implements AddDeckEvent {
  factory DiscardChanges() = _$DiscardChanges;
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
    @required Result saveChanges(),
    @required Result saveDraft(),
    @required Result discardChangesAndExit(),
    @required Result deleteDeck(),
    @required Result titleChanged(String titleStr),
    @required Result descriptionChanged(String descStr),
    @required Result avatarChanged(String avatar),
    @required Result privacyChanged(bool isShared),
    @required Result categoryChanged(CategoryModel category),
    @required Result updateCards(List<Card> cards),
  }) {
    assert(initFromOnline != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(updateCards != null);
    return deleteDeck();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initFromOnline(),
    Result saveChanges(),
    Result saveDraft(),
    Result discardChangesAndExit(),
    Result deleteDeck(),
    Result titleChanged(String titleStr),
    Result descriptionChanged(String descStr),
    Result avatarChanged(String avatar),
    Result privacyChanged(bool isShared),
    Result categoryChanged(CategoryModel category),
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
    @required Result saveChanges(SaveDeckChanges value),
    @required Result saveDraft(SaveDraft value),
    @required Result discardChangesAndExit(DiscardChanges value),
    @required Result deleteDeck(DeleteDeck value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result avatarChanged(AvatarChanged value),
    @required Result privacyChanged(PrivacyChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result updateCards(UpdateCards value),
  }) {
    assert(initFromOnline != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(updateCards != null);
    return deleteDeck(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initFromOnline(InitFromOnline value),
    Result saveChanges(SaveDeckChanges value),
    Result saveDraft(SaveDraft value),
    Result discardChangesAndExit(DiscardChanges value),
    Result deleteDeck(DeleteDeck value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result avatarChanged(AvatarChanged value),
    Result privacyChanged(PrivacyChanged value),
    Result categoryChanged(CategoryChanged value),
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
    @required Result saveChanges(),
    @required Result saveDraft(),
    @required Result discardChangesAndExit(),
    @required Result deleteDeck(),
    @required Result titleChanged(String titleStr),
    @required Result descriptionChanged(String descStr),
    @required Result avatarChanged(String avatar),
    @required Result privacyChanged(bool isShared),
    @required Result categoryChanged(CategoryModel category),
    @required Result updateCards(List<Card> cards),
  }) {
    assert(initFromOnline != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(updateCards != null);
    return titleChanged(titleStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initFromOnline(),
    Result saveChanges(),
    Result saveDraft(),
    Result discardChangesAndExit(),
    Result deleteDeck(),
    Result titleChanged(String titleStr),
    Result descriptionChanged(String descStr),
    Result avatarChanged(String avatar),
    Result privacyChanged(bool isShared),
    Result categoryChanged(CategoryModel category),
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
    @required Result saveChanges(SaveDeckChanges value),
    @required Result saveDraft(SaveDraft value),
    @required Result discardChangesAndExit(DiscardChanges value),
    @required Result deleteDeck(DeleteDeck value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result avatarChanged(AvatarChanged value),
    @required Result privacyChanged(PrivacyChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result updateCards(UpdateCards value),
  }) {
    assert(initFromOnline != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(updateCards != null);
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initFromOnline(InitFromOnline value),
    Result saveChanges(SaveDeckChanges value),
    Result saveDraft(SaveDraft value),
    Result discardChangesAndExit(DiscardChanges value),
    Result deleteDeck(DeleteDeck value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result avatarChanged(AvatarChanged value),
    Result privacyChanged(PrivacyChanged value),
    Result categoryChanged(CategoryChanged value),
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
    @required Result saveChanges(),
    @required Result saveDraft(),
    @required Result discardChangesAndExit(),
    @required Result deleteDeck(),
    @required Result titleChanged(String titleStr),
    @required Result descriptionChanged(String descStr),
    @required Result avatarChanged(String avatar),
    @required Result privacyChanged(bool isShared),
    @required Result categoryChanged(CategoryModel category),
    @required Result updateCards(List<Card> cards),
  }) {
    assert(initFromOnline != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(updateCards != null);
    return descriptionChanged(descStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initFromOnline(),
    Result saveChanges(),
    Result saveDraft(),
    Result discardChangesAndExit(),
    Result deleteDeck(),
    Result titleChanged(String titleStr),
    Result descriptionChanged(String descStr),
    Result avatarChanged(String avatar),
    Result privacyChanged(bool isShared),
    Result categoryChanged(CategoryModel category),
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
    @required Result saveChanges(SaveDeckChanges value),
    @required Result saveDraft(SaveDraft value),
    @required Result discardChangesAndExit(DiscardChanges value),
    @required Result deleteDeck(DeleteDeck value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result avatarChanged(AvatarChanged value),
    @required Result privacyChanged(PrivacyChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result updateCards(UpdateCards value),
  }) {
    assert(initFromOnline != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(updateCards != null);
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initFromOnline(InitFromOnline value),
    Result saveChanges(SaveDeckChanges value),
    Result saveDraft(SaveDraft value),
    Result discardChangesAndExit(DiscardChanges value),
    Result deleteDeck(DeleteDeck value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result avatarChanged(AvatarChanged value),
    Result privacyChanged(PrivacyChanged value),
    Result categoryChanged(CategoryChanged value),
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
  $Res call({String avatar});
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
      avatar == freezed ? _value.avatar : avatar as String,
    ));
  }
}

class _$AvatarChanged implements AvatarChanged {
  _$AvatarChanged(this.avatar) : assert(avatar != null);

  @override
  final String avatar;

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
    @required Result saveChanges(),
    @required Result saveDraft(),
    @required Result discardChangesAndExit(),
    @required Result deleteDeck(),
    @required Result titleChanged(String titleStr),
    @required Result descriptionChanged(String descStr),
    @required Result avatarChanged(String avatar),
    @required Result privacyChanged(bool isShared),
    @required Result categoryChanged(CategoryModel category),
    @required Result updateCards(List<Card> cards),
  }) {
    assert(initFromOnline != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(updateCards != null);
    return avatarChanged(avatar);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initFromOnline(),
    Result saveChanges(),
    Result saveDraft(),
    Result discardChangesAndExit(),
    Result deleteDeck(),
    Result titleChanged(String titleStr),
    Result descriptionChanged(String descStr),
    Result avatarChanged(String avatar),
    Result privacyChanged(bool isShared),
    Result categoryChanged(CategoryModel category),
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
    @required Result saveChanges(SaveDeckChanges value),
    @required Result saveDraft(SaveDraft value),
    @required Result discardChangesAndExit(DiscardChanges value),
    @required Result deleteDeck(DeleteDeck value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result avatarChanged(AvatarChanged value),
    @required Result privacyChanged(PrivacyChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result updateCards(UpdateCards value),
  }) {
    assert(initFromOnline != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(updateCards != null);
    return avatarChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initFromOnline(InitFromOnline value),
    Result saveChanges(SaveDeckChanges value),
    Result saveDraft(SaveDraft value),
    Result discardChangesAndExit(DiscardChanges value),
    Result deleteDeck(DeleteDeck value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result avatarChanged(AvatarChanged value),
    Result privacyChanged(PrivacyChanged value),
    Result categoryChanged(CategoryChanged value),
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
  factory AvatarChanged(String avatar) = _$AvatarChanged;

  String get avatar;
  $AvatarChangedCopyWith<AvatarChanged> get copyWith;
}

abstract class $PrivacyChangedCopyWith<$Res> {
  factory $PrivacyChangedCopyWith(
          PrivacyChanged value, $Res Function(PrivacyChanged) then) =
      _$PrivacyChangedCopyWithImpl<$Res>;
  $Res call({bool isShared});
}

class _$PrivacyChangedCopyWithImpl<$Res>
    extends _$AddDeckEventCopyWithImpl<$Res>
    implements $PrivacyChangedCopyWith<$Res> {
  _$PrivacyChangedCopyWithImpl(
      PrivacyChanged _value, $Res Function(PrivacyChanged) _then)
      : super(_value, (v) => _then(v as PrivacyChanged));

  @override
  PrivacyChanged get _value => super._value as PrivacyChanged;

  @override
  $Res call({
    Object isShared = freezed,
  }) {
    return _then(PrivacyChanged(
      isShared == freezed ? _value.isShared : isShared as bool,
    ));
  }
}

class _$PrivacyChanged implements PrivacyChanged {
  _$PrivacyChanged(this.isShared) : assert(isShared != null);

  @override
  final bool isShared;

  @override
  String toString() {
    return 'AddDeckEvent.privacyChanged(isShared: $isShared)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PrivacyChanged &&
            (identical(other.isShared, isShared) ||
                const DeepCollectionEquality()
                    .equals(other.isShared, isShared)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isShared);

  @override
  $PrivacyChangedCopyWith<PrivacyChanged> get copyWith =>
      _$PrivacyChangedCopyWithImpl<PrivacyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initFromOnline(),
    @required Result saveChanges(),
    @required Result saveDraft(),
    @required Result discardChangesAndExit(),
    @required Result deleteDeck(),
    @required Result titleChanged(String titleStr),
    @required Result descriptionChanged(String descStr),
    @required Result avatarChanged(String avatar),
    @required Result privacyChanged(bool isShared),
    @required Result categoryChanged(CategoryModel category),
    @required Result updateCards(List<Card> cards),
  }) {
    assert(initFromOnline != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(updateCards != null);
    return privacyChanged(isShared);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initFromOnline(),
    Result saveChanges(),
    Result saveDraft(),
    Result discardChangesAndExit(),
    Result deleteDeck(),
    Result titleChanged(String titleStr),
    Result descriptionChanged(String descStr),
    Result avatarChanged(String avatar),
    Result privacyChanged(bool isShared),
    Result categoryChanged(CategoryModel category),
    Result updateCards(List<Card> cards),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (privacyChanged != null) {
      return privacyChanged(isShared);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initFromOnline(InitFromOnline value),
    @required Result saveChanges(SaveDeckChanges value),
    @required Result saveDraft(SaveDraft value),
    @required Result discardChangesAndExit(DiscardChanges value),
    @required Result deleteDeck(DeleteDeck value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result avatarChanged(AvatarChanged value),
    @required Result privacyChanged(PrivacyChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result updateCards(UpdateCards value),
  }) {
    assert(initFromOnline != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(updateCards != null);
    return privacyChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initFromOnline(InitFromOnline value),
    Result saveChanges(SaveDeckChanges value),
    Result saveDraft(SaveDraft value),
    Result discardChangesAndExit(DiscardChanges value),
    Result deleteDeck(DeleteDeck value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result avatarChanged(AvatarChanged value),
    Result privacyChanged(PrivacyChanged value),
    Result categoryChanged(CategoryChanged value),
    Result updateCards(UpdateCards value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (privacyChanged != null) {
      return privacyChanged(this);
    }
    return orElse();
  }
}

abstract class PrivacyChanged implements AddDeckEvent {
  factory PrivacyChanged(bool isShared) = _$PrivacyChanged;

  bool get isShared;
  $PrivacyChangedCopyWith<PrivacyChanged> get copyWith;
}

abstract class $CategoryChangedCopyWith<$Res> {
  factory $CategoryChangedCopyWith(
          CategoryChanged value, $Res Function(CategoryChanged) then) =
      _$CategoryChangedCopyWithImpl<$Res>;
  $Res call({CategoryModel category});
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
      category == freezed ? _value.category : category as CategoryModel,
    ));
  }
}

class _$CategoryChanged implements CategoryChanged {
  _$CategoryChanged(this.category) : assert(category != null);

  @override
  final CategoryModel category;

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
    @required Result saveChanges(),
    @required Result saveDraft(),
    @required Result discardChangesAndExit(),
    @required Result deleteDeck(),
    @required Result titleChanged(String titleStr),
    @required Result descriptionChanged(String descStr),
    @required Result avatarChanged(String avatar),
    @required Result privacyChanged(bool isShared),
    @required Result categoryChanged(CategoryModel category),
    @required Result updateCards(List<Card> cards),
  }) {
    assert(initFromOnline != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(updateCards != null);
    return categoryChanged(category);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initFromOnline(),
    Result saveChanges(),
    Result saveDraft(),
    Result discardChangesAndExit(),
    Result deleteDeck(),
    Result titleChanged(String titleStr),
    Result descriptionChanged(String descStr),
    Result avatarChanged(String avatar),
    Result privacyChanged(bool isShared),
    Result categoryChanged(CategoryModel category),
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
    @required Result saveChanges(SaveDeckChanges value),
    @required Result saveDraft(SaveDraft value),
    @required Result discardChangesAndExit(DiscardChanges value),
    @required Result deleteDeck(DeleteDeck value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result avatarChanged(AvatarChanged value),
    @required Result privacyChanged(PrivacyChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result updateCards(UpdateCards value),
  }) {
    assert(initFromOnline != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(updateCards != null);
    return categoryChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initFromOnline(InitFromOnline value),
    Result saveChanges(SaveDeckChanges value),
    Result saveDraft(SaveDraft value),
    Result discardChangesAndExit(DiscardChanges value),
    Result deleteDeck(DeleteDeck value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result avatarChanged(AvatarChanged value),
    Result privacyChanged(PrivacyChanged value),
    Result categoryChanged(CategoryChanged value),
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
  factory CategoryChanged(CategoryModel category) = _$CategoryChanged;

  CategoryModel get category;
  $CategoryChangedCopyWith<CategoryChanged> get copyWith;
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
    @required Result saveChanges(),
    @required Result saveDraft(),
    @required Result discardChangesAndExit(),
    @required Result deleteDeck(),
    @required Result titleChanged(String titleStr),
    @required Result descriptionChanged(String descStr),
    @required Result avatarChanged(String avatar),
    @required Result privacyChanged(bool isShared),
    @required Result categoryChanged(CategoryModel category),
    @required Result updateCards(List<Card> cards),
  }) {
    assert(initFromOnline != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(updateCards != null);
    return updateCards(cards);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initFromOnline(),
    Result saveChanges(),
    Result saveDraft(),
    Result discardChangesAndExit(),
    Result deleteDeck(),
    Result titleChanged(String titleStr),
    Result descriptionChanged(String descStr),
    Result avatarChanged(String avatar),
    Result privacyChanged(bool isShared),
    Result categoryChanged(CategoryModel category),
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
    @required Result saveChanges(SaveDeckChanges value),
    @required Result saveDraft(SaveDraft value),
    @required Result discardChangesAndExit(DiscardChanges value),
    @required Result deleteDeck(DeleteDeck value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result avatarChanged(AvatarChanged value),
    @required Result privacyChanged(PrivacyChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result updateCards(UpdateCards value),
  }) {
    assert(initFromOnline != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(updateCards != null);
    return updateCards(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initFromOnline(InitFromOnline value),
    Result saveChanges(SaveDeckChanges value),
    Result saveDraft(SaveDraft value),
    Result discardChangesAndExit(DiscardChanges value),
    Result deleteDeck(DeleteDeck value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result avatarChanged(AvatarChanged value),
    Result privacyChanged(PrivacyChanged value),
    Result categoryChanged(CategoryChanged value),
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
