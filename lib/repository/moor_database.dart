import 'package:moor_flutter/moor_flutter.dart';
part 'moor_database.g.dart';

class TbMeals extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get idMeal => text()();
  TextColumn get strMeal => text()();
  TextColumn get strCategory => text()();
  TextColumn get strArea => text()();
  TextColumn get strTags => text()();
  TextColumn get strInstructions => text()();
  TextColumn get strMealThumb => text()();
  TextColumn get strIngredient1 => text()();
  TextColumn get strIngredient2 => text()();
  TextColumn get strIngredient3 => text()();
  TextColumn get strIngredient4 => text()();
  TextColumn get strIngredient5 => text()();
  TextColumn get strMeasure1 => text()();
  TextColumn get strMeasure2 => text()();
  TextColumn get strMeasure3 => text()();
  TextColumn get strMeasure4 => text()();
  TextColumn get strMeasure5 => text()();
}

@UseMoor(tables: [TbMeals])
class AppDb extends _$AppDb {
  AppDb() : super(FlutterQueryExecutor.inDatabaseFolder(path: 'dbmoor.sqlite', logStatements: true));

  int get schemaVersion => 1;

  Future<List<TbMeal>> getAllFavoriteMeals() => select(tbMeals).get();
  Future insertFavoriteMeals(TbMeal meal) => into(tbMeals).insert(meal);
  Future deleteFavoriteMeals(TbMeal meal) => delete(tbMeals).delete(meal);
}
