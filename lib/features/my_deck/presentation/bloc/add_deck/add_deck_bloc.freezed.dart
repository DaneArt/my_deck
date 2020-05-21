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
          List<Card> cardslist,
      @required
          Option<Either<StorageFailure<dynamic>, Deck>>
              saveFailureOrSuccessOption}) {
    return _AddDeckState(
      title: title,
      description: description,
      avatar: avatar,
      isShared: isShared,
      category: category,
      author: author,
      cardslist: cardslist,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $AddDeckState = _$AddDeckStateTearOff();

mixin _$AddDeckState {
  DeckTitle get title;
  DeckDescription get description;
  DeckAvatar get avatar;
  bool get isShared;
  CategoryModel get category;
  UserModel get author;
  List<Card> get cardslist;
  Option<Either<StorageFailure<dynamic>, Deck>> get saveFailureOrSuccessOption;

  $AddDeckStateCopyWith<AddDeckState> get copyWith;
}

abstract class $AddDeckStateCopyWith<$Res> {
  factory $AddDeckStateCopyWith(
          AddDeckState value, $Res Function(AddDeckState) then) =
      _$AddDeckStateCopyWithImpl<$Res>;
  $Res call(
      {DeckTitle title,
      DeckDescription description,
      DeckAvatar avatar,
      bool isShared,
      CategoryModel category,
      UserModel author,
      List<Card> cardslist,
      Option<Either<StorageFailure<dynamic>, Deck>>
          saveFailureOrSuccessOption});
}

class _$AddDeckStateCopyWithImpl<$Res> implements $AddDeckStateCopyWith<$Res> {
  _$AddDeckStateCopyWithImpl(this._value, this._then);

  final AddDeckState _value;
  // ignore: unused_field
  final $Res Function(AddDeckState) _then;

  @override
  $Res call({
    Object title = freezed,
    Object description = freezed,
    Object avatar = freezed,
    Object isShared = freezed,
    Object category = freezed,
    Object author = freezed,
    Object cardslist = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as DeckTitle,
      description: description == freezed
          ? _value.description
          : description as DeckDescription,
      avatar: avatar == freezed ? _value.avatar : avatar as DeckAvatar,
      isShared: isShared == freezed ? _value.isShared : isShared as bool,
      category:
          category == freezed ? _value.category : category as CategoryModel,
      author: author == freezed ? _value.author : author as UserModel,
      cardslist:
          cardslist == freezed ? _value.cardslist : cardslist as List<Card>,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption
              as Option<Either<StorageFailure<dynamic>, Deck>>,
    ));
  }
}

abstract class _$AddDeckStateCopyWith<$Res>
    implements $AddDeckStateCopyWith<$Res> {
  factory _$AddDeckStateCopyWith(
          _AddDeckState value, $Res Function(_AddDeckState) then) =
      __$AddDeckStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {DeckTitle title,
      DeckDescription description,
      DeckAvatar avatar,
      bool isShared,
      CategoryModel category,
      UserModel author,
      List<Card> cardslist,
      Option<Either<StorageFailure<dynamic>, Deck>>
          saveFailureOrSuccessOption});
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
    Object title = freezed,
    Object description = freezed,
    Object avatar = freezed,
    Object isShared = freezed,
    Object category = freezed,
    Object author = freezed,
    Object cardslist = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_AddDeckState(
      title: title == freezed ? _value.title : title as DeckTitle,
      description: description == freezed
          ? _value.description
          : description as DeckDescription,
      avatar: avatar == freezed ? _value.avatar : avatar as DeckAvatar,
      isShared: isShared == freezed ? _value.isShared : isShared as bool,
      category:
          category == freezed ? _value.category : category as CategoryModel,
      author: author == freezed ? _value.author : author as UserModel,
      cardslist:
          cardslist == freezed ? _value.cardslist : cardslist as List<Card>,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption
              as Option<Either<StorageFailure<dynamic>, Deck>>,
    ));
  }
}

class _$_AddDeckState implements _AddDeckState {
  const _$_AddDeckState(
      {@required this.title,
      @required this.description,
      @required this.avatar,
      @required this.isShared,
      @required this.category,
      @required this.author,
      @required this.cardslist,
      @required this.saveFailureOrSuccessOption})
      : assert(title != null),
        assert(description != null),
        assert(avatar != null),
        assert(isShared != null),
        assert(category != null),
        assert(author != null),
        assert(cardslist != null),
        assert(saveFailureOrSuccessOption != null);

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
  final List<Card> cardslist;
  @override
  final Option<Either<StorageFailure<dynamic>, Deck>>
      saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'AddDeckState(title: $title, description: $description, avatar: $avatar, isShared: $isShared, category: $category, author: $author, cardslist: $cardslist, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddDeckState &&
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
            (identical(other.cardslist, cardslist) ||
                const DeepCollectionEquality()
                    .equals(other.cardslist, cardslist)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(avatar) ^
      const DeepCollectionEquality().hash(isShared) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(cardslist) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @override
  _$AddDeckStateCopyWith<_AddDeckState> get copyWith =>
      __$AddDeckStateCopyWithImpl<_AddDeckState>(this, _$identity);
}

abstract class _AddDeckState implements AddDeckState {
  const factory _AddDeckState(
      {@required
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
          List<Card> cardslist,
      @required
          Option<Either<StorageFailure<dynamic>, Deck>>
              saveFailureOrSuccessOption}) = _$_AddDeckState;

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
  List<Card> get cardslist;
  @override
  Option<Either<StorageFailure<dynamic>, Deck>> get saveFailureOrSuccessOption;
  @override
  _$AddDeckStateCopyWith<_AddDeckState> get copyWith;
}

class _$AddDeckEventTearOff {
  const _$AddDeckEventTearOff();

