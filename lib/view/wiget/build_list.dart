import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_meal_app/bloc/check_is_favorite/check_is_favorite_cubit.dart';
import 'package:the_meal_app/bloc/get_detail_meals/get_detail_meals_cubit.dart';
import 'package:the_meal_app/model/meals.dart';
import 'package:the_meal_app/view/ui/detail_page.dart';

Widget buildList(List<Meals> listMeals) {
  return ListView.separated(
    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
    itemCount: listMeals.length ?? 0,
    separatorBuilder: (context, index) => SizedBox(height: 12),
    itemBuilder: (BuildContext context, int index) {
      List tags = [];
      if (listMeals[index].strTags != null) {
        tags = listMeals[index].strTags.split(',');
      }
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MultiBlocProvider(
                providers: [
                  BlocProvider(create: (context) => GetDetailMealsCubit()),
                  BlocProvider(create: (context) => CheckIsFavoriteCubit()),
                ],
                child: DetailPage(idMeal: listMeals[index].idMeal),
              ),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
            color: Colors.grey.shade100,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
                  image: DecorationImage(
                    image: NetworkImage(listMeals[index].strMealThumb),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
              SizedBox(height: 12),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  '${listMeals[index].strMeal}',
                  style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 12),
              Container(
                height: 28,
                child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  itemBuilder: (context, indexTag) => _tag(tags[indexTag]),
                  separatorBuilder: (context, index) => SizedBox(width: 12),
                  itemCount: tags.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                ),
              ),
              SizedBox(height: 12),
            ],
          ),
        ),
      );
    },
  );
}

Widget _tag(String tag) {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(width: 0.5, color: Colors.grey),
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
    ),
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
    child: Text(
      tag,
      style: TextStyle(fontSize: 12, color: Colors.grey),
    ),
  );
}
