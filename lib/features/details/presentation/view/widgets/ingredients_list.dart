import 'package:flutter/material.dart';
import 'package:yammy_app/features/home/data/models/home_model.dart';

class IngredientsList extends StatelessWidget {
  const IngredientsList(
      {super.key, required this.foodsList, required this.index});
  final List<Foods> foodsList;

  final int index;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 139,
      child: ListView.builder(
          itemCount: foodsList[index].ingredients.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, indx) {
            return ListTile(
                title: Text(
              foodsList[index].ingredients[indx],
              style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            ));
          }),
    );
  }
}
