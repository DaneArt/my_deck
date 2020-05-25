// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'deck.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$DeckTearOff {
  const _$DeckTearOff();

  DeckOnline online(
      {@required int subscribersCount,
      @required String deckId,
      @required String title,
      @required File icon,
      @required String description,
      @required UserModel author,
      @required CategoryModel category,
      @required bool isPrivate,
      @required int cardsCount}) {
    return DeckOnline(
      subscribersCount: subscribersCount,
      deckId: deckId,
      title: title,
      icon: icon,
      description: description,
      author: author,
      category: category,
      isPrivate: isPrivate,
      cardsCount: cardsCount,
    );
  }

  DeckLibrary library(
      {List<UserModel> subscribers,
      @required String deckId,
      @required String title,
      @required File icon,
      @required String description,
      @required UserModel author,
      @required CategoryModel category,
      @required bool isPrivate,
      @required List<Card> cardsList}) {
    return DeckLibrary(
      subscribers: subscribers,
      deckId: deckId,
      title: title,
      icon: icon,
      description: description,
      author: author,
      category: category,
      isPrivate: isPrivate,
      cardsList: cardsList,
    );
  }
}

// ignore: unused_element
const $Deck = _$DeckTearOff();

mixin _$Deck {
  String get deckId;
  String get title;
  File get icon;
  String get description;
  UserModel get author;
  CategoryModel get category;
  bool get isPrivate;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result online(
            int subscribersCount,
            String deckId,
            String title,
            File icon,
            String description,
            UserModel author,
            CategoryModel category,
            bool isPrivate,
            int cardsCount),
    @required
        Result library(
            List<UserModel> subscribers,
            String deckId,
            String title,
            File icon,
            String description,
            UserModel author,
            CategoryModel category,
            bool isPrivate,
            List<Card> cardsList),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result online(
        int subscribersCount,
        String deckId,
        String title,
        File icon,
        String description,
        UserModel author,
        CategoryModel category,
        bool isPrivate,
        int cardsCount),
    Result library(
        List<UserModel> subscribers,
        String deckId,
        String title,
        File icon,
        String description,
        UserModel author,
        CategoryModel category,
        bool isPrivate,
        List<Card> cardsList),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result online(DeckOnline value),
    @required Result library(DeckLibrary value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result online(DeckOnline value),
    Result library(DeckLibrary value),
    @required Result orElse(),
  });

  $DeckCopyWith<Deck> get copyWith;
}

abstract class $DeckCopyWith<$Res> {
  factory $DeckCopyWith(Deck value, $Res Function(Deck) then) =
      _$DeckCopyWithImpl<$Res>;
  $Res call(
      {String deckId,
      String title,
      File icon,
      String description,
      UserModel author,
      CategoryModel category,
      bool isPrivate});
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
    Object icon = freezed,
    Object description = freezed,
    Object author = freezed,
    Object category = freezed,
    Object isPrivate = freezed,
  }) {
    return _then(_value.copyWith(
      deckId: deckId == freezed ? _value.deckId : deckId as String,
      title: title == freezed ? _value.title : title as String,
      icon: icon == freezed ? _value.icon : icon as File,
      description:
          description == freezed ? _value.description : description as String,
      author: author == freezed ? _value.author : author as UserModel,
      category:
          category == freezed ? _value.category : category as CategoryModel,
      isPrivate: isPrivate == freezed ? _value.isPrivate : isPrivate as bool,
    ));
  }
}

abstract class $DeckOnlineCopyWith<$Res> implements $DeckCopyWith<$Res> {
  factory $DeckOnlineCopyWith(
          DeckOnline value, $Res Function(DeckOnline) then) =
      _$DeckOnlineCopyWithImpl<$Res>;
  @override
  $Res call(
      {int subscribersCount,
      String deckId,
      String title,
      File icon,
      String description,
      UserModel author,
      CategoryModel category,
      bool isPrivate,
      int cardsCount});
}

