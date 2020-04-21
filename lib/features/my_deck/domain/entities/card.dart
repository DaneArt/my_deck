import 'dart:io';


import 'package:meta/meta.dart';

import 'package:equatable/equatable.dart';
import 'package:mydeck/features/my_deck/data/models/card_model.dart';
import 'package:uuid/uuid.dart';

import 'card_content.dart';

class Card extends Equatable {
  final String cardId;
  final CardContent answer;
  final CardContent question;
  final int wins;
  final int trains;
  final int level;
  final DateTime lastTrain;

  Card(
      {@required this.cardId,
      @required this.answer,
      @required this.question,
      @required this.wins,
      @required this.trains,
      @required this.level,
      @required this.lastTrain});

  @override
  List<Object> get props =>
      [cardId, answer, question, wins, trains, level, lastTrain];

  CardContent _mapModelToEntitiy(String model) {
    if (model.isEmpty) {
      return CardContent.noContent();
    } else if (model.contains('/media/')) {
      return CardContent.imageContent(image: File(model));
    } else {
      return CardContent.textContent(text: model);
    }
  }

  factory Card.fromModel(CardModel model) => Card(
        cardId: model.cardId,
        answer: CardContent.fromModel(model.answer),
        question: CardContent.fromModel(model.question),
        wins: model.wins,
        trains: model.trains,
        level: model.lvl,
        lastTrain: DateTime.parse(model.lastTrain),
      );

  CardModel toModel(String parentDeckId) => CardModel(
        cardId,
        answer.model,
        question.model,
        wins,
        trains,
        level,
        lastTrain.toIso8601String(),
        parentDeckId,
      );

  factory Card.createDefault() => Card(
      cardId: Uuid().v4(),
      answer: NoContent(),
      question: NoContent(),
      wins: 0,
      trains: 0,
      level: 1,
      lastTrain: DateTime.fromMicrosecondsSinceEpoch(0));

  Card copyWith({
    String cardId,
    CardContent answer,
    CardContent question,
    int wins,
    int trains,
    int level,
    int lastTrain,
  }) {
    return Card(
      cardId: cardId ?? this.cardId,
      answer: answer ?? this.answer,
      question: question ?? this.question,
      wins: wins ?? this.wins,
      trains: trains ?? this.trains,
      level: level ?? this.level,
      lastTrain: lastTrain ?? this.lastTrain,
    );
  }
}
