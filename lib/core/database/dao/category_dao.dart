import 'package:mydeck/features/my_deck/data/models/category_model.dart';
import 'package:floor/floor.dart';

@dao
abstract class CategoryDao {
  @Query('SELECT * FROM CategoryModel')
  Future<List<CategoryModel>> findAllCategories();

  @Query('SELECT * FROM CategoryModel WHERE categoryName = :name')
  Future<CategoryModel> findCategoryByName(String name);

  @insert
  Future<List<int>> insertCategories(List<CategoryModel> decks);
  @insert
  Future<int> insertCategory(CategoryModel deck);
}
