import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:the_meal_app/model/meals.dart';
import 'package:the_meal_app/repository/repository.dart';

part 'get_detail_meals_state.dart';

class GetDetailMealsCubit extends Cubit<GetDetailMealsState> {
  GetDetailMealsCubit() : super(GetDetailMealsInitial());

  getDetailMeals(String id) async {
    try {
      emit(GetDetailMealsLoading());
      final result = await Repository().getDetailMeals(id);
      emit(GetDetailMealsLoaded(meals: result));
    } catch (e) {
      print(e);
      emit(GetDetailMealsError(error: e.toString()));
    }
  }
}
