import 'package:flutter/material.dart';
import 'package:yammy_app/core/utils/app_colors.dart';
import 'package:yammy_app/features/details/presentation/view/widgets/ingredients_list.dart';
import 'package:yammy_app/features/details/presentation/view/widgets/instructions_list.dart';
import 'package:yammy_app/features/details/presentation/view/widgets/row_ingred_surving.dart';
import 'package:yammy_app/features/details/presentation/view/widgets/start_cook_button.dart';
import 'package:yammy_app/features/home/data/models/home_model.dart';

class DetailsCart extends StatelessWidget {
  const DetailsCart({super.key, required this.index, required this.foodsList});
  final int index;
  final List<Foods> foodsList;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 500,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(37),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 15),
                Text(
                  foodsList[index].name,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  foodsList[index].cuisine,
                  style: TextStyle(
                      fontSize: 16,
                      color: AppColor.primaryColor,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                RowIngredSurving(foodsList: foodsList, index: index),
                IngredientsList(foodsList: foodsList, index: index),
                const SizedBox(height: 6),
                const Spacer(),
                Text(
                    "Preparation Instructions(${foodsList[index].instructions.length})",
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold)),
                SizedBox(
                  child: InstructionsList(foodsList: foodsList, index: index),
                ),
                const StartCookButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