  InitWithDeck initWithDeck(Deck deck) {
    return InitWithDeck(
      deck,
    );
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

  AvatarChanged avatarChanged(File avatar) {
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

  CardChanged cardChanged(Card card) {
    return CardChanged(
      card,
    );
  }

  CardAdded cardAdded(Card card) {
    return CardAdded(
      card,
    );
  }

  CardDeleted cardDeleted(Card card) {
    return CardDeleted(
      card,
    );
  }
}

// ignore: unused_element
const $AddDeckEvent = _$AddDeckEventTearOff();

mixin _$AddDeckEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initWithDeck(Deck deck),
    @required Result saveChanges(),
    @required Result saveDraft(),
    @required Result discardChangesAndExit(),
    @required Result deleteDeck(),
    @required Result titleChanged(String titleStr),
    @required Result descriptionChanged(String descStr),
    @required Result avatarChanged(File avatar),
    @required Result privacyChanged(bool isShared),
    @required Result categoryChanged(CategoryModel category),
    @required Result cardChanged(Card card),
    @required Result cardAdded(Card card),
    @required Result cardDeleted(Card card),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initWithDeck(Deck deck),
    Result saveChanges(),
    Result saveDraft(),
    Result discardChangesAndExit(),
    Result deleteDeck(),
    Result titleChanged(String titleStr),
    Result descriptionChanged(String descStr),
    Result avatarChanged(File avatar),
    Result privacyChanged(bool isShared),
    Result categoryChanged(CategoryModel category),
    Result cardChanged(Card card),
    Result cardAdded(Card card),
    Result cardDeleted(Card card),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initWithDeck(InitWithDeck value),
    @required Result saveChanges(SaveDeckChanges value),
    @required Result saveDraft(SaveDraft value),
    @required Result discardChangesAndExit(DiscardChanges value),
    @required Result deleteDeck(DeleteDeck value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result avatarChanged(AvatarChanged value),
    @required Result privacyChanged(PrivacyChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result cardChanged(CardChanged value),
    @required Result cardAdded(CardAdded value),
    @required Result cardDeleted(CardDeleted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initWithDeck(InitWithDeck value),
    Result saveChanges(SaveDeckChanges value),
    Result saveDraft(SaveDraft value),
    Result discardChangesAndExit(DiscardChanges value),
    Result deleteDeck(DeleteDeck value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result avatarChanged(AvatarChanged value),
    Result privacyChanged(PrivacyChanged value),
    Result categoryChanged(CategoryChanged value),
    Result cardChanged(CardChanged value),
    Result cardAdded(CardAdded value),
    Result cardDeleted(CardDeleted value),
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

abstract class $InitWithDeckCopyWith<$Res> {
  factory $InitWithDeckCopyWith(
          InitWithDeck value, $Res Function(InitWithDeck) then) =
      _$InitWithDeckCopyWithImpl<$Res>;
  $Res call({Deck deck});

  $DeckCopyWith<$Res> get deck;
}

class _$InitWithDeckCopyWithImpl<$Res> extends _$AddDeckEventCopyWithImpl<$Res>
    implements $InitWithDeckCopyWith<$Res> {
  _$InitWithDeckCopyWithImpl(
      InitWithDeck _value, $Res Function(InitWithDeck) _then)
      : super(_value, (v) => _then(v as InitWithDeck));

  @override
  InitWithDeck get _value => super._value as InitWithDeck;

  @override
  $Res call({
    Object deck = freezed,
  }) {
    return _then(InitWithDeck(
      deck == freezed ? _value.deck : deck as Deck,
    ));
  }

  @override
  $DeckCopyWith<$Res> get deck {
    if (_value.deck == null) {
      return null;
    }
    return $DeckCopyWith<$Res>(_value.deck, (value) {
      return _then(_value.copyWith(deck: value));
    });
  }
}

class _$InitWithDeck implements InitWithDeck {
  _$InitWithDeck(this.deck) : assert(deck != null);

  @override
  final Deck deck;

  @override
  String toString() {
    return 'AddDeckEvent.initWithDeck(deck: $deck)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InitWithDeck &&
            (identical(other.deck, deck) ||
                const DeepCollectionEquality().equals(other.deck, deck)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(deck);

  @override
  $InitWithDeckCopyWith<InitWithDeck> get copyWith =>
      _$InitWithDeckCopyWithImpl<InitWithDeck>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initWithDeck(Deck deck),
    @required Result saveChanges(),
    @required Result saveDraft(),
    @required Result discardChangesAndExit(),
    @required Result deleteDeck(),
    @required Result titleChanged(String titleStr),
    @required Result descriptionChanged(String descStr),
    @required Result avatarChanged(File avatar),
    @required Result privacyChanged(bool isShared),
    @required Result categoryChanged(CategoryModel category),
    @required Result cardChanged(Card card),
    @required Result cardAdded(Card card),
    @required Result cardDeleted(Card card),
  }) {
    assert(initWithDeck != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(cardChanged != null);
    assert(cardAdded != null);
    assert(cardDeleted != null);
    return initWithDeck(deck);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initWithDeck(Deck deck),
    Result saveChanges(),
    Result saveDraft(),
    Result discardChangesAndExit(),
    Result deleteDeck(),
    Result titleChanged(String titleStr),
    Result descriptionChanged(String descStr),
    Result avatarChanged(File avatar),
    Result privacyChanged(bool isShared),
    Result categoryChanged(CategoryModel category),
    Result cardChanged(Card card),
    Result cardAdded(Card card),
    Result cardDeleted(Card card),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initWithDeck != null) {
      return initWithDeck(deck);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initWithDeck(InitWithDeck value),
    @required Result saveChanges(SaveDeckChanges value),
    @required Result saveDraft(SaveDraft value),
    @required Result discardChangesAndExit(DiscardChanges value),
    @required Result deleteDeck(DeleteDeck value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result avatarChanged(AvatarChanged value),
    @required Result privacyChanged(PrivacyChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result cardChanged(CardChanged value),
    @required Result cardAdded(CardAdded value),
    @required Result cardDeleted(CardDeleted value),
  }) {
    assert(initWithDeck != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(cardChanged != null);
    assert(cardAdded != null);
    assert(cardDeleted != null);
    return initWithDeck(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initWithDeck(InitWithDeck value),
    Result saveChanges(SaveDeckChanges value),
    Result saveDraft(SaveDraft value),
    Result discardChangesAndExit(DiscardChanges value),
    Result deleteDeck(DeleteDeck value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result avatarChanged(AvatarChanged value),
    Result privacyChanged(PrivacyChanged value),
    Result categoryChanged(CategoryChanged value),
    Result cardChanged(CardChanged value),
    Result cardAdded(CardAdded value),
    Result cardDeleted(CardDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initWithDeck != null) {
      return initWithDeck(this);
    }
    return orElse();
  }
}

abstract class InitWithDeck implements AddDeckEvent {
  factory InitWithDeck(Deck deck) = _$InitWithDeck;

  Deck get deck;
  $InitWithDeckCopyWith<InitWithDeck> get copyWith;
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
    @required Result initWithDeck(Deck deck),
    @required Result saveChanges(),
    @required Result saveDraft(),
    @required Result discardChangesAndExit(),
    @required Result deleteDeck(),
    @required Result titleChanged(String titleStr),
    @required Result descriptionChanged(String descStr),
    @required Result avatarChanged(File avatar),
    @required Result privacyChanged(bool isShared),
    @required Result categoryChanged(CategoryModel category),
    @required Result cardChanged(Card card),
    @required Result cardAdded(Card card),
    @required Result cardDeleted(Card card),
  }) {
    assert(initWithDeck != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(cardChanged != null);
    assert(cardAdded != null);
    assert(cardDeleted != null);
    return saveChanges();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initWithDeck(Deck deck),
    Result saveChanges(),
    Result saveDraft(),
    Result discardChangesAndExit(),
    Result deleteDeck(),
    Result titleChanged(String titleStr),
    Result descriptionChanged(String descStr),
    Result avatarChanged(File avatar),
    Result privacyChanged(bool isShared),
    Result categoryChanged(CategoryModel category),
    Result cardChanged(Card card),
    Result cardAdded(Card card),
    Result cardDeleted(Card card),
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
    @required Result initWithDeck(InitWithDeck value),
    @required Result saveChanges(SaveDeckChanges value),
    @required Result saveDraft(SaveDraft value),
    @required Result discardChangesAndExit(DiscardChanges value),
    @required Result deleteDeck(DeleteDeck value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result avatarChanged(AvatarChanged value),
    @required Result privacyChanged(PrivacyChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result cardChanged(CardChanged value),
    @required Result cardAdded(CardAdded value),
    @required Result cardDeleted(CardDeleted value),
  }) {
    assert(initWithDeck != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(cardChanged != null);
    assert(cardAdded != null);
    assert(cardDeleted != null);
    return saveChanges(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initWithDeck(InitWithDeck value),
    Result saveChanges(SaveDeckChanges value),
    Result saveDraft(SaveDraft value),
    Result discardChangesAndExit(DiscardChanges value),
    Result deleteDeck(DeleteDeck value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result avatarChanged(AvatarChanged value),
    Result privacyChanged(PrivacyChanged value),
    Result categoryChanged(CategoryChanged value),
    Result cardChanged(CardChanged value),
    Result cardAdded(CardAdded value),
    Result cardDeleted(CardDeleted value),
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
    @required Result initWithDeck(Deck deck),
    @required Result saveChanges(),
    @required Result saveDraft(),
    @required Result discardChangesAndExit(),
    @required Result deleteDeck(),
    @required Result titleChanged(String titleStr),
    @required Result descriptionChanged(String descStr),
    @required Result avatarChanged(File avatar),
    @required Result privacyChanged(bool isShared),
    @required Result categoryChanged(CategoryModel category),
    @required Result cardChanged(Card card),
    @required Result cardAdded(Card card),
    @required Result cardDeleted(Card card),
  }) {
    assert(initWithDeck != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(cardChanged != null);
    assert(cardAdded != null);
    assert(cardDeleted != null);
    return saveDraft();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initWithDeck(Deck deck),
    Result saveChanges(),
    Result saveDraft(),
    Result discardChangesAndExit(),
    Result deleteDeck(),
    Result titleChanged(String titleStr),
    Result descriptionChanged(String descStr),
    Result avatarChanged(File avatar),
    Result privacyChanged(bool isShared),
    Result categoryChanged(CategoryModel category),
    Result cardChanged(Card card),
    Result cardAdded(Card card),
    Result cardDeleted(Card card),
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
    @required Result initWithDeck(InitWithDeck value),
    @required Result saveChanges(SaveDeckChanges value),
    @required Result saveDraft(SaveDraft value),
    @required Result discardChangesAndExit(DiscardChanges value),
    @required Result deleteDeck(DeleteDeck value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result avatarChanged(AvatarChanged value),
    @required Result privacyChanged(PrivacyChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result cardChanged(CardChanged value),
    @required Result cardAdded(CardAdded value),
    @required Result cardDeleted(CardDeleted value),
  }) {
    assert(initWithDeck != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(cardChanged != null);
    assert(cardAdded != null);
    assert(cardDeleted != null);
    return saveDraft(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initWithDeck(InitWithDeck value),
    Result saveChanges(SaveDeckChanges value),
    Result saveDraft(SaveDraft value),
    Result discardChangesAndExit(DiscardChanges value),
    Result deleteDeck(DeleteDeck value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result avatarChanged(AvatarChanged value),
    Result privacyChanged(PrivacyChanged value),
    Result categoryChanged(CategoryChanged value),
    Result cardChanged(CardChanged value),
    Result cardAdded(CardAdded value),
    Result cardDeleted(CardDeleted value),
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
    @required Result initWithDeck(Deck deck),
    @required Result saveChanges(),
    @required Result saveDraft(),
    @required Result discardChangesAndExit(),
    @required Result deleteDeck(),
    @required Result titleChanged(String titleStr),
    @required Result descriptionChanged(String descStr),
    @required Result avatarChanged(File avatar),
    @required Result privacyChanged(bool isShared),
    @required Result categoryChanged(CategoryModel category),
    @required Result cardChanged(Card card),
    @required Result cardAdded(Card card),
    @required Result cardDeleted(Card card),
  }) {
    assert(initWithDeck != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(cardChanged != null);
    assert(cardAdded != null);
    assert(cardDeleted != null);
    return discardChangesAndExit();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initWithDeck(Deck deck),
    Result saveChanges(),
    Result saveDraft(),
    Result discardChangesAndExit(),
    Result deleteDeck(),
    Result titleChanged(String titleStr),
    Result descriptionChanged(String descStr),
    Result avatarChanged(File avatar),
    Result privacyChanged(bool isShared),
    Result categoryChanged(CategoryModel category),
    Result cardChanged(Card card),
    Result cardAdded(Card card),
    Result cardDeleted(Card card),
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
    @required Result initWithDeck(InitWithDeck value),
    @required Result saveChanges(SaveDeckChanges value),
    @required Result saveDraft(SaveDraft value),
    @required Result discardChangesAndExit(DiscardChanges value),
    @required Result deleteDeck(DeleteDeck value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result avatarChanged(AvatarChanged value),
    @required Result privacyChanged(PrivacyChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result cardChanged(CardChanged value),
    @required Result cardAdded(CardAdded value),
    @required Result cardDeleted(CardDeleted value),
  }) {
    assert(initWithDeck != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(cardChanged != null);
    assert(cardAdded != null);
    assert(cardDeleted != null);
    return discardChangesAndExit(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initWithDeck(InitWithDeck value),
    Result saveChanges(SaveDeckChanges value),
    Result saveDraft(SaveDraft value),
    Result discardChangesAndExit(DiscardChanges value),
    Result deleteDeck(DeleteDeck value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result avatarChanged(AvatarChanged value),
    Result privacyChanged(PrivacyChanged value),
    Result categoryChanged(CategoryChanged value),
    Result cardChanged(CardChanged value),
    Result cardAdded(CardAdded value),
    Result cardDeleted(CardDeleted value),
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
    @required Result initWithDeck(Deck deck),
    @required Result saveChanges(),
    @required Result saveDraft(),
    @required Result discardChangesAndExit(),
    @required Result deleteDeck(),
    @required Result titleChanged(String titleStr),
    @required Result descriptionChanged(String descStr),
    @required Result avatarChanged(File avatar),
    @required Result privacyChanged(bool isShared),
    @required Result categoryChanged(CategoryModel category),
    @required Result cardChanged(Card card),
    @required Result cardAdded(Card card),
    @required Result cardDeleted(Card card),
  }) {
    assert(initWithDeck != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(cardChanged != null);
    assert(cardAdded != null);
    assert(cardDeleted != null);
    return deleteDeck();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initWithDeck(Deck deck),
    Result saveChanges(),
    Result saveDraft(),
    Result discardChangesAndExit(),
    Result deleteDeck(),
    Result titleChanged(String titleStr),
    Result descriptionChanged(String descStr),
    Result avatarChanged(File avatar),
    Result privacyChanged(bool isShared),
    Result categoryChanged(CategoryModel category),
    Result cardChanged(Card card),
    Result cardAdded(Card card),
    Result cardDeleted(Card card),
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
    @required Result initWithDeck(InitWithDeck value),
    @required Result saveChanges(SaveDeckChanges value),
    @required Result saveDraft(SaveDraft value),
    @required Result discardChangesAndExit(DiscardChanges value),
    @required Result deleteDeck(DeleteDeck value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result avatarChanged(AvatarChanged value),
    @required Result privacyChanged(PrivacyChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result cardChanged(CardChanged value),
    @required Result cardAdded(CardAdded value),
    @required Result cardDeleted(CardDeleted value),
  }) {
    assert(initWithDeck != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(cardChanged != null);
    assert(cardAdded != null);
    assert(cardDeleted != null);
    return deleteDeck(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initWithDeck(InitWithDeck value),
    Result saveChanges(SaveDeckChanges value),
    Result saveDraft(SaveDraft value),
    Result discardChangesAndExit(DiscardChanges value),
    Result deleteDeck(DeleteDeck value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result avatarChanged(AvatarChanged value),
    Result privacyChanged(PrivacyChanged value),
    Result categoryChanged(CategoryChanged value),
    Result cardChanged(CardChanged value),
    Result cardAdded(CardAdded value),
    Result cardDeleted(CardDeleted value),
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
    @required Result initWithDeck(Deck deck),
    @required Result saveChanges(),
    @required Result saveDraft(),
    @required Result discardChangesAndExit(),
    @required Result deleteDeck(),
    @required Result titleChanged(String titleStr),
    @required Result descriptionChanged(String descStr),
    @required Result avatarChanged(File avatar),
    @required Result privacyChanged(bool isShared),
    @required Result categoryChanged(CategoryModel category),
    @required Result cardChanged(Card card),
    @required Result cardAdded(Card card),
    @required Result cardDeleted(Card card),
  }) {
    assert(initWithDeck != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(cardChanged != null);
    assert(cardAdded != null);
    assert(cardDeleted != null);
    return titleChanged(titleStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initWithDeck(Deck deck),
    Result saveChanges(),
    Result saveDraft(),
    Result discardChangesAndExit(),
    Result deleteDeck(),
    Result titleChanged(String titleStr),
    Result descriptionChanged(String descStr),
    Result avatarChanged(File avatar),
    Result privacyChanged(bool isShared),
    Result categoryChanged(CategoryModel category),
    Result cardChanged(Card card),
    Result cardAdded(Card card),
    Result cardDeleted(Card card),
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
    @required Result initWithDeck(InitWithDeck value),
    @required Result saveChanges(SaveDeckChanges value),
    @required Result saveDraft(SaveDraft value),
    @required Result discardChangesAndExit(DiscardChanges value),
    @required Result deleteDeck(DeleteDeck value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result avatarChanged(AvatarChanged value),
    @required Result privacyChanged(PrivacyChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result cardChanged(CardChanged value),
    @required Result cardAdded(CardAdded value),
    @required Result cardDeleted(CardDeleted value),
  }) {
    assert(initWithDeck != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(cardChanged != null);
    assert(cardAdded != null);
    assert(cardDeleted != null);
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initWithDeck(InitWithDeck value),
    Result saveChanges(SaveDeckChanges value),
    Result saveDraft(SaveDraft value),
    Result discardChangesAndExit(DiscardChanges value),
    Result deleteDeck(DeleteDeck value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result avatarChanged(AvatarChanged value),
    Result privacyChanged(PrivacyChanged value),
    Result categoryChanged(CategoryChanged value),
    Result cardChanged(CardChanged value),
    Result cardAdded(CardAdded value),
    Result cardDeleted(CardDeleted value),
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
    @required Result initWithDeck(Deck deck),
    @required Result saveChanges(),
    @required Result saveDraft(),
    @required Result discardChangesAndExit(),
    @required Result deleteDeck(),
    @required Result titleChanged(String titleStr),
    @required Result descriptionChanged(String descStr),
    @required Result avatarChanged(File avatar),
    @required Result privacyChanged(bool isShared),
    @required Result categoryChanged(CategoryModel category),
    @required Result cardChanged(Card card),
    @required Result cardAdded(Card card),
    @required Result cardDeleted(Card card),
  }) {
    assert(initWithDeck != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(cardChanged != null);
    assert(cardAdded != null);
    assert(cardDeleted != null);
    return descriptionChanged(descStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initWithDeck(Deck deck),
    Result saveChanges(),
    Result saveDraft(),
    Result discardChangesAndExit(),
    Result deleteDeck(),
    Result titleChanged(String titleStr),
    Result descriptionChanged(String descStr),
    Result avatarChanged(File avatar),
    Result privacyChanged(bool isShared),
    Result categoryChanged(CategoryModel category),
    Result cardChanged(Card card),
    Result cardAdded(Card card),
    Result cardDeleted(Card card),
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
    @required Result initWithDeck(InitWithDeck value),
    @required Result saveChanges(SaveDeckChanges value),
    @required Result saveDraft(SaveDraft value),
    @required Result discardChangesAndExit(DiscardChanges value),
    @required Result deleteDeck(DeleteDeck value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result avatarChanged(AvatarChanged value),
    @required Result privacyChanged(PrivacyChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result cardChanged(CardChanged value),
    @required Result cardAdded(CardAdded value),
    @required Result cardDeleted(CardDeleted value),
  }) {
    assert(initWithDeck != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(cardChanged != null);
    assert(cardAdded != null);
    assert(cardDeleted != null);
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initWithDeck(InitWithDeck value),
    Result saveChanges(SaveDeckChanges value),
    Result saveDraft(SaveDraft value),
    Result discardChangesAndExit(DiscardChanges value),
    Result deleteDeck(DeleteDeck value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result avatarChanged(AvatarChanged value),
    Result privacyChanged(PrivacyChanged value),
    Result categoryChanged(CategoryChanged value),
    Result cardChanged(CardChanged value),
    Result cardAdded(CardAdded value),
    Result cardDeleted(CardDeleted value),
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
  $Res call({File avatar});
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
      avatar == freezed ? _value.avatar : avatar as File,
    ));
  }
}

class _$AvatarChanged implements AvatarChanged {
  _$AvatarChanged(this.avatar) : assert(avatar != null);

  @override
  final File avatar;

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
    @required Result initWithDeck(Deck deck),
    @required Result saveChanges(),
    @required Result saveDraft(),
    @required Result discardChangesAndExit(),
    @required Result deleteDeck(),
    @required Result titleChanged(String titleStr),
    @required Result descriptionChanged(String descStr),
    @required Result avatarChanged(File avatar),
    @required Result privacyChanged(bool isShared),
    @required Result categoryChanged(CategoryModel category),
    @required Result cardChanged(Card card),
    @required Result cardAdded(Card card),
    @required Result cardDeleted(Card card),
  }) {
    assert(initWithDeck != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(cardChanged != null);
    assert(cardAdded != null);
    assert(cardDeleted != null);
    return avatarChanged(avatar);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initWithDeck(Deck deck),
    Result saveChanges(),
    Result saveDraft(),
    Result discardChangesAndExit(),
    Result deleteDeck(),
    Result titleChanged(String titleStr),
    Result descriptionChanged(String descStr),
    Result avatarChanged(File avatar),
    Result privacyChanged(bool isShared),
    Result categoryChanged(CategoryModel category),
    Result cardChanged(Card card),
    Result cardAdded(Card card),
    Result cardDeleted(Card card),
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
    @required Result initWithDeck(InitWithDeck value),
    @required Result saveChanges(SaveDeckChanges value),
    @required Result saveDraft(SaveDraft value),
    @required Result discardChangesAndExit(DiscardChanges value),
    @required Result deleteDeck(DeleteDeck value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result avatarChanged(AvatarChanged value),
    @required Result privacyChanged(PrivacyChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result cardChanged(CardChanged value),
    @required Result cardAdded(CardAdded value),
    @required Result cardDeleted(CardDeleted value),
  }) {
    assert(initWithDeck != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(cardChanged != null);
    assert(cardAdded != null);
    assert(cardDeleted != null);
    return avatarChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initWithDeck(InitWithDeck value),
    Result saveChanges(SaveDeckChanges value),
    Result saveDraft(SaveDraft value),
    Result discardChangesAndExit(DiscardChanges value),
    Result deleteDeck(DeleteDeck value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result avatarChanged(AvatarChanged value),
    Result privacyChanged(PrivacyChanged value),
    Result categoryChanged(CategoryChanged value),
    Result cardChanged(CardChanged value),
    Result cardAdded(CardAdded value),
    Result cardDeleted(CardDeleted value),
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
  factory AvatarChanged(File avatar) = _$AvatarChanged;

  File get avatar;
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
    @required Result initWithDeck(Deck deck),
    @required Result saveChanges(),
    @required Result saveDraft(),
    @required Result discardChangesAndExit(),
    @required Result deleteDeck(),
    @required Result titleChanged(String titleStr),
    @required Result descriptionChanged(String descStr),
    @required Result avatarChanged(File avatar),
    @required Result privacyChanged(bool isShared),
    @required Result categoryChanged(CategoryModel category),
    @required Result cardChanged(Card card),
    @required Result cardAdded(Card card),
    @required Result cardDeleted(Card card),
  }) {
    assert(initWithDeck != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(cardChanged != null);
    assert(cardAdded != null);
    assert(cardDeleted != null);
    return privacyChanged(isShared);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initWithDeck(Deck deck),
    Result saveChanges(),
    Result saveDraft(),
    Result discardChangesAndExit(),
    Result deleteDeck(),
    Result titleChanged(String titleStr),
    Result descriptionChanged(String descStr),
    Result avatarChanged(File avatar),
    Result privacyChanged(bool isShared),
    Result categoryChanged(CategoryModel category),
    Result cardChanged(Card card),
    Result cardAdded(Card card),
    Result cardDeleted(Card card),
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
    @required Result initWithDeck(InitWithDeck value),
    @required Result saveChanges(SaveDeckChanges value),
    @required Result saveDraft(SaveDraft value),
    @required Result discardChangesAndExit(DiscardChanges value),
    @required Result deleteDeck(DeleteDeck value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result avatarChanged(AvatarChanged value),
    @required Result privacyChanged(PrivacyChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result cardChanged(CardChanged value),
    @required Result cardAdded(CardAdded value),
    @required Result cardDeleted(CardDeleted value),
  }) {
    assert(initWithDeck != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(cardChanged != null);
    assert(cardAdded != null);
    assert(cardDeleted != null);
    return privacyChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initWithDeck(InitWithDeck value),
    Result saveChanges(SaveDeckChanges value),
    Result saveDraft(SaveDraft value),
    Result discardChangesAndExit(DiscardChanges value),
    Result deleteDeck(DeleteDeck value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result avatarChanged(AvatarChanged value),
    Result privacyChanged(PrivacyChanged value),
    Result categoryChanged(CategoryChanged value),
    Result cardChanged(CardChanged value),
    Result cardAdded(CardAdded value),
    Result cardDeleted(CardDeleted value),
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
    @required Result initWithDeck(Deck deck),
    @required Result saveChanges(),
    @required Result saveDraft(),
    @required Result discardChangesAndExit(),
    @required Result deleteDeck(),
    @required Result titleChanged(String titleStr),
    @required Result descriptionChanged(String descStr),
    @required Result avatarChanged(File avatar),
    @required Result privacyChanged(bool isShared),
    @required Result categoryChanged(CategoryModel category),
    @required Result cardChanged(Card card),
    @required Result cardAdded(Card card),
    @required Result cardDeleted(Card card),
  }) {
    assert(initWithDeck != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(cardChanged != null);
    assert(cardAdded != null);
    assert(cardDeleted != null);
    return categoryChanged(category);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initWithDeck(Deck deck),
    Result saveChanges(),
    Result saveDraft(),
    Result discardChangesAndExit(),
    Result deleteDeck(),
    Result titleChanged(String titleStr),
    Result descriptionChanged(String descStr),
    Result avatarChanged(File avatar),
    Result privacyChanged(bool isShared),
    Result categoryChanged(CategoryModel category),
    Result cardChanged(Card card),
    Result cardAdded(Card card),
    Result cardDeleted(Card card),
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
    @required Result initWithDeck(InitWithDeck value),
    @required Result saveChanges(SaveDeckChanges value),
    @required Result saveDraft(SaveDraft value),
    @required Result discardChangesAndExit(DiscardChanges value),
    @required Result deleteDeck(DeleteDeck value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result avatarChanged(AvatarChanged value),
    @required Result privacyChanged(PrivacyChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result cardChanged(CardChanged value),
    @required Result cardAdded(CardAdded value),
    @required Result cardDeleted(CardDeleted value),
  }) {
    assert(initWithDeck != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(cardChanged != null);
    assert(cardAdded != null);
    assert(cardDeleted != null);
    return categoryChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initWithDeck(InitWithDeck value),
    Result saveChanges(SaveDeckChanges value),
    Result saveDraft(SaveDraft value),
    Result discardChangesAndExit(DiscardChanges value),
    Result deleteDeck(DeleteDeck value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result avatarChanged(AvatarChanged value),
    Result privacyChanged(PrivacyChanged value),
    Result categoryChanged(CategoryChanged value),
    Result cardChanged(CardChanged value),
    Result cardAdded(CardAdded value),
    Result cardDeleted(CardDeleted value),
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

abstract class $CardChangedCopyWith<$Res> {
  factory $CardChangedCopyWith(
          CardChanged value, $Res Function(CardChanged) then) =
      _$CardChangedCopyWithImpl<$Res>;
  $Res call({Card card});
}

class _$CardChangedCopyWithImpl<$Res> extends _$AddDeckEventCopyWithImpl<$Res>
    implements $CardChangedCopyWith<$Res> {
  _$CardChangedCopyWithImpl(
      CardChanged _value, $Res Function(CardChanged) _then)
      : super(_value, (v) => _then(v as CardChanged));

  @override
  CardChanged get _value => super._value as CardChanged;

  @override
  $Res call({
    Object card = freezed,
  }) {
    return _then(CardChanged(
      card == freezed ? _value.card : card as Card,
    ));
  }
}

class _$CardChanged implements CardChanged {
  _$CardChanged(this.card) : assert(card != null);

  @override
  final Card card;

  @override
  String toString() {
    return 'AddDeckEvent.cardChanged(card: $card)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CardChanged &&
            (identical(other.card, card) ||
                const DeepCollectionEquality().equals(other.card, card)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(card);

  @override
  $CardChangedCopyWith<CardChanged> get copyWith =>
      _$CardChangedCopyWithImpl<CardChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initWithDeck(Deck deck),
    @required Result saveChanges(),
    @required Result saveDraft(),
    @required Result discardChangesAndExit(),
    @required Result deleteDeck(),
    @required Result titleChanged(String titleStr),
    @required Result descriptionChanged(String descStr),
    @required Result avatarChanged(File avatar),
    @required Result privacyChanged(bool isShared),
    @required Result categoryChanged(CategoryModel category),
    @required Result cardChanged(Card card),
    @required Result cardAdded(Card card),
    @required Result cardDeleted(Card card),
  }) {
    assert(initWithDeck != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(cardChanged != null);
    assert(cardAdded != null);
    assert(cardDeleted != null);
    return cardChanged(card);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initWithDeck(Deck deck),
    Result saveChanges(),
    Result saveDraft(),
    Result discardChangesAndExit(),
    Result deleteDeck(),
    Result titleChanged(String titleStr),
    Result descriptionChanged(String descStr),
    Result avatarChanged(File avatar),
    Result privacyChanged(bool isShared),
    Result categoryChanged(CategoryModel category),
    Result cardChanged(Card card),
    Result cardAdded(Card card),
    Result cardDeleted(Card card),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cardChanged != null) {
      return cardChanged(card);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initWithDeck(InitWithDeck value),
    @required Result saveChanges(SaveDeckChanges value),
    @required Result saveDraft(SaveDraft value),
    @required Result discardChangesAndExit(DiscardChanges value),
    @required Result deleteDeck(DeleteDeck value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result avatarChanged(AvatarChanged value),
    @required Result privacyChanged(PrivacyChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result cardChanged(CardChanged value),
    @required Result cardAdded(CardAdded value),
    @required Result cardDeleted(CardDeleted value),
  }) {
    assert(initWithDeck != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(cardChanged != null);
    assert(cardAdded != null);
    assert(cardDeleted != null);
    return cardChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initWithDeck(InitWithDeck value),
    Result saveChanges(SaveDeckChanges value),
    Result saveDraft(SaveDraft value),
    Result discardChangesAndExit(DiscardChanges value),
    Result deleteDeck(DeleteDeck value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result avatarChanged(AvatarChanged value),
    Result privacyChanged(PrivacyChanged value),
    Result categoryChanged(CategoryChanged value),
    Result cardChanged(CardChanged value),
    Result cardAdded(CardAdded value),
    Result cardDeleted(CardDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cardChanged != null) {
      return cardChanged(this);
    }
    return orElse();
  }
}

abstract class CardChanged implements AddDeckEvent {
  factory CardChanged(Card card) = _$CardChanged;

  Card get card;
  $CardChangedCopyWith<CardChanged> get copyWith;
}

abstract class $CardAddedCopyWith<$Res> {
  factory $CardAddedCopyWith(CardAdded value, $Res Function(CardAdded) then) =
      _$CardAddedCopyWithImpl<$Res>;
  $Res call({Card card});
}

class _$CardAddedCopyWithImpl<$Res> extends _$AddDeckEventCopyWithImpl<$Res>
    implements $CardAddedCopyWith<$Res> {
  _$CardAddedCopyWithImpl(CardAdded _value, $Res Function(CardAdded) _then)
      : super(_value, (v) => _then(v as CardAdded));

  @override
  CardAdded get _value => super._value as CardAdded;

  @override
  $Res call({
    Object card = freezed,
  }) {
    return _then(CardAdded(
      card == freezed ? _value.card : card as Card,
    ));
  }
}

class _$CardAdded implements CardAdded {
  _$CardAdded(this.card) : assert(card != null);

  @override
  final Card card;

  @override
  String toString() {
    return 'AddDeckEvent.cardAdded(card: $card)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CardAdded &&
            (identical(other.card, card) ||
                const DeepCollectionEquality().equals(other.card, card)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(card);

  @override
  $CardAddedCopyWith<CardAdded> get copyWith =>
      _$CardAddedCopyWithImpl<CardAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initWithDeck(Deck deck),
    @required Result saveChanges(),
    @required Result saveDraft(),
    @required Result discardChangesAndExit(),
    @required Result deleteDeck(),
    @required Result titleChanged(String titleStr),
    @required Result descriptionChanged(String descStr),
    @required Result avatarChanged(File avatar),
    @required Result privacyChanged(bool isShared),
    @required Result categoryChanged(CategoryModel category),
    @required Result cardChanged(Card card),
    @required Result cardAdded(Card card),
    @required Result cardDeleted(Card card),
  }) {
    assert(initWithDeck != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(cardChanged != null);
    assert(cardAdded != null);
    assert(cardDeleted != null);
    return cardAdded(card);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initWithDeck(Deck deck),
    Result saveChanges(),
    Result saveDraft(),
    Result discardChangesAndExit(),
    Result deleteDeck(),
    Result titleChanged(String titleStr),
    Result descriptionChanged(String descStr),
    Result avatarChanged(File avatar),
    Result privacyChanged(bool isShared),
    Result categoryChanged(CategoryModel category),
    Result cardChanged(Card card),
    Result cardAdded(Card card),
    Result cardDeleted(Card card),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cardAdded != null) {
      return cardAdded(card);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initWithDeck(InitWithDeck value),
    @required Result saveChanges(SaveDeckChanges value),
    @required Result saveDraft(SaveDraft value),
    @required Result discardChangesAndExit(DiscardChanges value),
    @required Result deleteDeck(DeleteDeck value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result avatarChanged(AvatarChanged value),
    @required Result privacyChanged(PrivacyChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result cardChanged(CardChanged value),
    @required Result cardAdded(CardAdded value),
    @required Result cardDeleted(CardDeleted value),
  }) {
    assert(initWithDeck != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(cardChanged != null);
    assert(cardAdded != null);
    assert(cardDeleted != null);
    return cardAdded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initWithDeck(InitWithDeck value),
    Result saveChanges(SaveDeckChanges value),
    Result saveDraft(SaveDraft value),
    Result discardChangesAndExit(DiscardChanges value),
    Result deleteDeck(DeleteDeck value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result avatarChanged(AvatarChanged value),
    Result privacyChanged(PrivacyChanged value),
    Result categoryChanged(CategoryChanged value),
    Result cardChanged(CardChanged value),
    Result cardAdded(CardAdded value),
    Result cardDeleted(CardDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cardAdded != null) {
      return cardAdded(this);
    }
    return orElse();
  }
}

abstract class CardAdded implements AddDeckEvent {
  factory CardAdded(Card card) = _$CardAdded;

  Card get card;
  $CardAddedCopyWith<CardAdded> get copyWith;
}

abstract class $CardDeletedCopyWith<$Res> {
  factory $CardDeletedCopyWith(
          CardDeleted value, $Res Function(CardDeleted) then) =
      _$CardDeletedCopyWithImpl<$Res>;
  $Res call({Card card});
}

class _$CardDeletedCopyWithImpl<$Res> extends _$AddDeckEventCopyWithImpl<$Res>
    implements $CardDeletedCopyWith<$Res> {
  _$CardDeletedCopyWithImpl(
      CardDeleted _value, $Res Function(CardDeleted) _then)
      : super(_value, (v) => _then(v as CardDeleted));

  @override
  CardDeleted get _value => super._value as CardDeleted;

  @override
  $Res call({
    Object card = freezed,
  }) {
    return _then(CardDeleted(
      card == freezed ? _value.card : card as Card,
    ));
  }
}

class _$CardDeleted implements CardDeleted {
  _$CardDeleted(this.card) : assert(card != null);

  @override
  final Card card;

  @override
  String toString() {
    return 'AddDeckEvent.cardDeleted(card: $card)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CardDeleted &&
            (identical(other.card, card) ||
                const DeepCollectionEquality().equals(other.card, card)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(card);

  @override
  $CardDeletedCopyWith<CardDeleted> get copyWith =>
      _$CardDeletedCopyWithImpl<CardDeleted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initWithDeck(Deck deck),
    @required Result saveChanges(),
    @required Result saveDraft(),
    @required Result discardChangesAndExit(),
    @required Result deleteDeck(),
    @required Result titleChanged(String titleStr),
    @required Result descriptionChanged(String descStr),
    @required Result avatarChanged(File avatar),
    @required Result privacyChanged(bool isShared),
    @required Result categoryChanged(CategoryModel category),
    @required Result cardChanged(Card card),
    @required Result cardAdded(Card card),
    @required Result cardDeleted(Card card),
  }) {
    assert(initWithDeck != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(cardChanged != null);
    assert(cardAdded != null);
    assert(cardDeleted != null);
    return cardDeleted(card);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initWithDeck(Deck deck),
    Result saveChanges(),
    Result saveDraft(),
    Result discardChangesAndExit(),
    Result deleteDeck(),
    Result titleChanged(String titleStr),
    Result descriptionChanged(String descStr),
    Result avatarChanged(File avatar),
    Result privacyChanged(bool isShared),
    Result categoryChanged(CategoryModel category),
    Result cardChanged(Card card),
    Result cardAdded(Card card),
    Result cardDeleted(Card card),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cardDeleted != null) {
      return cardDeleted(card);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initWithDeck(InitWithDeck value),
    @required Result saveChanges(SaveDeckChanges value),
    @required Result saveDraft(SaveDraft value),
    @required Result discardChangesAndExit(DiscardChanges value),
    @required Result deleteDeck(DeleteDeck value),
    @required Result titleChanged(TitleChanged value),
    @required Result descriptionChanged(DescriptionChanged value),
    @required Result avatarChanged(AvatarChanged value),
    @required Result privacyChanged(PrivacyChanged value),
    @required Result categoryChanged(CategoryChanged value),
    @required Result cardChanged(CardChanged value),
    @required Result cardAdded(CardAdded value),
    @required Result cardDeleted(CardDeleted value),
  }) {
    assert(initWithDeck != null);
    assert(saveChanges != null);
    assert(saveDraft != null);
    assert(discardChangesAndExit != null);
    assert(deleteDeck != null);
    assert(titleChanged != null);
    assert(descriptionChanged != null);
    assert(avatarChanged != null);
    assert(privacyChanged != null);
    assert(categoryChanged != null);
    assert(cardChanged != null);
    assert(cardAdded != null);
    assert(cardDeleted != null);
    return cardDeleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initWithDeck(InitWithDeck value),
    Result saveChanges(SaveDeckChanges value),
    Result saveDraft(SaveDraft value),
    Result discardChangesAndExit(DiscardChanges value),
    Result deleteDeck(DeleteDeck value),
    Result titleChanged(TitleChanged value),
    Result descriptionChanged(DescriptionChanged value),
    Result avatarChanged(AvatarChanged value),
    Result privacyChanged(PrivacyChanged value),
    Result categoryChanged(CategoryChanged value),
    Result cardChanged(CardChanged value),
    Result cardAdded(CardAdded value),
    Result cardDeleted(CardDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cardDeleted != null) {
      return cardDeleted(this);
    }
    return orElse();
  }
}

abstract class CardDeleted implements AddDeckEvent {
  factory CardDeleted(Card card) = _$CardDeleted;

  Card get card;
  $CardDeletedCopyWith<CardDeleted> get copyWith;
}
