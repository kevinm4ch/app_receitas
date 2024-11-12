import 'package:flutter/material.dart';

class MealStep extends StatelessWidget {
  const MealStep(
      {super.key,
      required this.categoryColor,
      required this.step,
      required this.index});

  final Color? categoryColor;
  final String step;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 12,
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: categoryColor,
              ),
              child: Text(
                "#${(index + 1).toString()}",
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            Expanded(
                child: Text(
              step,
              style: const TextStyle(color: Colors.white),
            ))
          ],
        ),
      ),
    );
  }
}
