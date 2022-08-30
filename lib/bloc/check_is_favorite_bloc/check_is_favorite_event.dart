part of 'check_is_favorite_bloc.dart';

abstract class CheckIsFavoriteEvent extends Equatable {
  const CheckIsFavoriteEvent();

  @override
  List<Object> get props => [];
}

class Check extends CheckIsFavoriteEvent {
  final String id;

  Check({@required this.id});
}
