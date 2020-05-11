import 'package:floor/floor.dart';
import 'deck_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'card_model.g.dart';

@Entity(foreignKeys: [
  ForeignKey(
      entity: DeckModel,
      parentColumns: ['deck_id'],
      childColumns: ['parent_deck_id'])
])
@JsonSerializable(nullable: false)
class CardModel {
  @primaryKey
  @ColumnInfo(name: 'card_id')
  @JsonKey(name: 'Card_Id')
  final String cardId;
  @ColumnInfo(nullable: false)
  @JsonKey(name: 'Answer')
  final String answer;
  @ColumnInfo(nullable: false)
  @JsonKey(name: 'Question')
  final String question;
  @ColumnInfo(nullable: false)
  @JsonKey(name: 'Wins')
  final int wins;
  @ColumnInfo(nullable: false)
  @JsonKey(name: 'Trains')
  final int trains;
  @ColumnInfo(nullable: false)
  @JsonKey(name: 'Lvl')
  final int lvl;
  @ColumnInfo(nullable: false, name: "last_train")
  @JsonKey(name: 'Last_Train')
  final String lastTrain;
  @ColumnInfo(nullable: false, name: 'parent_deck_id')
  @JsonKey(name: 'Parent_Deck_Id')
  final String parentDeckId;

  CardModel(
    this.cardId,
    this.answer,
    this.question,
    this.wins,
    this.trains,
    this.lvl,
    this.lastTrain,
    this.parentDeckId,
  );

  static CardModel fromJson(Map<String, dynamic> json) =>
      _$CardModelFromJson(json);

  Map<String, dynamic> toJson() => _$CardModelToJson(this);

  CardModel copyWith({
    String cardId,
    String answer,
    String question,
    int wins,
    int trains,
    int lvl,
    int lastTrain,
    String parentDeckId,
  }) {
    return CardModel(
      cardId ?? this.cardId,
      answer ?? this.answer,
      question ?? this.question,
      wins ?? this.wins,
      trains ?? this.trains,
      lvl ?? this.lvl,
      lastTrain ?? this.lastTrain,
      parentDeckId ?? this.parentDeckId,
    );
  }

  @override
  String toString() {
    return 'CardModel cardId: $cardId, answer: $answer, question: $question, wins: $wins, trains: $trains, lvl: $lvl, lastTrain: $lastTrain, parentDeckId: $parentDeckId';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is CardModel &&
        o.cardId == cardId &&
        o.answer == answer &&
        o.question == question &&
        o.wins == wins &&
        o.trains == trains &&
        o.lvl == lvl &&
        o.lastTrain == lastTrain &&
        o.parentDeckId == parentDeckId;
  }

  @override
  int get hashCode {
    return cardId.hashCode ^
        answer.hashCode ^
        question.hashCode ^
        wins.hashCode ^
        trains.hashCode ^
        lvl.hashCode ^
        lastTrain.hashCode ^
        parentDeckId.hashCode;
  }
}
