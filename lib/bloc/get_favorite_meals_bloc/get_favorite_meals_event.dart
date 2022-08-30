part of 'get_favorite_meals_bloc.dart';

abstract class GetFavoriteMealsEvent extends Equatable {
  const GetFavoriteMealsEvent();

  @override
  List<Object> get props => [];
}

class GetFavoriteMeals extends GetFavoriteMealsEvent {}
