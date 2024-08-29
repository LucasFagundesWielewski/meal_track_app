import 'package:flutter/material.dart';
import 'package:meal_track_app/models/category.dart' as app;

class CategoryItem extends StatelessWidget {
  final app.Category category;

  const CategoryItem(this.category);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Text(category.title),
    );
  }
}