import 'package:flutter/material.dart';
import 'package:meal_track_app/screens/catgories_meals_screen.dart';
import 'package:meal_track_app/screens/meal_detail_screen.dart';
import 'package:meal_track_app/screens/tabs_screen.dart';
import 'utils/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lets cook?',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        hintColor: Colors.amber,
        fontFamily: 'Raleway',
        canvasColor: Color.fromARGB(255, 255, 229, 229),
        textTheme: ThemeData.light().textTheme.copyWith(
              titleLarge: const TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ),
            ),
        appBarTheme: const AppBarTheme(
          color: Colors.pinkAccent,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
          ),
        ),
      ),
      routes: {
        AppRoutes.HOME: (context) => TabsScreen(),
        AppRoutes.CATEGORIES_MEALS: (context) => CatgoriesMealsScreen(),
        AppRoutes.MEAL_DETAIL: (context) => MealDetailScreen(),
      },
    );
  }
}
