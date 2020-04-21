// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardModel _$CardModelFromJson(Map<String, dynamic> json) {
  return CardModel(
    json['card_id'] as String,
    json['answer'] as String,
    json['question'] as String,
    json['wins'] as int,
    json['trains'] as int,
    json['lvl'] as int,
    json['last_train'] as String,
    json['parent_deck_id'] as String,
  );
}

Map<String, dynamic> _$CardModelToJson(CardModel instance) => <String, dynamic>{
      'card_id': instance.cardId,
      'answer': instance.answer,
      'question': instance.question,
      'wins': instance.wins,
      'trains': instance.trains,
      'lvl': instance.lvl,
      'last_train': instance.lastTrain,
      'parent_deck_id': instance.parentDeckId,
    };
