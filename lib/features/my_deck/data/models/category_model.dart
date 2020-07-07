import 'dart:convert';

import 'package:floor/floor.dart';
import 'package:flutter/widgets.dart';
import 'package:mydeck/generated/l10n.dart';

final List<CategoryModel> kDefaultCategories = [
  CategoryModel('Math'),
  CategoryModel('Foreign Languages'),
  CategoryModel('Chemistry'),
  CategoryModel('Physics'),
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

  String getLocale(BuildContext context) {
    var resourse = 'Others';
    switch (categoryName) {
      case 'Others':
        resourse = S.of(context).category_others;
        break;
      case 'Math':
        resourse = S.of(context).category_math;
        break;
      case 'Physics':
        resourse = S.of(context).category_physics;
        break;
      case 'Foreign Languages':
        resourse = S.of(context).category_FL;
        break;
      case 'Chemistry':
        resourse = S.of(context).category_chemistry;
        break;
      case 'Art':
        resourse = S.of(context).category_art;
        break;
      case 'IT':
        resourse = S.of(context).category_IT;
        break;
    }
    return resourse;
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
