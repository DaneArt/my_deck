// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deck_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeckModel _$DeckModelFromJson(Map<String, dynamic> json) {
  return DeckModel(
    json['Deck_Id'] as String,
    json['Title'] as String,
    json['Icon'] as String,
    json['Description'] as String,
    json['Category_Name'] as String,
    json['IsPrivate'] as bool,
    json['Author'] as String,
    json['Subscribers_Count'] as int,
    json['Cards_Count'] as int,
  );
}

Map<String, dynamic> _$DeckModelToJson(DeckModel instance) => <String, dynamic>{
      'Deck_Id': instance.deckId,
      'Title': instance.title,
      'Icon': instance.icon,
      'Description': instance.description,
      'Subscribers_Count': instance.subscribersCount,
      'Cards_Count': instance.cardsCount,
      'Category_Name': instance.categoryName,
      'IsPrivate': instance.isPrivate,
      'Author': instance.author,
    };
