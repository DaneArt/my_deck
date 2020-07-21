import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:mydeck/models/dtos/file_dto.dart';
import 'package:mydeck/models/entitites/deck.dart';
import 'package:mydeck/models/entitites/unique_id.dart';
import 'package:mydeck/models/value_objects/deck_avatar.dart';
import 'package:mydeck/models/value_objects/deck_description.dart';
import 'package:mydeck/models/value_objects/deck_title.dart';
import 'package:mydeck/models/value_objects/user_model.dart';

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
    @required @JsonKey(name: 'icon') FileDto avatar,
    @required String description,
    @JsonKey(name: 'subscribers_count', nullable: true) int subscribersCount,
    @JsonKey(nullable: true) List<UserModel> subscribers,
    @JsonKey(name: 'cards_count', nullable: true) int cardsCount,
    @JsonKey(name: 'cards', nullable: true) List<CardDto> cardDtos,
    @required @JsonKey(name: 'category_name') String categoryName,
    @required @JsonKey(name: 'is_private') bool isPrivate,
    @required @JsonKey(name: 'author') String authorId,
  }) = _DeckDto;

  factory DeckDto.fromDomain(Deck deck) => DeckDto(
      authorId: deck.author.userId,
      categoryName: deck.category.categoryName,
      id: deck.deckId.getOrCrash,
      description: deck.description.getOrCrash,
      avatar: FileDto.fromDomain(deck.avatar.getOrCrash),
      isPrivate: deck.isPrivate,
      title: deck.title.getOrCrash,
      subscribers: deck.subscribers,
      cardDtos: deck.cardsList.map((card) => CardDto.fromDomain(card)).toList(),
      cardsCount: deck.cardsCount,
      subscribersCount: deck.subscribersCount);

  Deck toDomain() => Deck(
      deckId: UniqueId.fromString(id),
      title: DeckTitle(title),
      avatar: DeckAvatar(avatar.toDomain()),
      description: DeckDescription(description),
      author: UserModel(authorId, '', '', ''),
      category: DeckCategory(categoryName: categoryName),
      isPrivate: isPrivate,
      cardsCount: cardsCount,
      subscribersCount: subscribersCount,
      cardsList: cardDtos.map((card) => card.toDomain()).toList());

  factory DeckDto.fromJson(Map<String, dynamic> json) =>
      _$DeckDtoFromJson(json);

  Map<String, dynamic> toJson() => _$_$_DeckDtoToJson(this);
}
