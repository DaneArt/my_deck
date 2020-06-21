// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CardDto _$_$_CardDtoFromJson(Map<String, dynamic> json) {
  return _$_CardDto(
    cardId: json['card_id'] as String,
    answer: const CardContentConverter().fromJson(json['answer']),
    question: const CardContentConverter().fromJson(json['question']),
  );
}

Map<String, dynamic> _$_$_CardDtoToJson(_$_CardDto instance) =>
    <String, dynamic>{
      'card_id': instance.cardId,
      'answer': const CardContentConverter().toJson(instance.answer),
      'question': const CardContentConverter().toJson(instance.question),
    };
