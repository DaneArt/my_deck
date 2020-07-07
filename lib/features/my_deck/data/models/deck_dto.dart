import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mydeck/features/editor/domain/value_objects/deck_avatar.dart';
import 'package:mydeck/features/editor/domain/value_objects/deck_description.dart';
import 'package:mydeck/features/editor/domain/value_objects/deck_title.dart';
import 'package:mydeck/features/my_deck/domain/entities/deck.dart';
import 'package:mydeck/features/my_deck/domain/entities/unique_id.dart';
import 'package:mydeck/features/sign_in/data/models/user_model.dart';

import 'card_dto.dart';
import 'category_model.dart';

part 'deck_dto.freezed.dart';
part 'deck_dto.g.dart';

const _kUndefinedCardsCount = -1;
const _kUndefinedSubscribersCount = -1;

@freezed
abstract class DeckDto implements _$DeckDto {
  const DeckDto._();
  const factory DeckDto({
    @required @JsonKey(name: 'deck_id') String deckId,
    @required String title,
    @required @DeckAvatarConverter() @JsonKey(name: 'icon') String avatar,
    @required String description,
    @required @JsonKey(name: 'subscribers_count') int subscribersCount,
    @required List<UserModel> subscribers,
    @required @JsonKey(name: 'cards_count') int cardsCount,
    @required @JsonKey(name: 'cards') List<CardDto> cardDtos,
    @required @JsonKey(name: 'category_name') String categoryName,
    @required @JsonKey(name: 'is_private') bool isPrivate,
    @required @JsonKey(name: 'author') String authorId,
  }) = _DeckDto;

  factory DeckDto.fromDomain(Deck deck) {
    if (deck is DeckLibrary) {
      return DeckDto(
          authorId: deck.author.userId,
          categoryName: deck.category.categoryName,
          deckId: deck.deckId.getOrCrash,
          description: deck.description.getOrCrash,
          avatar: deck.avatar.getOrCrash,
          isPrivate: deck.isPrivate,
          title: deck.title.getOrCrash,
          subscribers: deck.subscribers,
          cardDtos:
              deck.cardsList.map((card) => CardDto.fromDomain(card)).toList(),
          cardsCount: _kUndefinedCardsCount,
          subscribersCount: _kUndefinedSubscribersCount);
    } else if (deck is DeckOnline) {
      return DeckDto(
          authorId: deck.author.userId,
          categoryName: deck.category.categoryName,
          deckId: deck.deckId.getOrCrash,
          description: deck.description.getOrCrash,
          avatar: deck.avatar.getOrCrash,
          isPrivate: deck.isPrivate,
          title: deck.title.getOrCrash,
          subscribers: <UserModel>[],
          cardDtos: <CardDto>[],
          cardsCount: deck.cardsCount,
          subscribersCount: deck.subscribersCount);
    } else {
      throw AssertionError("'deck' is neither 'DeckLibrary' nor 'DeckOnline'");
    }
  }

  Deck toDomain() {
    if (cardsCount == _kUndefinedCardsCount ||
        subscribersCount == _kUndefinedSubscribersCount) {
      return Deck.online(
          subscribersCount: subscribersCount,
          deckId: UniqueId.fromString(deckId),
          title: DeckTitle(title),
          avatar: DeckAvatar(avatar),
          description: DeckDescription(description),
          author: UserModel(authorId, '', '', ''),
          category: CategoryModel(categoryName),
          isPrivate: isPrivate,
          cardsCount: cardsCount);
    } else {
      return Deck.library(
          deckId: UniqueId.fromString(deckId),
          title: DeckTitle(title),
          avatar: DeckAvatar(avatar),
          description: DeckDescription(description),
          author: UserModel(authorId, '', '', ''),
          category: CategoryModel(categoryName),
          isPrivate: isPrivate,
          cardsList: cardDtos.map((card) => card.toDomain()).toList());
    }
  }

  factory DeckDto.fromJson(Map<String, dynamic> json) =>
      _$DeckDtoFromJson(json);

  Map<String, dynamic> toJson() => _$_$_DeckDtoToJson(this);
}

class DeckAvatarConverter implements JsonConverter<String, Object> {
  const DeckAvatarConverter();

  @override
  String fromJson(Object json) {
    // TODO: implement controller path
    return json.toString();
  }

  @override
  Object toJson(String object) {
    return MultipartFile.fromFileSync(object,
        filename:
            "DA_${Random().nextInt(10000)}_${Random().nextInt(10000)}.${object.split('.').last}");
  }
}
