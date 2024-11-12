import 'package:flutter/material.dart';

class MealDetailList extends StatelessWidget {
  const MealDetailList({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
  });

  final int itemCount;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(25.0),
      itemCount: itemCount,
      itemBuilder: itemBuilder,
    );
  }
}