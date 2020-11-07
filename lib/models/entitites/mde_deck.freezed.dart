// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'mde_deck.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MDEDeckTearOff {
  const _$MDEDeckTearOff();

  _MDEDeck call(
      {@required UniqueId deckId,
      @required DeckTitle title,
      @required DeckAvatar avatar,
      @required DeckDescription description,
      @required MDEUser author,
      @required DeckCategory category,
      @required bool isPrivate,
      @required bool availableQuickTrain,
      int cardsCount,
      int subscribersCount,
      List<MDEUser> subscribers,
      List<MDECard> cardsList}) {
    return _MDEDeck(
      deckId: deckId,
      title: title,
      avatar: avatar,
      description: description,
      author: author,
      category: category,
      isPrivate: isPrivate,
      availableQuickTrain: availableQuickTrain,
      cardsCount: cardsCount,
      subscribersCount: subscribersCount,
      subscribers: subscribers,
      cardsList: cardsList,
    );
  }
}

// ignore: unused_element
const $MDEDeck = _$MDEDeckTearOff();

mixin _$MDEDeck {
  UniqueId get deckId;
  DeckTitle get title;
  DeckAvatar get avatar;
  DeckDescription get description;
  MDEUser get author;
  DeckCategory get category;
  bool get isPrivate;
  bool get availableQuickTrain;
  int get cardsCount;
  int get subscribersCount;
  List<MDEUser> get subscribers;
  List<MDECard> get cardsList;

  $MDEDeckCopyWith<MDEDeck> get copyWith;
}

abstract class $MDEDeckCopyWith<$Res> {
  factory $MDEDeckCopyWith(MDEDeck value, $Res Function(MDEDeck) then) =
      _$MDEDeckCopyWithImpl<$Res>;
  $Res call(
      {UniqueId deckId,
      DeckTitle title,
      DeckAvatar avatar,
      DeckDescription description,
      MDEUser author,
      DeckCategory category,
      bool isPrivate,
      bool availableQuickTrain,
      int cardsCount,
      int subscribersCount,
      List<MDEUser> subscribers,
      List<MDECard> cardsList});

  $MDEUserCopyWith<$Res> get author;
  $DeckCategoryCopyWith<$Res> get category;
}

class _$MDEDeckCopyWithImpl<$Res> implements $MDEDeckCopyWith<$Res> {
  _$MDEDeckCopyWithImpl(this._value, this._then);

  final MDEDeck _value;
  // ignore: unused_field
  final $Res Function(MDEDeck) _then;

  @override
  $Res call({
    Object deckId = freezed,
    Object title = freezed,
    Object avatar = freezed,
    Object description = freezed,
    Object author = freezed,
    Object category = freezed,
    Object isPrivate = freezed,
    Object availableQuickTrain = freezed,
    Object cardsCount = freezed,
    Object subscribersCount = freezed,
    Object subscribers = freezed,
    Object cardsList = freezed,
  }) {
    return _then(_value.copyWith(
      deckId: deckId == freezed ? _value.deckId : deckId as UniqueId,
      title: title == freezed ? _value.title : title as DeckTitle,
      avatar: avatar == freezed ? _value.avatar : avatar as DeckAvatar,
      description: description == freezed
          ? _value.description
          : description as DeckDescription,
      author: author == freezed ? _value.author : author as MDEUser,
      category:
          category == freezed ? _value.category : category as DeckCategory,
      isPrivate: isPrivate == freezed ? _value.isPrivate : isPrivate as bool,
      availableQuickTrain: availableQuickTrain == freezed
          ? _value.availableQuickTrain
          : availableQuickTrain as bool,
      cardsCount: cardsCount == freezed ? _value.cardsCount : cardsCount as int,
      subscribersCount: subscribersCount == freezed
          ? _value.subscribersCount
          : subscribersCount as int,
      subscribers: subscribers == freezed
          ? _value.subscribers
          : subscribers as List<MDEUser>,
      cardsList:
          cardsList == freezed ? _value.cardsList : cardsList as List<MDECard>,
    ));
  }

  @override
  $MDEUserCopyWith<$Res> get author {
    if (_value.author == null) {
      return null;
    }
    return $MDEUserCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value));
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
}

abstract class _$MDEDeckCopyWith<$Res> implements $MDEDeckCopyWith<$Res> {
  factory _$MDEDeckCopyWith(_MDEDeck value, $Res Function(_MDEDeck) then) =
      __$MDEDeckCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId deckId,
      DeckTitle title,
      DeckAvatar avatar,
      DeckDescription description,
      MDEUser author,
      DeckCategory category,
      bool isPrivate,
      bool availableQuickTrain,
      int cardsCount,
      int subscribersCount,
      List<MDEUser> subscribers,
      List<MDECard> cardsList});

  @override
  $MDEUserCopyWith<$Res> get author;
  @override
  $DeckCategoryCopyWith<$Res> get category;
}

