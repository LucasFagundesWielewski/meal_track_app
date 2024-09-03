import 'package:flutter/material.dart';
import 'package:meal_track_app/screens/catgories_meals_screen.dart';
import 'screens/categories_screen.dart';
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
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
          titleLarge: TextStyle(
            fontSize: 20, 
            fontFamily: 'RobotoCondensed',
          ),
        )
      ),
      home: CategoriesScreen(),
      routes: {
        AppRoutes.HOME: (context) => CategoriesScreen(),
        AppRoutes.CATEGORIES_MEALS: (context) => CatgoriesMealsScreen(),
      },
    );
  }
}