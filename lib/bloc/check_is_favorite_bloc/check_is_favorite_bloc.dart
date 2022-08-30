import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:the_meal_app/repository/moor_database.dart';
import 'package:the_meal_app/repository/repository.dart';

part 'check_is_favorite_event.dart';
part 'check_is_favorite_state.dart';

class CheckIsFavoriteBloc extends Bloc<CheckIsFavoriteEvent, CheckIsFavorite> {
  CheckIsFavoriteBloc() : super(CheckIsFavorite()) {
    on<CheckIsFavoriteEvent>((event, emit) async {
      if (event is Check) {
        final result = await Repository().getFavoriteMeals();
        List<TbMeal> temp = result.where(((e) => e.idMeal == event.id)).toList();
        emit(CheckIsFavorite(meals: temp.isEmpty ? null : temp.first));
      }
    });
  }
}
