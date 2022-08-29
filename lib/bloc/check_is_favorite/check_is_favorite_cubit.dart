import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:the_meal_app/repository/moor_database.dart';
import 'package:the_meal_app/repository/repository.dart';

part 'check_is_favorite_state.dart';

class CheckIsFavoriteCubit extends Cubit<CheckIsFavorite> {
  CheckIsFavoriteCubit() : super(CheckIsFavorite());

  checkIsFavorite(String id) async {
    final result = await Repository().getFavoriteMeals();
    List<TbMeal> temp = result.where(((e) => e.idMeal == id)).toList();
    print('id ${id}');
    print('temp length ${temp.length}');
    emit(CheckIsFavorite(meals: temp.isEmpty ? null : temp.first));
  }
}
