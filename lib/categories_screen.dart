import 'package:flutter/material.dart';
import 'package:udemy_three_meals_app/category_item.dart';
import 'package:udemy_three_meals_app/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DeliMeal')),
      body: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: DUMMY_CATEGORIES.map((item) {
          return CategoryItem(
              item.id as String, item.title as String, item.color as Color);
        }).toList(),
      ),
    );
  }
}