class _$DeckOnlineCopyWithImpl<$Res> extends _$DeckCopyWithImpl<$Res>
    implements $DeckOnlineCopyWith<$Res> {
  _$DeckOnlineCopyWithImpl(DeckOnline _value, $Res Function(DeckOnline) _then)
      : super(_value, (v) => _then(v as DeckOnline));

  @override
  DeckOnline get _value => super._value as DeckOnline;

  @override
  $Res call({
    Object subscribersCount = freezed,
    Object deckId = freezed,
    Object title = freezed,
    Object icon = freezed,
    Object description = freezed,
    Object author = freezed,
    Object category = freezed,
    Object isPrivate = freezed,
    Object cardsCount = freezed,
  }) {
    return _then(DeckOnline(
      subscribersCount: subscribersCount == freezed
          ? _value.subscribersCount
          : subscribersCount as int,
      deckId: deckId == freezed ? _value.deckId : deckId as String,
      title: title == freezed ? _value.title : title as String,
      icon: icon == freezed ? _value.icon : icon as File,
      description:
          description == freezed ? _value.description : description as String,
      author: author == freezed ? _value.author : author as UserModel,
      category:
          category == freezed ? _value.category : category as CategoryModel,
      isPrivate: isPrivate == freezed ? _value.isPrivate : isPrivate as bool,
      cardsCount: cardsCount == freezed ? _value.cardsCount : cardsCount as int,
    ));
  }
}

class _$DeckOnline implements DeckOnline {
  _$DeckOnline(
      {@required this.subscribersCount,
      @required this.deckId,
      @required this.title,
      @required this.icon,
      @required this.description,
      @required this.author,
      @required this.category,
      @required this.isPrivate,
      @required this.cardsCount})
      : assert(subscribersCount != null),
        assert(deckId != null),
        assert(title != null),
        assert(icon != null),
        assert(description != null),
        assert(author != null),
        assert(category != null),
        assert(isPrivate != null),
        assert(cardsCount != null);

  @override
  final int subscribersCount;
  @override
  final String deckId;
  @override
  final String title;
  @override
  final File icon;
  @override
  final String description;
  @override
  final UserModel author;
  @override
  final CategoryModel category;
  @override
  final bool isPrivate;
  @override
  final int cardsCount;

  bool _didmodel = false;
  DeckModel _model;

  @override
  DeckModel get model {
    if (_didmodel == false) {
      _didmodel = true;
      _model = this.map(
          online: (d) => DeckModel(
                d.deckId,
                d.title,
                d.icon.path,
                d.description,
                d.category.categoryName,
                d.isPrivate,
                d.author.userId,
                d.subscribersCount,
                d.cardsCount,
              ),
          library: (d) => DeckModel(
              d.deckId,
              d.title,
              d.icon.path,
              d.description,
              d.category.categoryName,
              d.isPrivate,
              d.author.userId,
              d.subscribers.length,
              d.cardsList.length));
    }
    return _model;
  }

