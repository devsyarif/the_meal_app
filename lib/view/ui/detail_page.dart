import 'package:flutter/material.dart';
import 'package:the_meal_app/bloc/check_is_favorite/check_is_favorite_cubit.dart';
import 'package:the_meal_app/bloc/get_detail_meals/get_detail_meals_cubit.dart';
import 'package:the_meal_app/model/meals.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_meal_app/repository/moor_database.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class DetailPage extends StatefulWidget {
  final String idMeal;

  const DetailPage({@required this.idMeal});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  void initState() {
    _getDetailMelas(widget.idMeal);
    _checkIsFavorite(widget.idMeal);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  _getDetailMelas(String id) {
    context.read<GetDetailMealsCubit>().getDetailMeals(id);
  }

  _checkIsFavorite(String id) {
    context.read<CheckIsFavoriteCubit>().checkIsFavorite(id);
  }

  Widget _body() {
    return BlocBuilder<GetDetailMealsCubit, GetDetailMealsState>(
      builder: (context, state) {
        if (state is GetDetailMealsLoaded) {
          return Center(
            child: Stack(
              children: [
                _image(state.meals),
                _detail(state.meals),
                _header(),
              ],
            ),
          );
        }
        if (state is GetDetailMealsError) {
          return Text(state.error);
        }
        if (state is GetDetailMealsLoading) {
          return Center(child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.amber)));
        }
        return SizedBox.shrink();
      },
    );
  }

  Widget _header() {
    return Positioned(
      top: 24,
      left: 4,
      child: Container(
        child: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.amber),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
  }

  Widget _image(Meals meals) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
            image: DecorationImage(
              image: NetworkImage(meals.strMealThumb),
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter,
            ),
          ),
        ),
      ],
    );
  }

  Widget _detail(Meals meals) {
    List tags = [];
    if (meals.strTags != null) {
      tags = meals.strTags.split(',');
    } else {
      tags.add('food');
    }
    String instuction = meals.strInstructions.replaceAll('\n', '\n\n');
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        height: MediaQuery.of(context).size.height * 0.625,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        '${meals.strMeal}',
                        style: TextStyle(fontSize: 22, color: Colors.black, fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(width: 12),
                    BlocBuilder<CheckIsFavoriteCubit, CheckIsFavorite>(
                      builder: (context, state) {
                        return GestureDetector(
                          onTap: () {
                            TbMeal tbMeal = TbMeal(
                              idMeal: meals.idMeal,
                              strMeal: meals.strMeal,
                              strCategory: meals.strCategory,
                              strArea: meals.strArea,
                              strTags: meals.strTags,
                              strInstructions: meals.strInstructions,
                              strMealThumb: meals.strMealThumb,
                              strIngredient1: meals.strIngredient1,
                              strIngredient2: meals.strIngredient2,
                              strIngredient3: meals.strIngredient3,
                              strIngredient4: meals.strIngredient4,
                              strIngredient5: meals.strIngredient5,
                              strMeasure1: meals.strMeasure1,
                              strMeasure2: meals.strMeasure2,
                              strMeasure3: meals.strIngredient3,
                              strMeasure4: meals.strMeasure4,
                              strMeasure5: meals.strMeasure5,
                            );

                            if (state.meals == null) {
                              AppDb().insertFavoriteMeals(tbMeal);
                              _checkIsFavorite(widget.idMeal);
                              showTopSnackBar(
                                context,
                                CustomSnackBar.success(
                                  icon: Icon(
                                    Icons.favorite_border,
                                    size: 100,
                                    color: Color(0x15000000),
                                  ),
                                  message: "Meals Added to Favorite",
                                  messagePadding: EdgeInsets.all(0),
                                ),
                              );
                            } else {
                              AppDb().deleteFavoriteMeals(state.meals);
                              _checkIsFavorite(widget.idMeal);
                              showTopSnackBar(
                                context,
                                CustomSnackBar.success(
                                  icon: Icon(
                                    Icons.favorite_border,
                                    size: 100,
                                    color: Color(0x15000000),
                                  ),
                                  message: "Meals Remove from Favorite",
                                ),
                                padding: EdgeInsets.all(20),
                              );
                            }
                          },
                          child: Icon(
                            state.meals != null ? Icons.favorite : Icons.favorite_border_outlined,
                            color: Colors.red,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.amber.shade50,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Icon(Icons.location_on_outlined, color: Colors.amber, size: 28),
                          SizedBox(height: 4),
                          Text(
                            '${meals.strArea}',
                            style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Icon(Icons.restaurant, color: Colors.amber, size: 28),
                          SizedBox(height: 4),
                          Text(
                            '${meals.strCategory}',
                            style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Icon(Icons.menu_book, color: Colors.amber, size: 28),
                          SizedBox(height: 4),
                          Text(
                            '${tags.first}',
                            style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: Text(
                  'Ingredients',
                  style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 12),
              _rowCustom(meals.strIngredient1, meals.strMeasure1),
              SizedBox(height: 8),
              _rowCustom(meals.strIngredient2, meals.strMeasure2),
              SizedBox(height: 8),
              _rowCustom(meals.strIngredient3, meals.strMeasure3),
              SizedBox(height: 8),
              _rowCustom(meals.strIngredient4, meals.strMeasure4),
              SizedBox(height: 8),
              _rowCustom(meals.strIngredient5, meals.strMeasure5),
              SizedBox(height: 24),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: Text(
                  'Insturctions',
                  style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 24),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: Text(
                  instuction,
                  style: TextStyle(fontSize: 17, color: Colors.grey, fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _rowCustom(String ing, String measur) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              ing,
              style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.normal),
            ),
          ),
          Text(
            measur,
            style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
// Widget actionSaveorDelete(){
//   if (_isFavorite) {
//       return GestureDetector(
//         onTap: () {
//           FavoriteLocalProvider.db.deleteFavoriteMealsById(widget.idMeal).then((value) {
//             if (value > 0) {
//               setState(() => _isFavorite = false);
//             }
//           });
//          // showToast(context, "Remove from Favorite", duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
//         },
//         child: Padding(
//           padding: EdgeInsets.all(16.0),
//           child: Icon(Icons.favorite),
//         ),
//       );
//     } else {
//       return GestureDetector(
//         onTap: () {
//           Meals favoriteFood = Meals(
//             idMeal: widget.idMeal,
//             strMeal: widget.strMeal,
//             strMealThumb: widget.strMealThumb,
//             type: widget.type
//           );
//           FavoriteLocalProvider.db.addFavoriteMeals(favoriteFood).then((value) {
//             if (value > 0) {
//               setState(() => _isFavorite = true);
//             }
//           });
//           //showToast(context, "Add to Favorite", duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
//         },
//         child: Padding(
//           padding: EdgeInsets.all(16.0),
//           child: Icon(Icons.favorite_border),
//         ),
//       );
//     }
// }

}
