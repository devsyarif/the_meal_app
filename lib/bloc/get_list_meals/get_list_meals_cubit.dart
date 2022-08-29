import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:the_meal_app/model/meals.dart';
import 'package:the_meal_app/repository/repository.dart';

part 'get_list_meals_state.dart';

class GetListMealsCubit extends Cubit<GetListMealsState> {
  GetListMealsCubit() : super(GetListMealsInitial());

  getListMeals(String val) async {
    try {
      emit(GetListMealsLoading());
      final result = await Repository().getListMeals(val);
      emit(GetListMealsLoaded(listMeals: result));
    } catch (e) {
      emit(GetListMealsError(error: e.toString()));
    }
  }
}
