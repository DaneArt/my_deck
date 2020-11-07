
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mydeck/models/dtos/file_dto.dart';
import 'package:mydeck/models/entitites/mde_deck.dart';
import 'package:mydeck/models/value_objects/deck_avatar.dart';
import 'package:mydeck/models/value_objects/deck_description.dart';
import 'package:mydeck/models/value_objects/deck_title.dart';
import 'package:mydeck/models/dtos/user_dto.dart';
import 'package:mydeck/models/value_objects/unique_id.dart';
import 'package:mydeck/utils/file_factory.dart';

import 'card_dto.dart';
import 'deck_category.dart';

part 'deck_dto.freezed.dart';
part 'deck_dto.g.dart';

@freezed
abstract class DeckDto implements _$DeckDto {
  const DeckDto._();

  const factory DeckDto({
    @required @JsonKey(name: 'deck_id') String id,
    @required String title,
    @required @DeckAvatarConverter() @JsonKey(name: 'icon') MDFileDto avatar,
    @required String description,
    @JsonKey(name: 'subscribers_count', nullable: true) int subscribersCount,
    @JsonKey(nullable: true, ignore: true) List<UserDto> subscribers,
    @JsonKey(name: 'cards_count', nullable: true) int cardsCount,
    @JsonKey(name: 'cards', nullable: true) List<CardDto> cardDtos,
    @required @JsonKey(name: 'category_name') String categoryName,
    @required @JsonKey(name: 'is_private') bool isPrivate,
    @required @JsonKey(name: 'author') String authorId,
    @required @JsonKey(name: 'available_quick_train') bool availableQuickTrain,
  }) = _DeckDto;

  factory DeckDto.fromDomain(MDEDeck deck) => DeckDto(
      authorId: deck.author.userId.getOrCrash,
      categoryName: deck.category.categoryName,
      id: deck.deckId.getOrCrash,
      description: deck.description.getOrCrash,
      avatar: MDFileDto.fromDomain(deck.avatar.getOrCrash),
      isPrivate: deck.isPrivate,
      title: deck.title.getOrCrash,
      subscribers: deck?.subscribers?.map((e) => UserDto(
            userId: e.userId.getOrCrash,
            avatar: e.avatar.uniqueId.getOrCrash,
            email: e.email.getOrCrash,
            password: [],
            username: e.username.getOrCrash,
          )),
      cardDtos:
          deck?.cardsList?.map((card) => CardDto.fromDomain(card))?.toList(),
      cardsCount: deck.cardsCount,
      subscribersCount: deck.subscribersCount,
      availableQuickTrain: deck.availableQuickTrain);

  MDEDeck toDomain() => MDEDeck(
      deckId: UniqueId.fromString(id),
      title: DeckTitle(title),
      avatar: DeckAvatar(avatar.toDomain()),
      description: DeckDescription(description),
      author: UserDto(userId: authorId, username: '', email: '', avatar: '')
          .toDomain(),
      category: DeckCategory(categoryName: categoryName),
      isPrivate: isPrivate,
      cardsCount: cardsCount,
      subscribersCount: subscribersCount,
      cardsList: cardDtos?.map((card) => card.toDomain())?.toList(),
      availableQuickTrain: availableQuickTrain);

  factory DeckDto.fromJson(Map<String, dynamic> json) =>
      _$DeckDtoFromJson(json);

  Map<String, dynamic> toJson() => _$_$_DeckDtoToJson(this);
}

class DeckAvatarConverter implements JsonConverter<MDFileDto, Object> {
  const DeckAvatarConverter();

  @override
  MDFileDto fromJson(Object json) {
    return MDFileDto(
        file: ImageFileFactory().create(json), id: json, type: FileType.IMAGE);
  }

  @override
  Object toJson(MDFileDto fieldValue) => fieldValue.id;
}