class __$MDEDeckCopyWithImpl<$Res> extends _$MDEDeckCopyWithImpl<$Res>
    implements _$MDEDeckCopyWith<$Res> {
  __$MDEDeckCopyWithImpl(_MDEDeck _value, $Res Function(_MDEDeck) _then)
      : super(_value, (v) => _then(v as _MDEDeck));

  @override
  _MDEDeck get _value => super._value as _MDEDeck;

  @override
  $Res call({
    Object deckId = freezed,
    Object title = freezed,
    Object avatar = freezed,
    Object description = freezed,
    Object author = freezed,
    Object category = freezed,
    Object isPrivate = freezed,
    Object availableQuickTrain = freezed,
    Object cardsCount = freezed,
    Object subscribersCount = freezed,
    Object subscribers = freezed,
    Object cardsList = freezed,
  }) {
    return _then(_MDEDeck(
      deckId: deckId == freezed ? _value.deckId : deckId as UniqueId,
      title: title == freezed ? _value.title : title as DeckTitle,
      avatar: avatar == freezed ? _value.avatar : avatar as DeckAvatar,
      description: description == freezed
          ? _value.description
          : description as DeckDescription,
      author: author == freezed ? _value.author : author as MDEUser,
      category:
          category == freezed ? _value.category : category as DeckCategory,
      isPrivate: isPrivate == freezed ? _value.isPrivate : isPrivate as bool,
      availableQuickTrain: availableQuickTrain == freezed
          ? _value.availableQuickTrain
          : availableQuickTrain as bool,
      cardsCount: cardsCount == freezed ? _value.cardsCount : cardsCount as int,
      subscribersCount: subscribersCount == freezed
          ? _value.subscribersCount
          : subscribersCount as int,
      subscribers: subscribers == freezed
          ? _value.subscribers
          : subscribers as List<MDEUser>,
      cardsList:
          cardsList == freezed ? _value.cardsList : cardsList as List<MDECard>,
    ));
  }
}

class _$_MDEDeck extends _MDEDeck {
  const _$_MDEDeck(
      {@required this.deckId,
      @required this.title,
      @required this.avatar,
      @required this.description,
      @required this.author,
      @required this.category,
      @required this.isPrivate,
      @required this.availableQuickTrain,
      this.cardsCount,
      this.subscribersCount,
      this.subscribers,
      this.cardsList})
      : assert(deckId != null),
        assert(title != null),
        assert(avatar != null),
        assert(description != null),
        assert(author != null),
        assert(category != null),
        assert(isPrivate != null),
        assert(availableQuickTrain != null),
        super._();

  @override
  final UniqueId deckId;
  @override
  final DeckTitle title;
  @override
  final DeckAvatar avatar;
  @override
  final DeckDescription description;
  @override
  final MDEUser author;
  @override
  final DeckCategory category;
  @override
  final bool isPrivate;
  @override
  final bool availableQuickTrain;
  @override
  final int cardsCount;
  @override
  final int subscribersCount;
  @override
  final List<MDEUser> subscribers;
  @override
  final List<MDECard> cardsList;

  @override
  String toString() {
    return 'MDEDeck(deckId: $deckId, title: $title, avatar: $avatar, description: $description, author: $author, category: $category, isPrivate: $isPrivate, availableQuickTrain: $availableQuickTrain, cardsCount: $cardsCount, subscribersCount: $subscribersCount, subscribers: $subscribers, cardsList: $cardsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MDEDeck &&
            (identical(other.deckId, deckId) ||
                const DeepCollectionEquality().equals(other.deckId, deckId)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.isPrivate, isPrivate) ||
                const DeepCollectionEquality()
                    .equals(other.isPrivate, isPrivate)) &&
            (identical(other.availableQuickTrain, availableQuickTrain) ||
                const DeepCollectionEquality()
                    .equals(other.availableQuickTrain, availableQuickTrain)) &&
            (identical(other.cardsCount, cardsCount) ||
                const DeepCollectionEquality()
                    .equals(other.cardsCount, cardsCount)) &&
            (identical(other.subscribersCount, subscribersCount) ||
                const DeepCollectionEquality()
                    .equals(other.subscribersCount, subscribersCount)) &&
            (identical(other.subscribers, subscribers) ||
                const DeepCollectionEquality()
                    .equals(other.subscribers, subscribers)) &&
            (identical(other.cardsList, cardsList) ||
                const DeepCollectionEquality()
                    .equals(other.cardsList, cardsList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(deckId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(avatar) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(isPrivate) ^
      const DeepCollectionEquality().hash(availableQuickTrain) ^
      const DeepCollectionEquality().hash(cardsCount) ^
      const DeepCollectionEquality().hash(subscribersCount) ^
      const DeepCollectionEquality().hash(subscribers) ^
      const DeepCollectionEquality().hash(cardsList);

  @override
  _$MDEDeckCopyWith<_MDEDeck> get copyWith =>
      __$MDEDeckCopyWithImpl<_MDEDeck>(this, _$identity);
}

abstract class _MDEDeck extends MDEDeck {
  const _MDEDeck._() : super._();
  const factory _MDEDeck(
      {@required UniqueId deckId,
      @required DeckTitle title,
      @required DeckAvatar avatar,
      @required DeckDescription description,
      @required MDEUser author,
      @required DeckCategory category,
      @required bool isPrivate,
      @required bool availableQuickTrain,
      int cardsCount,
      int subscribersCount,
      List<MDEUser> subscribers,
      List<MDECard> cardsList}) = _$_MDEDeck;

  @override
  UniqueId get deckId;
  @override
  DeckTitle get title;
  @override
  DeckAvatar get avatar;
  @override
  DeckDescription get description;
  @override
  MDEUser get author;
  @override
  DeckCategory get category;
  @override
  bool get isPrivate;
  @override
  bool get availableQuickTrain;
  @override
  int get cardsCount;
  @override
  int get subscribersCount;
  @override
  List<MDEUser> get subscribers;
  @override
  List<MDECard> get cardsList;
  @override
  _$MDEDeckCopyWith<_MDEDeck> get copyWith;
}
