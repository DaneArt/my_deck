// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deck_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeckDto _$_$_DeckDtoFromJson(Map<String, dynamic> json) {
  return _$_DeckDto(
    id: json['deck_id'] as String,
    title: json['title'] as String,
    avatar: json['icon'] == null
        ? null
        : FileDto.fromJson(json['icon'] as Map<String, dynamic>),
    description: json['description'] as String,
    subscribersCount: json['subscribers_count'] as int,
    subscribers: (json['subscribers'] as List)
        ?.map((e) =>
            e == null ? null : UserModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    cardsCount: json['cards_count'] as int,
    cardDtos: (json['cards'] as List)
        ?.map((e) =>
            e == null ? null : CardDto.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    categoryName: json['category_name'] as String,
    isPrivate: json['is_private'] as bool,
    authorId: json['author'] as String,
  );
}

Map<String, dynamic> _$_$_DeckDtoToJson(_$_DeckDto instance) =>
    <String, dynamic>{
      'deck_id': instance.id,
      'title': instance.title,
      'icon': instance.avatar,
      'description': instance.description,
      'subscribers_count': instance.subscribersCount,
      'subscribers': instance.subscribers,
      'cards_count': instance.cardsCount,
      'cards': instance.cardDtos,
      'category_name': instance.categoryName,
      'is_private': instance.isPrivate,
      'author': instance.authorId,
    };
