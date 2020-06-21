// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'deck_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
DeckDto _$DeckDtoFromJson(Map<String, dynamic> json) {
  return _DeckDto.fromJson(json);
}

class _$DeckDtoTearOff {
  const _$DeckDtoTearOff();

  _DeckDto call(
      {@required @JsonKey(name: 'deck_id') String deckId,
      @required String title,
      @required @DeckAvatarConverter() @JsonKey(name: 'icon') String avatar,
      @required String description,
      @required @JsonKey(name: 'subscribers_count') int subscribersCount,
      @required List<UserModel> subscribers,
      @required @JsonKey(name: 'cards_count') int cardsCount,
      @required @JsonKey(name: 'cards') List<CardDto> cardDtos,
      @required @JsonKey(name: 'category_name') String categoryName,
      @required @JsonKey(name: 'is_private') bool isPrivate,
      @required @JsonKey(name: 'author') String authorId}) {
    return _DeckDto(
      deckId: deckId,
      title: title,
      avatar: avatar,
      description: description,
      subscribersCount: subscribersCount,
      subscribers: subscribers,
      cardsCount: cardsCount,
      cardDtos: cardDtos,
      categoryName: categoryName,
      isPrivate: isPrivate,
      authorId: authorId,
    );
  }
}

// ignore: unused_element
const $DeckDto = _$DeckDtoTearOff();

mixin _$DeckDto {
  @JsonKey(name: 'deck_id')
  String get deckId;
  String get title;
  @DeckAvatarConverter()
  @JsonKey(name: 'icon')
  String get avatar;
  String get description;
  @JsonKey(name: 'subscribers_count')
  int get subscribersCount;
  List<UserModel> get subscribers;
  @JsonKey(name: 'cards_count')
  int get cardsCount;
  @JsonKey(name: 'cards')
  List<CardDto> get cardDtos;
  @JsonKey(name: 'category_name')
  String get categoryName;
  @JsonKey(name: 'is_private')
  bool get isPrivate;
  @JsonKey(name: 'author')
  String get authorId;

  Map<String, dynamic> toJson();
  $DeckDtoCopyWith<DeckDto> get copyWith;
}

abstract class $DeckDtoCopyWith<$Res> {
  factory $DeckDtoCopyWith(DeckDto value, $Res Function(DeckDto) then) =
      _$DeckDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'deck_id') String deckId,
      String title,
      @DeckAvatarConverter() @JsonKey(name: 'icon') String avatar,
      String description,
      @JsonKey(name: 'subscribers_count') int subscribersCount,
      List<UserModel> subscribers,
      @JsonKey(name: 'cards_count') int cardsCount,
      @JsonKey(name: 'cards') List<CardDto> cardDtos,
      @JsonKey(name: 'category_name') String categoryName,
      @JsonKey(name: 'is_private') bool isPrivate,
      @JsonKey(name: 'author') String authorId});
}

class _$DeckDtoCopyWithImpl<$Res> implements $DeckDtoCopyWith<$Res> {
  _$DeckDtoCopyWithImpl(this._value, this._then);

  final DeckDto _value;
  // ignore: unused_field
  final $Res Function(DeckDto) _then;

  @override
  $Res call({
    Object deckId = freezed,
    Object title = freezed,
    Object avatar = freezed,
    Object description = freezed,
    Object subscribersCount = freezed,
    Object subscribers = freezed,
    Object cardsCount = freezed,
    Object cardDtos = freezed,
    Object categoryName = freezed,
    Object isPrivate = freezed,
    Object authorId = freezed,
  }) {
    return _then(_value.copyWith(
      deckId: deckId == freezed ? _value.deckId : deckId as String,
      title: title == freezed ? _value.title : title as String,
      avatar: avatar == freezed ? _value.avatar : avatar as String,
      description:
          description == freezed ? _value.description : description as String,
      subscribersCount: subscribersCount == freezed
          ? _value.subscribersCount
          : subscribersCount as int,
      subscribers: subscribers == freezed
          ? _value.subscribers
          : subscribers as List<UserModel>,
      cardsCount: cardsCount == freezed ? _value.cardsCount : cardsCount as int,
      cardDtos:
          cardDtos == freezed ? _value.cardDtos : cardDtos as List<CardDto>,
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName as String,
      isPrivate: isPrivate == freezed ? _value.isPrivate : isPrivate as bool,
      authorId: authorId == freezed ? _value.authorId : authorId as String,
    ));
  }
}

