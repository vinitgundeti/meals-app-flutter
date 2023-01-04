import 'package:flutter/material.dart';
import 'package:udemy_three_meals_app/dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  const CategoryMealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final String? categoryId = routeArgs['id'];
    final String? categoryTitle = routeArgs['title'];
    // final categoryMeals = DUMMY_MEALS.where((element) {
    //   return element.id.contains(categoryId!);
    // },).toList();

    final categoryMeals = DUMMY_MEALS
        .where(
          (element) => element.categories.contains(categoryId!),
        )
        .toList();
    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle as String)),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return Text(categoryMeals[index].title);
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
