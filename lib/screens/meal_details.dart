import 'package:app_receitas/widgets/meal_details/detail_title.dart';
import 'package:app_receitas/widgets/meal_details/meal_detail_list.dart';
import 'package:app_receitas/widgets/meal_details/meal_ingredient.dart';
import 'package:app_receitas/widgets/meal_details/meal_step.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:app_receitas/models/meal.dart';
import 'package:flutter/material.dart';

class MealDetailsScreen extends StatelessWidget {
  const MealDetailsScreen(
      {super.key, required this.meal, required this.categoryColor});

  final Meal meal;
  final Color? categoryColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
        backgroundColor: categoryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: NetworkImage(meal.imageUrl),
              fit: BoxFit.cover,
              height: 400,
              width: double.infinity,
            ),
            const DetailTitle(title: 'Ingredientes'),
            MealDetailList(
              itemCount: meal.ingredients.length,
              itemBuilder: (context, index) => MealIngredient(
                ingredient: meal.ingredients[index],
              ),
            ),
            const DetailTitle(title: 'Passo-a-passo'),
            MealDetailList(
              itemCount: meal.steps.length,
              itemBuilder: (context, index) => MealStep(
                categoryColor: categoryColor,
                step: meal.steps[index],
                index: index,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


