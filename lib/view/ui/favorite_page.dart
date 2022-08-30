import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_meal_app/bloc/get_favorite_meals_bloc/get_favorite_meals_bloc.dart';
import 'package:the_meal_app/view/wiget/build_list_favorite.dart';

class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  void initState() {
    _getFavoriteMeals();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          _header(),
          _body(),
        ],
      )),
    );
  }

  _getFavoriteMeals() {
    context.read<GetFavoriteMealsBloc>().add(GetFavoriteMeals());
  }

  Widget _header() {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
      child: Text(
        'Favorite Meals',
        style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget _body() {
    return Expanded(
      child: BlocBuilder<GetFavoriteMealsBloc, GetFavoriteMealsState>(
        builder: (context, state) {
          if (state is GetFavoriteMealsLoaded) {
            return buildListFavorite(state.listMeals);
          }
          if (state is GetFavoriteMealsError) {
            return Text(state.error);
          }
          if (state is GetFavoriteMealsLoading) {
            return Center(child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.amber)));
          }
          return SizedBox.shrink();
        },
      ),
    );
  }
}
