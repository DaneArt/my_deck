import 'dart:io';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mydeck/features/my_deck/data/models/file_dto.dart';
import 'package:mydeck/features/my_deck/domain/entities/card.dart';
import 'package:mydeck/features/my_deck/domain/entities/my_deck_file.dart';
import 'package:mydeck/features/my_deck/domain/entities/unique_id.dart';

part 'card_dto.freezed.dart';
part 'card_dto.g.dart';

@freezed
abstract class CardDto implements _$CardDto {
  const CardDto._();

  const factory CardDto({
    @JsonKey(name: 'card_id') @required String cardId,
    @required @CardContentConverter() FileDto answer,
    @required @CardContentConverter() FileDto question,
  }) = _CardDto;

  factory CardDto.fromDomain(Card card) => CardDto(
        answer: FileDto.fromDomain(card.answer),
        cardId: card.id.getOrCrash,
        question: FileDto.fromDomain(card.question),
      );

  Card toDomain() => Card(
      answer: answer.toDomain(),
      id: UniqueId.fromString(cardId),
      question: question.toDomain());

  factory CardDto.fromJson(Map<String, dynamic> json) =>
      _$CardDtoFromJson(json);

  Map<String, dynamic> toJson() => _$_$_CardDtoToJson(this);
}

class CardContentConverter implements JsonConverter<FileDto, Object> {
  const CardContentConverter();

  @override
  FileDto fromJson(Object json) {
    return FileDto.fromJson(json);
  }

  @override
  Object toJson(FileDto fieldValue) => fieldValue.id;
}
