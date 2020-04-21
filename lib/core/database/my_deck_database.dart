import 'dart:async';
import 'package:mydeck/core/database/dao/category_dao.dart';
import 'package:mydeck/features/my_deck/data/models/category_model.dart';
import 'package:floor/floor.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import 'package:mydeck/core/database/dao/card_dao.dart';
import 'package:mydeck/features/my_deck/data/models/card_model.dart';
import 'package:mydeck/features/my_deck/data/models/deck_model.dart';

import 'dao/deck_dao.dart';

part 'my_deck_database.g.dart';

const int DbVersion = 1;

@Database(version: DbVersion, entities: [DeckModel, CardModel, CategoryModel])
abstract class MyDeckDatabase extends FloorDatabase {
  CardDao get cardDao;
  DeckDao get deckDao;
  CategoryDao get categoryDao;
}
