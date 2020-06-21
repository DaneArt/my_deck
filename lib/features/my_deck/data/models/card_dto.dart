import 'dart:io';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mydeck/features/my_deck/domain/entities/card.dart';
import 'package:mydeck/features/my_deck/domain/entities/card_content.dart';
import 'package:mydeck/features/my_deck/domain/entities/unique_id.dart';

part 'card_dto.freezed.dart';
part 'card_dto.g.dart';

@freezed
abstract class CardDto implements _$CardDto {
  const CardDto._();

  const factory CardDto({
    @JsonKey(name: 'card_id') @required String cardId,
    @required @CardContentConverter() String answer,
    @required @CardContentConverter() String question,
  }) = _CardDto;

  factory CardDto.fromDomain(Card card) => CardDto(
      answer: card.answer.model,
      cardId: card.cardId.getOrCrash,
      question: card.question.model);

  Card toDomain() => Card(
      answer: CardContent.fromModel(answer),
      cardId: UniqueId.fromString(cardId),
      question: CardContent.fromModel(question));

  factory CardDto.fromJson(Map<String, dynamic> json) =>
      _$CardDtoFromJson(json);

  Map<String, dynamic> toJson() => _$_$_CardDtoToJson(this);
}

class CardContentConverter implements JsonConverter<String, Object> {
  const CardContentConverter();

  @override
  String fromJson(Object json) {
    //TODO: implement controller route late
    return json.toString();
  }

  @override
  Object toJson(String fieldValue) => File(fieldValue).existsSync()
      ? MultipartFile.fromFile(fieldValue,
          filename:
              'CC_${Random().nextInt(10000)}_${Random().nextInt(10000)}.${fieldValue.split('.').last}')
      : fieldValue;
}
