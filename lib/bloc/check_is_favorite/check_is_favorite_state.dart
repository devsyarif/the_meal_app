part of 'check_is_favorite_cubit.dart';

class CheckIsFavorite extends Equatable {
  final TbMeal meals;

  CheckIsFavorite({this.meals});

  @override
  List<Object> get props => [this.meals];
}
