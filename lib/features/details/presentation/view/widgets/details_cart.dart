import 'package:flutter/material.dart';
import 'package:yammy_app/core/utils/app_colors.dart';
import 'package:yammy_app/features/details/presentation/view/widgets/start_cook_button.dart';
import 'package:yammy_app/features/home/data/models/home_model.dart';

class DetailsCart extends StatelessWidget {
  DetailsCart({super.key, required this.index, required this.foodsList});
  int index;
  List<Foodssss> foodsList;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.vertical(
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Ingredients(${foodsList[index].ingredients.length})",
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    Text("${foodsList[index].servings} servings",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: AppColor.primaryColor)),
                  ],
                ),
                SizedBox(
                  height: 139,
                  child: ListView.builder(
                      itemCount: foodsList[index].ingredients.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, indx) {
                        return ListTile(
                            title: Text(
                          foodsList[index].ingredients[indx],
                          style: const TextStyle(
                              fontSize: 10, fontWeight: FontWeight.bold),
                        ));
                      }),
                ),
                const SizedBox(height: 6),
                Text(
                    "Preparation Instructions(${foodsList[index].instructions.length})",
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold)),
                SizedBox(
                  child: ListView.builder(
                      itemCount: foodsList[index].instructions.length,
                      shrinkWrap: true,
                      itemBuilder: (context, indx) {
                        return ListTile(
                            title: Row(children: [
                          Text(
                            '${indx + 1} ',
                            style: TextStyle(
                                color: AppColor.primaryColor,
                                fontSize: 11,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Expanded(
                            child: Text(
                              '  ${foodsList[index].instructions[indx]}',
                              style: const TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.bold),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                        ]));
                      }),
                ),
                StartCookButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
