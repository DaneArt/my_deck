// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deck_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeckModel _$DeckModelFromJson(Map<String, dynamic> json) {
  return DeckModel(
    json['deck_id'] as String,
    json['title'] as String,
    json['icon'] as String,
    json['description'] as String,
    json['category_name'] as String,
    json['is_private'] as bool,
    json['author'] as String,
    json['subscribers_count'] as int,
    json['cards_count'] as int,
  );
}

Map<String, dynamic> _$DeckModelToJson(DeckModel instance) => <String, dynamic>{
      'deck_id': instance.deckId,
      'title': instance.title,
      'icon': instance.icon,
      'description': instance.description,
      'subscribers_count': instance.subscribersCount,
      'cards_count': instance.cardsCount,
      'category_name': instance.categoryName,
      'is_private': instance.isPrivate,
      'author': instance.author,
    };
