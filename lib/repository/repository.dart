import 'package:the_meal_app/model/meals.dart';
import 'package:the_meal_app/repository/meals_api_provider.dart';
import 'package:the_meal_app/repository/moor_database.dart';

class Repository {
  final mealsApiProvider = MealsApiProvider();

  // call api
  Future<List<Meals>> getListMeals(String val) => mealsApiProvider.getListMeals(val);
  Future<Meals> getDetailMeals(String id) => mealsApiProvider.getDetailMeals(id);

  // local db
  Future<List<TbMeal>> getFavoriteMeals() => AppDb().getAllFavoriteMeals();
}
