
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mydeck/models/dtos/file_dto.dart';
import 'package:mydeck/models/dtos/statistics_dto.dart';
import 'package:mydeck/models/entitites/mde_card.dart';
import 'package:mydeck/models/value_objects/unique_id.dart';

import 'package:mydeck/utils/file_factory.dart';

part 'card_dto.freezed.dart';
part 'card_dto.g.dart';

@freezed
abstract class CardDto implements _$CardDto {
  const CardDto._();

  const factory CardDto({
    @JsonKey(name: 'card_id') @required String cardId,
    @required @CardContentConverter() MDFileDto answer,
    @required @CardContentConverter() MDFileDto question,
    StatisticsDto statisticsDto,
  }) = _CardDto;

  factory CardDto.fromDomain(MDECard card) => CardDto(
        answer: MDFileDto.fromDomain(card.answer),
        cardId: card.id.getOrCrash,
        question: MDFileDto.fromDomain(card.question),
        statisticsDto:
            StatisticsDto?.fromDomain(domain: card.statistics, cardId: card.id),
      );

  MDECard toDomain() => MDECard(
      answer: answer.toDomain(),
      id: UniqueId.fromString(cardId),
      question: question.toDomain(),
      statistics: statisticsDto?.toDomain());

  factory CardDto.fromJson(Map<String, dynamic> json) =>
      _$CardDtoFromJson(json);

  Map<String, dynamic> toJson() => _$_$_CardDtoToJson(this);
}

class CardContentConverter implements JsonConverter<MDFileDto, Object> {
  const CardContentConverter();

  @override
  MDFileDto fromJson(Object json) {
    final type = (json as Map)['type'];
    final id = (json as Map)['id'];
    return MDFileDto(
        file: type == 'image'
            ? ImageFileFactory().create(id)
            : TextFileFactory().create(id),
        id: id,
        type: type == 'image' ? FileType.IMAGE : FileType.TEXT);
  }

  @override
  Object toJson(MDFileDto fieldValue) => fieldValue.id;
}
