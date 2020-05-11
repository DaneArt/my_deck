import 'dart:convert';

import 'package:floor/floor.dart';

final List<CategoryModel> kDefaultCategories = [
  CategoryModel('Math'),
  CategoryModel('Foreign Languages'),
  CategoryModel('Chemistry'),
  CategoryModel('Art'),
  CategoryModel('IT'),
  CategoryModel('Others'),
];

@entity
class CategoryModel {
  @primaryKey
  @ColumnInfo(name: 'category_name')
  final String categoryName;

  CategoryModel(
    this.categoryName,
  );

  CategoryModel copyWith({
    String categoryName,
  }) {
    return CategoryModel(
      categoryName ?? this.categoryName,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'categoryName': categoryName,
    };
  }

  static CategoryModel fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return CategoryModel(
      map['categoryName'],
    );
  }

  String toJson() => json.encode(toMap());

  static CategoryModel fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() => 'CategoryModel categoryName: $categoryName';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is CategoryModel && o.categoryName == categoryName;
  }

  @override
  int get hashCode => categoryName.hashCode;
}
