// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardModel _$CardModelFromJson(Map<String, dynamic> json) {
  return CardModel(
    json['Card_Id'] as String,
    json['Answer'] as String,
    json['Question'] as String,
    json['Wins'] as int,
    json['Trains'] as int,
    json['Lvl'] as int,
    json['Last_Train'] as String,
    json['Parent_Deck_Id'] as String,
  );
}

Map<String, dynamic> _$CardModelToJson(CardModel instance) => <String, dynamic>{
      'Card_Id': instance.cardId,
      'Answer': instance.answer,
      'Question': instance.question,
      'Wins': instance.wins,
      'Trains': instance.trains,
      'Lvl': instance.lvl,
      'Last_Train': instance.lastTrain,
      'Parent_Deck_Id': instance.parentDeckId,
    };
