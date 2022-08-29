import 'package:dio/dio.dart';
import 'package:the_meal_app/model/meals.dart';

class MealsApiProvider {
  final Dio _dio = Dio();
  final String _baseUrl = 'https://www.themealdb.com/api/json/v1/1';

  Future<List<Meals>> getListMeals(String name) async {
    Response response = await _dio.get("$_baseUrl/search.php?s=$name");
    print(response.data);
    if (response.data["meals"] != null) {
      List<Meals> listMeals = [];
      for (int i = 0; i < response.data["meals"].length; i++) {
        listMeals.add(Meals.fromJson(response.data["meals"][i]));
      }
      return listMeals;
    } else {
      throw Exception('Failed to load list meals');
    }
  }

  Future<Meals> getDetailMeals(String id) async {
    Response response = await _dio.get("$_baseUrl/lookup.php?i=$id");
    if (response.data["meals"] != null) {
      List<Meals> listMeals = [];
      for (int i = 0; i < response.data["meals"].length; i++) {
        listMeals.add(Meals.fromJson(response.data["meals"][i]));
      }
      return listMeals[0];
    } else {
      throw Exception('Failed to load detail meals');
    }
  }
}
