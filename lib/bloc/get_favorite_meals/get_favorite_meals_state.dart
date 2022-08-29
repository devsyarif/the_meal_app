part of 'get_favorite_meals_cubit.dart';

abstract class GetFavoriteMealsState extends Equatable {
  const GetFavoriteMealsState();

  @override
  List<Object> get props => [];
}

class GetFavoriteMealsInitial extends GetFavoriteMealsState {}

class GetFavoriteMealsLoading extends GetFavoriteMealsState {}

class GetFavoriteMealsLoaded extends GetFavoriteMealsState {
  final List<TbMeal> listMeals;

  GetFavoriteMealsLoaded({@required this.listMeals});

  @override
  List<Object> get props => [this.listMeals];
}

class GetFavoriteMealsError extends GetFavoriteMealsState {
  final String error;

  GetFavoriteMealsError({@required this.error});
  @override
  List<Object> get props => [];
}
