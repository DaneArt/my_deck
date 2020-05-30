import 'package:freezed_annotation/freezed_annotation.dart';

import 'card_model.dart';
import 'deck_model.dart';

part 'deck_with_cards_model.g.dart';

@JsonSerializable()
class DeckWithCardModels  {
  final DeckModel deckModel;
  final List<CardModel> cardModels;

  DeckWithCardModels(this.deckModel, this.cardModels);

  static DeckWithCardModels fromJson(Map<String, dynamic> json) =>
      _$DeckWithCardModelsFromJson(json);

  Map<String, dynamic> toJson() => _$DeckWithCardModelsToJson(this);
}
