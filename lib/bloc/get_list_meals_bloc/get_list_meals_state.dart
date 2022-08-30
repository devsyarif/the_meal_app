part of 'get_list_meals_bloc.dart';

abstract class GetListMealsState extends Equatable {
  const GetListMealsState();

  @override
  List<Object> get props => [];
}

class GetListMealsInitial extends GetListMealsState {}

class GetListMealsLoading extends GetListMealsState {}

class GetListMealsLoaded extends GetListMealsState {
  final List<Meals> listMeals;

  GetListMealsLoaded({@required this.listMeals});

  @override
  List<Object> get props => [this.listMeals];
}

class GetListMealsError extends GetListMealsState {
  final String error;

  GetListMealsError({@required this.error});
  @override
  List<Object> get props => [];
}
