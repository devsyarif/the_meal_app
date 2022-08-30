import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_meal_app/bloc/get_list_meals_bloc/get_list_meals_bloc.dart';
import 'package:the_meal_app/view/ui/search_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Receipt',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: BlocProvider(
        create: (context) => GetListMealsBloc(),
        child: SearchPage(),
      ),
    );
  }
}
