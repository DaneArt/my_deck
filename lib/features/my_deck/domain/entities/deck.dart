import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:mydeck/features/my_deck/data/models/category_model.dart';
import 'package:mydeck/features/my_deck/data/models/deck_model.dart';


import 'card.dart';

class Deck extends Equatable {
  final String deckId;
  final String title;
  final File icon;
  final String description;
  final int subscribersCount;
  final CategoryModel category;
  final bool isPrivate;
  final List<Card> cardsList;

  Deck({
    @required this.deckId,
    @required this.title,
    @required this.icon,
    @required this.description,
    this.subscribersCount = 0,
    @required this.category,
    @required this.isPrivate,
    @required this.cardsList,
  }) : assert(deckId != null);

  @override
  List<Object> get props => [
        deckId,
        title,
        icon,
        description,
        subscribersCount,
        cardsList,
        category,
        isPrivate
      ];

  factory Deck.fromModel(DeckModel model) => Deck(
      deckId: model.deckId,
      title: model.title,
      icon: File(model.icon),
      cardsList: [],
      category: CategoryModel(model.categoryName),
      description: model.description,
      subscribersCount: model.subscribersCount,
      isPrivate: model.isPrivate);

  DeckModel toModel() =>
      DeckModel(
        deckId,
        title,
        icon.path,
        description,
        category.categoryName,
        isPrivate,
      );

  Deck copyWith({
    String deckId,
    String title,
    File icon,
    String description,
    int subscribersCount,
    CategoryModel category,
    bool isPrivate,
    List<Card> cardsList,
  }) {
    return Deck(
      deckId: deckId ?? this.deckId,
      title: title ?? this.title,
      icon: icon ?? this.icon,
      description: description ?? this.description,
      subscribersCount: subscribersCount ?? this.subscribersCount,
      category: category ?? this.category,
      isPrivate: isPrivate ?? this.isPrivate,
      cardsList: cardsList ?? this.cardsList,
    );
  }

  @override
  String toString() {
    return 'Deck deckId: $deckId, title: $title, icon: $icon, description: $description, subscribersCount: $subscribersCount, category: $category, isPrivate: $isPrivate, cardsList: $cardsList';
  }
}
