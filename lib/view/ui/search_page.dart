import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_meal_app/bloc/get_favorite_meals/get_favorite_meals_cubit.dart';
import 'package:the_meal_app/bloc/get_list_meals/get_list_meals_cubit.dart';
import 'package:the_meal_app/view/ui/favorite_page.dart';
import 'package:the_meal_app/view/wiget/build_list.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  void initState() {
    _getMelas("");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _search(),
            _body(),
          ],
        ),
      ),
    );
  }

  _getMelas(String val) {
    context.read<GetListMealsCubit>().getListMeals(val);
  }

  Widget _search() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'Search food receipt',
                  style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MultiBlocProvider(
                      providers: [
                        BlocProvider(create: (context) => GetFavoriteMealsCubit()),
                      ],
                      child: FavoritePage(),
                    ),
                  ),
                ),
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(16, 12, 16, 12),
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.amber),
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextField(
            style: TextStyle(fontSize: 14, color: Colors.black),
            decoration: InputDecoration.collapsed(
              hintText: "type food name",
              hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            onChanged: _getMelas,
          ),
        ),
      ],
    );
  }

  Widget _body() {
    return Expanded(
      child: BlocBuilder<GetListMealsCubit, GetListMealsState>(
        builder: (context, state) {
          if (state is GetListMealsLoaded) {
            return buildList(state.listMeals);
          }
          if (state is GetListMealsError) {
            return Text(state.error);
          }
          if (state is GetListMealsLoading) {
            return Center(child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.amber)));
          }
          return SizedBox.shrink();
        },
      ),
    );
  }
}
