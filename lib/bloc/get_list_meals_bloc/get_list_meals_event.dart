part of 'get_list_meals_bloc.dart';

abstract class GetListMealsEvent extends Equatable {
  const GetListMealsEvent();

  @override
  List<Object> get props => [];
}

class GetListMeals extends GetListMealsEvent {
  final String val;

  GetListMeals({@required this.val});
}
