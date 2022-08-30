part of 'get_detail_meals_bloc.dart';

abstract class GetDetailMealsState extends Equatable {
  const GetDetailMealsState();

  @override
  List<Object> get props => [];
}

class GetDetailMealsInitial extends GetDetailMealsState {}

class GetDetailMealsLoading extends GetDetailMealsState {}

class GetDetailMealsLoaded extends GetDetailMealsState {
  final Meals meals;

  GetDetailMealsLoaded({@required this.meals});

  @override
  List<Object> get props => [this.meals];
}

class GetDetailMealsError extends GetDetailMealsState {
  final String error;

  GetDetailMealsError({@required this.error});
  @override
  List<Object> get props => [];
}
