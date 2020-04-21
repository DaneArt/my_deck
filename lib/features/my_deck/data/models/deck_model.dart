import 'package:floor/floor.dart';
import 'package:json_annotation/json_annotation.dart';

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
  @JsonKey(ignore: true)
  final int subscribersCount = 0;
  @ColumnInfo(nullable: false, name: 'category_name')
  @JsonKey(name: 'category_name')
  final String categoryName;
  @ColumnInfo(nullable: false, name: 'is_private')
  final bool isPrivate;

  DeckModel(this.deckId, this.title, this.icon, this.description,
      this.categoryName, this.isPrivate);

  static DeckModel fromJson(Map<String, dynamic> json) =>
      _$DeckModelFromJson(json);

  Map<String, dynamic> toJson() => _$DeckModelToJson(this);

  DeckModel copyWith(
      {String deckId,
      String title,
      String icon,
      String description,
      int subscribersCount,
      String categoryName,
      bool isPrivate}) {
    return DeckModel(
        deckId ?? this.deckId,
        title ?? this.title,
        icon ?? this.icon,
        description ?? this.description,
        categoryName ?? this.categoryName,
        isPrivate ?? this.isPrivate);
  }

  @override
  String toString() {
    return 'DeckModel deckId: $deckId, title: $title, icon: $icon, description: $description, categoryName: $categoryName, subscribersCount: $subscribersCount';
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
        o.categoryName == categoryName;
  }

  @override
  int get hashCode {
    return deckId.hashCode ^
        title.hashCode ^
        icon.hashCode ^
        description.hashCode ^
        subscribersCount.hashCode ^
        categoryName.hashCode;
  }
}
