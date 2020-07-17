import 'dart:convert';

import 'package:floor/floor.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mydeck/generated/l10n.dart';

part 'deck_category.freezed.dart';
part 'deck_category.g.dart';

final List<DeckCategory> kDefaultCategories = [
  DeckCategory(categoryName: 'Math'),
  DeckCategory(categoryName: 'Foreign Languages'),
  DeckCategory(categoryName: 'Chemistry'),
  DeckCategory(categoryName: 'Physics'),
  DeckCategory(categoryName: 'Art'),
  DeckCategory(categoryName: 'IT'),
  DeckCategory(categoryName: 'Others'),
];

@freezed
abstract class DeckCategory implements _$DeckCategory {
  const DeckCategory._();
  const factory DeckCategory({@required String categoryName}) = _DeckCategory;

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

  factory DeckCategory.fromJson(Map<String, dynamic> json) =>
      _$DeckCategoryFromJson(json);
}
