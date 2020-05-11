// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deck_with_cards_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeckWithCardModels _$DeckWithCardModelsFromJson(Map<String, dynamic> json) {
  return DeckWithCardModels(
    json['deckModel'] == null
        ? null
        : DeckModel.fromJson(json['deckModel'] as Map<String, dynamic>),
    (json['cardModels'] as List)
        ?.map((e) =>
            e == null ? null : CardModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$DeckWithCardModelsToJson(DeckWithCardModels instance) =>
    <String, dynamic>{
      'deckModel': instance.deckModel,
      'cardModels': instance.cardModels,
    };
