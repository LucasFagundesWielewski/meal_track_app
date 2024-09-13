import 'package:flutter/material.dart';
import 'package:meal_track_app/components/meal_item.dart';
import 'package:meal_track_app/data/dummy_data.dart';
import 'package:meal_track_app/models/meal.dart';
import '../models/category.dart';

class CatgoriesMealsScreen extends StatelessWidget {
  final List<Meal> meals;

  const CatgoriesMealsScreen(this.meals);

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)?.settings.arguments as Category;

    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(categoryMeals[index]);
        },
      ),
    );
  }
}
