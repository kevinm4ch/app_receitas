import 'package:app_receitas/models/category.dart';
import 'package:app_receitas/widgets/meals/meal_item.dart';
import 'package:flutter/material.dart';
import '../models/meal.dart';

class ComidaScreen extends StatelessWidget {
  const ComidaScreen({
    super.key,
    required this.category,
    required this.meals,
  });

  final Category category;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Nenhuma receita encontrada!',
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: Theme.of(context).colorScheme.onSurface),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Tente selecionar uma categoria diferente!',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Theme.of(context).colorScheme.onSurface),
          ),
        ],
      ),
    );

    if (meals.isNotEmpty) {
      content = ListView.builder(
        itemCount: meals.length,
        itemBuilder: (ctx, index) => MealItem(meal: meals[index], categoryColor: category.color.withOpacity(0.5)),
      );
    }
    //Text(meals[index].title)

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
        backgroundColor: category.color.withOpacity(0.5),
      ),
      body: content,
    );
  }
}
