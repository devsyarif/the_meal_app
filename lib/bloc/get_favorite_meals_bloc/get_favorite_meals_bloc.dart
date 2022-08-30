import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:the_meal_app/repository/moor_database.dart';
import 'package:the_meal_app/repository/repository.dart';

part 'get_favorite_meals_event.dart';
part 'get_favorite_meals_state.dart';

class GetFavoriteMealsBloc extends Bloc<GetFavoriteMealsEvent, GetFavoriteMealsState> {
  GetFavoriteMealsBloc() : super(GetFavoriteMealsInitial()) {
    on<GetFavoriteMealsEvent>((event, emit) async {
      if (event is GetFavoriteMeals) {
        try {
          emit(GetFavoriteMealsLoading());
          final result = await Repository().getFavoriteMeals();
          emit(GetFavoriteMealsLoaded(listMeals: result));
        } catch (e) {
          emit(GetFavoriteMealsError(error: e.toString()));
        }
      }
    });
  }
}
