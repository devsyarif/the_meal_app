import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:the_meal_app/model/meals.dart';
import 'package:the_meal_app/repository/repository.dart';

part 'get_list_meals_event.dart';
part 'get_list_meals_state.dart';

class GetListMealsBloc extends Bloc<GetListMealsEvent, GetListMealsState> {
  GetListMealsBloc() : super(GetListMealsInitial()) {
    on<GetListMealsEvent>((event, emit) async {
      if (event is GetListMeals) {
        try {
          emit(GetListMealsLoading());
          final result = await Repository().getListMeals(event.val);
          emit(GetListMealsLoaded(listMeals: result));
        } catch (e) {
          emit(GetListMealsError(error: e.toString()));
        }
      }
    });
  }
}
