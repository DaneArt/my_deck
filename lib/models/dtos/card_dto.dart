import 'dart:io';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mydeck/models/dtos/file_dto.dart';
import 'package:mydeck/models/entitites/card.dart';
import 'package:mydeck/models/entitites/md_file.dart';
import 'package:mydeck/models/entitites/unique_id.dart';

part 'card_dto.freezed.dart';
part 'card_dto.g.dart';

@freezed
abstract class CardDto implements _$CardDto {
  const CardDto._();

  const factory CardDto({
    @JsonKey(name: 'card_id') @required String cardId,
    @required @CardContentConverter() MDFileDto answer,
    @required @CardContentConverter() MDFileDto question,
  }) = _CardDto;

  factory CardDto.fromDomain(Card card) => CardDto(
        answer: MDFileDto.fromDomain(card.answer),
        cardId: card.id.getOrCrash,
        question: MDFileDto.fromDomain(card.question),
      );

  Card toDomain() => Card(
      answer: answer.toDomain(),
      id: UniqueId.fromString(cardId),
      question: question.toDomain());

  factory CardDto.fromJson(Map<String, dynamic> json) =>
      _$CardDtoFromJson(json);

  Map<String, dynamic> toJson() => _$_$_CardDtoToJson(this);
}

class CardContentConverter implements JsonConverter<MDFileDto, Object> {
  const CardContentConverter();

  @override
  MDFileDto fromJson(Object json) {
    return MDFileDto(file: null, id: json, type: null);
  }

  @override
  Object toJson(MDFileDto fieldValue) => fieldValue.id;
}
