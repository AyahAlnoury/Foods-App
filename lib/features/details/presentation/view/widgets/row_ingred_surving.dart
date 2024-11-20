import 'package:flutter/material.dart';
import 'package:yammy_app/core/utils/app_colors.dart';
import 'package:yammy_app/features/home/data/models/home_model.dart';

class RowIngredSurving extends StatelessWidget {
  const RowIngredSurving(
      {super.key, required this.foodsList, required this.index});
  final List<Foods> foodsList;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Ingredients(${foodsList[index].ingredients.length})",
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        Text("${foodsList[index].servings} servings",
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: AppColor.primaryColor)),
      ],
    );
  }
}