abstract class _$DeckDtoCopyWith<$Res> implements $DeckDtoCopyWith<$Res> {
  factory _$DeckDtoCopyWith(_DeckDto value, $Res Function(_DeckDto) then) =
      __$DeckDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'deck_id') String deckId,
      String title,
      @DeckAvatarConverter() @JsonKey(name: 'icon') String avatar,
      String description,
      @JsonKey(name: 'subscribers_count') int subscribersCount,
      List<UserModel> subscribers,
      @JsonKey(name: 'cards_count') int cardsCount,
      @JsonKey(name: 'cards') List<CardDto> cardDtos,
      @JsonKey(name: 'category_name') String categoryName,
      @JsonKey(name: 'is_private') bool isPrivate,
      @JsonKey(name: 'author') String authorId});
}

class __$DeckDtoCopyWithImpl<$Res> extends _$DeckDtoCopyWithImpl<$Res>
    implements _$DeckDtoCopyWith<$Res> {
  __$DeckDtoCopyWithImpl(_DeckDto _value, $Res Function(_DeckDto) _then)
      : super(_value, (v) => _then(v as _DeckDto));

  @override
  _DeckDto get _value => super._value as _DeckDto;

  @override
  $Res call({
    Object deckId = freezed,
    Object title = freezed,
    Object avatar = freezed,
    Object description = freezed,
    Object subscribersCount = freezed,
    Object subscribers = freezed,
    Object cardsCount = freezed,
    Object cardDtos = freezed,
    Object categoryName = freezed,
    Object isPrivate = freezed,
    Object authorId = freezed,
  }) {
    return _then(_DeckDto(
      deckId: deckId == freezed ? _value.deckId : deckId as String,
      title: title == freezed ? _value.title : title as String,
      avatar: avatar == freezed ? _value.avatar : avatar as String,
      description:
          description == freezed ? _value.description : description as String,
      subscribersCount: subscribersCount == freezed
          ? _value.subscribersCount
          : subscribersCount as int,
      subscribers: subscribers == freezed
          ? _value.subscribers
          : subscribers as List<UserModel>,
      cardsCount: cardsCount == freezed ? _value.cardsCount : cardsCount as int,
      cardDtos:
          cardDtos == freezed ? _value.cardDtos : cardDtos as List<CardDto>,
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName as String,
      isPrivate: isPrivate == freezed ? _value.isPrivate : isPrivate as bool,
      authorId: authorId == freezed ? _value.authorId : authorId as String,
    ));
  }
}

@JsonSerializable()
class _$_DeckDto extends _DeckDto {
  const _$_DeckDto(
      {@required @JsonKey(name: 'deck_id') this.deckId,
      @required this.title,
      @required @DeckAvatarConverter() @JsonKey(name: 'icon') this.avatar,
      @required this.description,
      @required @JsonKey(name: 'subscribers_count') this.subscribersCount,
      @required this.subscribers,
      @required @JsonKey(name: 'cards_count') this.cardsCount,
      @required @JsonKey(name: 'cards') this.cardDtos,
      @required @JsonKey(name: 'category_name') this.categoryName,
      @required @JsonKey(name: 'is_private') this.isPrivate,
      @required @JsonKey(name: 'author') this.authorId})
      : assert(deckId != null),
        assert(title != null),
        assert(avatar != null),
        assert(description != null),
        assert(subscribersCount != null),
        assert(subscribers != null),
        assert(cardsCount != null),
        assert(cardDtos != null),
        assert(categoryName != null),
        assert(isPrivate != null),
        assert(authorId != null),
        super._();

  factory _$_DeckDto.fromJson(Map<String, dynamic> json) =>
      _$_$_DeckDtoFromJson(json);

