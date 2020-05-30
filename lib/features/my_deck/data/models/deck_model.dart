import 'package:floor/floor.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mydeck/features/sign_in/data/models/user_model.dart';

import 'category_model.dart';

part 'deck_model.g.dart';

@Entity(foreignKeys: [
  ForeignKey(
      entity: CategoryModel,
      childColumns: ['category_name'],
      parentColumns: ['category_name'])
])
@JsonSerializable()
class DeckModel {
  @primaryKey
  @ColumnInfo(name: 'deck_id')
  @JsonKey(name: 'deck_id')
  final String deckId;
  @ColumnInfo(nullable: false)
  final String title;
  @ColumnInfo(nullable: false)
  final String icon;
  @ColumnInfo(nullable: false)
  final String description;
  @ColumnInfo(
    nullable: false,
    name: 'subscribers_count',
  )
  @JsonKey(name: 'subscribers_count')
  final int subscribersCount;
  @JsonKey(name: 'cards_count')
  final int cardsCount;
  @ColumnInfo(nullable: false, name: 'category_name')
  @JsonKey(name: 'category_name')
  final String categoryName;
  @ColumnInfo(nullable: false, name: 'is_private')
  @JsonKey(name: 'is_private')
  final bool isPrivate;
  @ColumnInfo(nullable: false, name: 'author')
  final String author;

  DeckModel(
      this.deckId,
      this.title,
      this.icon,
      this.description,
      this.categoryName,
      this.isPrivate,
      this.author,
      this.subscribersCount,
      this.cardsCount);

  static DeckModel fromJson(Map<String, dynamic> json) =>
      _$DeckModelFromJson(json);

  Map<String, dynamic> toJson() => _$DeckModelToJson(this);

  DeckModel copyWith(
      {String deckId,
      String title,
      String icon,
      String description,
      String categoryName,
      String author,
      bool isPrivate,
      int subscribersCount,
      int cardsCount}) {
    return DeckModel(
        deckId ?? this.deckId,
        title ?? this.title,
        icon ?? this.icon,
        description ?? this.description,
        categoryName ?? this.categoryName,
        isPrivate ?? this.isPrivate,
        author ?? this.author,
        subscribersCount ?? this.subscribersCount,
        cardsCount ?? this.cardsCount);
  }

  @override
  String toString() {
    return 'DeckModel deckId: $deckId, title: $title, icon: $icon, description: $description, categoryName: $categoryName, subscribersCount: $subscribersCount, author: $author';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is DeckModel &&
        o.deckId == deckId &&
        o.title == title &&
        o.icon == icon &&
        o.description == description &&
        o.subscribersCount == subscribersCount &&
        o.categoryName == categoryName &&
        o.author == author;
  }

  @override
  int get hashCode {
    return deckId.hashCode ^
        title.hashCode ^
        icon.hashCode ^
        description.hashCode ^
        subscribersCount.hashCode ^
        categoryName.hashCode ^
        author.hashCode;
  }
}
