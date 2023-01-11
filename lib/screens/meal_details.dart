import 'package:flutter/material.dart';

import '../dummy_data.dart';

class MealDetails extends StatelessWidget {
  const MealDetails({super.key});
  @override
  Widget build(BuildContext context) {
    final String id = ModalRoute.of(context)?.settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((element) => element.id == id);
    return Scaffold(
      appBar: AppBar(title: Text(selectedMeal.title)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.network(selectedMeal.imageUrl),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ingredients',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ...selectedMeal.ingredients.map((e) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 2),
                            child: Text(
                              e,
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                          );
                        }).toList()
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Steps',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ...selectedMeal.steps.asMap().entries.map((e) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 16),
                            child: Text(
                              e.value,
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                          );
                        }).toList()
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
