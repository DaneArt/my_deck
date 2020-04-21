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
    json['isPrivate'] as bool,
  );
}

Map<String, dynamic> _$DeckModelToJson(DeckModel instance) => <String, dynamic>{
      'deck_id': instance.deckId,
      'title': instance.title,
      'icon': instance.icon,
      'description': instance.description,
      'category_name': instance.categoryName,
      'isPrivate': instance.isPrivate,
    };
