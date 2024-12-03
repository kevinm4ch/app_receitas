
import 'package:flutter/material.dart';

class MealIngredient extends StatelessWidget {
  const MealIngredient({
    super.key,
    required this.ingredient,
  });

  final String ingredient;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 12,
        ),
        child: Text(
          ingredient,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