  @override
  @JsonKey(name: 'deck_id')
  final String deckId;
  @override
  final String title;
  @override
  @DeckAvatarConverter()
  @JsonKey(name: 'icon')
  final String avatar;
  @override
  final String description;
  @override
  @JsonKey(name: 'subscribers_count')
  final int subscribersCount;
  @override
  final List<UserModel> subscribers;
  @override
  @JsonKey(name: 'cards_count')
  final int cardsCount;
  @override
  @JsonKey(name: 'cards')
  final List<CardDto> cardDtos;
  @override
  @JsonKey(name: 'category_name')
  final String categoryName;
  @override
  @JsonKey(name: 'is_private')
  final bool isPrivate;
  @override
  @JsonKey(name: 'author')
  final String authorId;

  @override
  String toString() {
    return 'DeckDto(deckId: $deckId, title: $title, avatar: $avatar, description: $description, subscribersCount: $subscribersCount, subscribers: $subscribers, cardsCount: $cardsCount, cardDtos: $cardDtos, categoryName: $categoryName, isPrivate: $isPrivate, authorId: $authorId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeckDto &&
            (identical(other.deckId, deckId) ||
                const DeepCollectionEquality().equals(other.deckId, deckId)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.subscribersCount, subscribersCount) ||
                const DeepCollectionEquality()
                    .equals(other.subscribersCount, subscribersCount)) &&
            (identical(other.subscribers, subscribers) ||
                const DeepCollectionEquality()
                    .equals(other.subscribers, subscribers)) &&
            (identical(other.cardsCount, cardsCount) ||
                const DeepCollectionEquality()
                    .equals(other.cardsCount, cardsCount)) &&
            (identical(other.cardDtos, cardDtos) ||
                const DeepCollectionEquality()
                    .equals(other.cardDtos, cardDtos)) &&
            (identical(other.categoryName, categoryName) ||
                const DeepCollectionEquality()
                    .equals(other.categoryName, categoryName)) &&
            (identical(other.isPrivate, isPrivate) ||
                const DeepCollectionEquality()
                    .equals(other.isPrivate, isPrivate)) &&
            (identical(other.authorId, authorId) ||
                const DeepCollectionEquality()
                    .equals(other.authorId, authorId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(deckId) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(avatar) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(subscribersCount) ^
      const DeepCollectionEquality().hash(subscribers) ^
      const DeepCollectionEquality().hash(cardsCount) ^
      const DeepCollectionEquality().hash(cardDtos) ^
      const DeepCollectionEquality().hash(categoryName) ^
      const DeepCollectionEquality().hash(isPrivate) ^
      const DeepCollectionEquality().hash(authorId);

  @override
  _$DeckDtoCopyWith<_DeckDto> get copyWith =>
      __$DeckDtoCopyWithImpl<_DeckDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DeckDtoToJson(this);
  }
}

abstract class _DeckDto extends DeckDto {
  const _DeckDto._() : super._();
  const factory _DeckDto(
      {@required @JsonKey(name: 'deck_id') String deckId,
      @required String title,
      @required @DeckAvatarConverter() @JsonKey(name: 'icon') String avatar,
      @required String description,
      @required @JsonKey(name: 'subscribers_count') int subscribersCount,
      @required List<UserModel> subscribers,
      @required @JsonKey(name: 'cards_count') int cardsCount,
      @required @JsonKey(name: 'cards') List<CardDto> cardDtos,
      @required @JsonKey(name: 'category_name') String categoryName,
      @required @JsonKey(name: 'is_private') bool isPrivate,
      @required @JsonKey(name: 'author') String authorId}) = _$_DeckDto;

  factory _DeckDto.fromJson(Map<String, dynamic> json) = _$_DeckDto.fromJson;

  @override
  @JsonKey(name: 'deck_id')
  String get deckId;
  @override
  String get title;
  @override
  @DeckAvatarConverter()
  @JsonKey(name: 'icon')
  String get avatar;
  @override
  String get description;
  @override
  @JsonKey(name: 'subscribers_count')
  int get subscribersCount;
  @override
  List<UserModel> get subscribers;
  @override
  @JsonKey(name: 'cards_count')
  int get cardsCount;
  @override
  @JsonKey(name: 'cards')
  List<CardDto> get cardDtos;
  @override
  @JsonKey(name: 'category_name')
  String get categoryName;
  @override
  @JsonKey(name: 'is_private')
  bool get isPrivate;
  @override
  @JsonKey(name: 'author')
  String get authorId;
  @override
  _$DeckDtoCopyWith<_DeckDto> get copyWith;
}
