// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'deck.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$DeckTearOff {
  const _$DeckTearOff();

  _Deck call(
      {@required UniqueId deckId,
      @required DeckTitle title,
      @required DeckAvatar avatar,
      @required DeckDescription description,
      @required UserModel author,
      @required DeckCategory category,
      @required bool isPrivate,
      @required bool availableQuickTrain,
      int cardsCount,
      int subscribersCount,
      List<UserModel> subscribers,
      List<Card> cardsList}) {
    return _Deck(
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
const $Deck = _$DeckTearOff();

mixin _$Deck {
  UniqueId get deckId;
  DeckTitle get title;
  DeckAvatar get avatar;
  DeckDescription get description;
  UserModel get author;
  DeckCategory get category;
  bool get isPrivate;
  bool get availableQuickTrain;
  int get cardsCount;
  int get subscribersCount;
  List<UserModel> get subscribers;
  List<Card> get cardsList;

  $DeckCopyWith<Deck> get copyWith;
}

abstract class $DeckCopyWith<$Res> {
  factory $DeckCopyWith(Deck value, $Res Function(Deck) then) =
      _$DeckCopyWithImpl<$Res>;
  $Res call(
      {UniqueId deckId,
      DeckTitle title,
      DeckAvatar avatar,
      DeckDescription description,
      UserModel author,
      DeckCategory category,
      bool isPrivate,
      bool availableQuickTrain,
      int cardsCount,
      int subscribersCount,
      List<UserModel> subscribers,
      List<Card> cardsList});

  $DeckCategoryCopyWith<$Res> get category;
}

class _$DeckCopyWithImpl<$Res> implements $DeckCopyWith<$Res> {
  _$DeckCopyWithImpl(this._value, this._then);

  final Deck _value;
  // ignore: unused_field
  final $Res Function(Deck) _then;

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
      author: author == freezed ? _value.author : author as UserModel,
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
          : subscribers as List<UserModel>,
      cardsList:
          cardsList == freezed ? _value.cardsList : cardsList as List<Card>,
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

abstract class _$DeckCopyWith<$Res> implements $DeckCopyWith<$Res> {
  factory _$DeckCopyWith(_Deck value, $Res Function(_Deck) then) =
      __$DeckCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId deckId,
      DeckTitle title,
      DeckAvatar avatar,
      DeckDescription description,
      UserModel author,
      DeckCategory category,
      bool isPrivate,
      bool availableQuickTrain,
      int cardsCount,
      int subscribersCount,
      List<UserModel> subscribers,
      List<Card> cardsList});

  @override
  $DeckCategoryCopyWith<$Res> get category;
}

class __$DeckCopyWithImpl<$Res> extends _$DeckCopyWithImpl<$Res>
    implements _$DeckCopyWith<$Res> {
  __$DeckCopyWithImpl(_Deck _value, $Res Function(_Deck) _then)
      : super(_value, (v) => _then(v as _Deck));

  @override
  _Deck get _value => super._value as _Deck;

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
    return _then(_Deck(
      deckId: deckId == freezed ? _value.deckId : deckId as UniqueId,
      title: title == freezed ? _value.title : title as DeckTitle,
      avatar: avatar == freezed ? _value.avatar : avatar as DeckAvatar,
      description: description == freezed
          ? _value.description
          : description as DeckDescription,
      author: author == freezed ? _value.author : author as UserModel,
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
          : subscribers as List<UserModel>,
      cardsList:
          cardsList == freezed ? _value.cardsList : cardsList as List<Card>,
    ));
  }
}

class _$_Deck extends _Deck {
  const _$_Deck(
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
  final UserModel author;
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
  final List<UserModel> subscribers;
  @override
  final List<Card> cardsList;

  @override
  String toString() {
    return 'Deck(deckId: $deckId, title: $title, avatar: $avatar, description: $description, author: $author, category: $category, isPrivate: $isPrivate, availableQuickTrain: $availableQuickTrain, cardsCount: $cardsCount, subscribersCount: $subscribersCount, subscribers: $subscribers, cardsList: $cardsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Deck &&
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
  _$DeckCopyWith<_Deck> get copyWith =>
      __$DeckCopyWithImpl<_Deck>(this, _$identity);
}

abstract class _Deck extends Deck {
  const _Deck._() : super._();
  const factory _Deck(
      {@required UniqueId deckId,
      @required DeckTitle title,
      @required DeckAvatar avatar,
      @required DeckDescription description,
      @required UserModel author,
      @required DeckCategory category,
      @required bool isPrivate,
      @required bool availableQuickTrain,
      int cardsCount,
      int subscribersCount,
      List<UserModel> subscribers,
      List<Card> cardsList}) = _$_Deck;

  @override
  UniqueId get deckId;
  @override
  DeckTitle get title;
  @override
  DeckAvatar get avatar;
  @override
  DeckDescription get description;
  @override
  UserModel get author;
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
  List<UserModel> get subscribers;
  @override
  List<Card> get cardsList;
  @override
  _$DeckCopyWith<_Deck> get copyWith;
}
