import 'package:flutter/material.dart';
import 'package:udemy_three_meals_app/screens/meal_details.dart';
import '../screens/categories_screen.dart';
import '../screens/category_meals_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        // accentColor: Colors.amber,
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: const TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            bodyText2: const TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            headline3: const TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            )),
      ),
      home: const CategoriesScreen(),
      routes: {
        '/category-meals': (context) => const CategoryMealsScreen(),
        '/meal-details': (context) => const MealDetails(),
      },
    );
  }
}