  @override
  String toString() {
    return 'Deck.online(subscribersCount: $subscribersCount, deckId: $deckId, title: $title, icon: $icon, description: $description, author: $author, category: $category, isPrivate: $isPrivate, cardsCount: $cardsCount, model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeckOnline &&
            (identical(other.subscribersCount, subscribersCount) ||
                const DeepCollectionEquality()
                    .equals(other.subscribersCount, subscribersCount)) &&
            (identical(other.deckId, deckId) ||
                const DeepCollectionEquality().equals(other.deckId, deckId)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
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
            (identical(other.cardsCount, cardsCount) ||
                const DeepCollectionEquality()
                    .equals(other.cardsCount, cardsCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(subscribersCount) ^
      const DeepCollectionEquality().hash(deckId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(isPrivate) ^
      const DeepCollectionEquality().hash(cardsCount);

  @override
  $DeckOnlineCopyWith<DeckOnline> get copyWith =>
      _$DeckOnlineCopyWithImpl<DeckOnline>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result online(
            int subscribersCount,
            String deckId,
            String title,
            File icon,
            String description,
            UserModel author,
            CategoryModel category,
            bool isPrivate,
            int cardsCount),
    @required
        Result library(
            List<UserModel> subscribers,
            String deckId,
            String title,
            File icon,
            String description,
            UserModel author,
            CategoryModel category,
            bool isPrivate,
            List<Card> cardsList),
  }) {
    assert(online != null);
    assert(library != null);
    return online(subscribersCount, deckId, title, icon, description, author,
        category, isPrivate, cardsCount);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result online(
        int subscribersCount,
        String deckId,
        String title,
        File icon,
        String description,
        UserModel author,
        CategoryModel category,
        bool isPrivate,
        int cardsCount),
    Result library(
        List<UserModel> subscribers,
        String deckId,
        String title,
        File icon,
        String description,
        UserModel author,
        CategoryModel category,
        bool isPrivate,
        List<Card> cardsList),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (online != null) {
      return online(subscribersCount, deckId, title, icon, description, author,
          category, isPrivate, cardsCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result online(DeckOnline value),
    @required Result library(DeckLibrary value),
  }) {
    assert(online != null);
    assert(library != null);
    return online(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result online(DeckOnline value),
    Result library(DeckLibrary value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (online != null) {
      return online(this);
    }
    return orElse();
  }
}

abstract class DeckOnline implements Deck {
  factory DeckOnline(
      {@required int subscribersCount,
      @required String deckId,
      @required String title,
      @required File icon,
      @required String description,
      @required UserModel author,
      @required CategoryModel category,
      @required bool isPrivate,
      @required int cardsCount}) = _$DeckOnline;

  int get subscribersCount;
  @override
  String get deckId;
  @override
  String get title;
  @override
  File get icon;
  @override
  String get description;
  @override
  UserModel get author;
  @override
  CategoryModel get category;
  @override
  bool get isPrivate;
  int get cardsCount;
  @override
  $DeckOnlineCopyWith<DeckOnline> get copyWith;
}

abstract class $DeckLibraryCopyWith<$Res> implements $DeckCopyWith<$Res> {
  factory $DeckLibraryCopyWith(
          DeckLibrary value, $Res Function(DeckLibrary) then) =
      _$DeckLibraryCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<UserModel> subscribers,
      String deckId,
      String title,
      File icon,
      String description,
      UserModel author,
      CategoryModel category,
      bool isPrivate,
      List<Card> cardsList});
}

class _$DeckLibraryCopyWithImpl<$Res> extends _$DeckCopyWithImpl<$Res>
    implements $DeckLibraryCopyWith<$Res> {
  _$DeckLibraryCopyWithImpl(
      DeckLibrary _value, $Res Function(DeckLibrary) _then)
      : super(_value, (v) => _then(v as DeckLibrary));

  @override
  DeckLibrary get _value => super._value as DeckLibrary;

  @override
  $Res call({
    Object subscribers = freezed,
    Object deckId = freezed,
    Object title = freezed,
    Object icon = freezed,
    Object description = freezed,
    Object author = freezed,
    Object category = freezed,
    Object isPrivate = freezed,
    Object cardsList = freezed,
  }) {
    return _then(DeckLibrary(
      subscribers: subscribers == freezed
          ? _value.subscribers
          : subscribers as List<UserModel>,
      deckId: deckId == freezed ? _value.deckId : deckId as String,
      title: title == freezed ? _value.title : title as String,
      icon: icon == freezed ? _value.icon : icon as File,
      description:
          description == freezed ? _value.description : description as String,
      author: author == freezed ? _value.author : author as UserModel,
      category:
          category == freezed ? _value.category : category as CategoryModel,
      isPrivate: isPrivate == freezed ? _value.isPrivate : isPrivate as bool,
      cardsList:
          cardsList == freezed ? _value.cardsList : cardsList as List<Card>,
    ));
  }
}

class _$DeckLibrary implements DeckLibrary {
  _$DeckLibrary(
      {this.subscribers,
      @required this.deckId,
      @required this.title,
      @required this.icon,
      @required this.description,
      @required this.author,
      @required this.category,
      @required this.isPrivate,
      @required this.cardsList})
      : assert(deckId != null),
        assert(title != null),
        assert(icon != null),
        assert(description != null),
        assert(author != null),
        assert(category != null),
        assert(isPrivate != null),
        assert(cardsList != null);

  @override
  final List<UserModel> subscribers;
  @override
  final String deckId;
  @override
  final String title;
  @override
  final File icon;
  @override
  final String description;
  @override
  final UserModel author;
  @override
  final CategoryModel category;
  @override
  final bool isPrivate;
  @override
  final List<Card> cardsList;

  bool _didmodel = false;
  DeckModel _model;

  @override
  DeckModel get model {
    if (_didmodel == false) {
      _didmodel = true;
      _model = this.map(
          online: (d) => DeckModel(
                d.deckId,
                d.title,
                d.icon.path,
                d.description,
                d.category.categoryName,
                d.isPrivate,
                d.author.userId,
                d.subscribersCount,
                d.cardsCount,
              ),
          library: (d) => DeckModel(
              d.deckId,
              d.title,
              d.icon.path,
              d.description,
              d.category.categoryName,
              d.isPrivate,
              d.author.userId,
              d.subscribers.length,
              d.cardsList.length));
    }
    return _model;
  }

  @override
  String toString() {
    return 'Deck.library(subscribers: $subscribers, deckId: $deckId, title: $title, icon: $icon, description: $description, author: $author, category: $category, isPrivate: $isPrivate, cardsList: $cardsList, model: $model)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeckLibrary &&
            (identical(other.subscribers, subscribers) ||
                const DeepCollectionEquality()
                    .equals(other.subscribers, subscribers)) &&
            (identical(other.deckId, deckId) ||
                const DeepCollectionEquality().equals(other.deckId, deckId)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
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
            (identical(other.cardsList, cardsList) ||
                const DeepCollectionEquality()
                    .equals(other.cardsList, cardsList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(subscribers) ^
      const DeepCollectionEquality().hash(deckId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(isPrivate) ^
      const DeepCollectionEquality().hash(cardsList);

  @override
  $DeckLibraryCopyWith<DeckLibrary> get copyWith =>
      _$DeckLibraryCopyWithImpl<DeckLibrary>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result online(
            int subscribersCount,
            String deckId,
            String title,
            File icon,
            String description,
            UserModel author,
            CategoryModel category,
            bool isPrivate,
            int cardsCount),
    @required
        Result library(
            List<UserModel> subscribers,
            String deckId,
            String title,
            File icon,
            String description,
            UserModel author,
            CategoryModel category,
            bool isPrivate,
            List<Card> cardsList),
  }) {
    assert(online != null);
    assert(library != null);
    return library(subscribers, deckId, title, icon, description, author,
        category, isPrivate, cardsList);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result online(
        int subscribersCount,
        String deckId,
        String title,
        File icon,
        String description,
        UserModel author,
        CategoryModel category,
        bool isPrivate,
        int cardsCount),
    Result library(
        List<UserModel> subscribers,
        String deckId,
        String title,
        File icon,
        String description,
        UserModel author,
        CategoryModel category,
        bool isPrivate,
        List<Card> cardsList),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (library != null) {
      return library(subscribers, deckId, title, icon, description, author,
          category, isPrivate, cardsList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result online(DeckOnline value),
    @required Result library(DeckLibrary value),
  }) {
    assert(online != null);
    assert(library != null);
    return library(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result online(DeckOnline value),
    Result library(DeckLibrary value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (library != null) {
      return library(this);
    }
    return orElse();
  }
}

abstract class DeckLibrary implements Deck {
  factory DeckLibrary(
      {List<UserModel> subscribers,
      @required String deckId,
      @required String title,
      @required File icon,
      @required String description,
      @required UserModel author,
      @required CategoryModel category,
      @required bool isPrivate,
      @required List<Card> cardsList}) = _$DeckLibrary;

  List<UserModel> get subscribers;
  @override
  String get deckId;
  @override
  String get title;
  @override
  File get icon;
  @override
  String get description;
  @override
  UserModel get author;
  @override
  CategoryModel get category;
  @override
  bool get isPrivate;
  List<Card> get cardsList;
  @override
  $DeckLibraryCopyWith<DeckLibrary> get copyWith;
}
