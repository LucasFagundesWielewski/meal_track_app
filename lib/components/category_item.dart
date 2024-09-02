import 'package:flutter/material.dart';
import 'package:meal_track_app/models/category.dart' as app;
import '../screens/catgories_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final app.Category category;

  const CategoryItem(this.category);

  void _selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(
      MaterialPageRoute(
        builder: (_)
        {
          return CatgoriesMealsScreen(category);
        }
      ) as String
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),    
    child: Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            category.color.withOpacity(0.7),
            category.color,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        category.title,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    ),);
  }
}