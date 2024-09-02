import 'package:flutter/material.dart';
import '../models/category.dart';

class CatgoriesMealsScreen extends StatelessWidget {

  final Category category;

  const CatgoriesMealsScreen(this.category);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),  
      ),
      body: Center(
        child: Text('Receitas por categoria ${category.id}'),
      ),
    );
  }
}