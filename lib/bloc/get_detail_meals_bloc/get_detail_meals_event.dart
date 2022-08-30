part of 'get_detail_meals_bloc.dart';

abstract class GetDetailMealsEvent extends Equatable {
  const GetDetailMealsEvent();

  @override
  List<Object> get props => [];
}

class GetDetailMeals extends GetDetailMealsEvent {
  final String id;

  GetDetailMeals({@required this.id});
}
