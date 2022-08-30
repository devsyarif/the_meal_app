import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:the_meal_app/model/meals.dart';
import 'package:the_meal_app/repository/repository.dart';

part 'get_detail_meals_event.dart';
part 'get_detail_meals_state.dart';

class GetDetailMealsBloc extends Bloc<GetDetailMealsEvent, GetDetailMealsState> {
  GetDetailMealsBloc() : super(GetDetailMealsInitial()) {
    on<GetDetailMealsEvent>((event, emit) async {
      if (event is GetDetailMeals) {
        try {
          emit(GetDetailMealsLoading());
          final result = await Repository().getDetailMeals(event.id);
          emit(GetDetailMealsLoaded(meals: result));
        } catch (e) {
          print(e);
          emit(GetDetailMealsError(error: e.toString()));
        }
      }
    });
  }
}
