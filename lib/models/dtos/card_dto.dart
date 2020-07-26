import 'dart:io';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mydeck/models/dtos/file_dto.dart';
import 'package:mydeck/models/entitites/card.dart';
import 'package:mydeck/models/entitites/my_deck_file.dart';
import 'package:mydeck/models/entitites/unique_id.dart';

part 'card_dto.freezed.dart';
part 'card_dto.g.dart';

@freezed
abstract class CardDto implements _$CardDto {
  const CardDto._();

  const factory CardDto({
    @JsonKey(name: 'card_id') @required String cardId,
    @required @CardContentConverter() MyDeckFileDto answer,
    @required @CardContentConverter() MyDeckFileDto question,
  }) = _CardDto;

  factory CardDto.fromDomain(Card card) => CardDto(
        answer: MyDeckFileDto.fromDomain(card.answer),
        cardId: card.id.getOrCrash,
        question: MyDeckFileDto.fromDomain(card.question),
      );

  Card toDomain() => Card(
      answer: answer.toDomain(),
      id: UniqueId.fromString(cardId),
      question: question.toDomain());

  factory CardDto.fromJson(Map<String, dynamic> json) =>
      _$CardDtoFromJson(json);

  Map<String, dynamic> toJson() => _$_$_CardDtoToJson(this);
}

class CardContentConverter implements JsonConverter<MyDeckFileDto, Object> {
  const CardContentConverter();

  @override
  MyDeckFileDto fromJson(Object json) {
    return MyDeckFileDto.fromJson(json);
  }

  @override
  Object toJson(MyDeckFileDto fieldValue) => fieldValue.id;
}
