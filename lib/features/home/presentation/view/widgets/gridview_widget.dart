import 'package:flutter/material.dart';
import 'package:yammy_app/core/utils/app_size.dart';
import 'package:yammy_app/features/home/data/models/home_model.dart';
import 'package:yammy_app/features/home/presentation/view/widgets/item_card.dart';

class GridviewWidget extends StatelessWidget {
  const GridviewWidget({
    required this.foodsList,
    super.key,
  });
  final List<Foods> foodsList;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: foodsList.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: AppPadding.p17),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: AppPadding.p5,
          crossAxisSpacing: AppPadding.p5,
          childAspectRatio: .9, //height/width
        ),
        itemBuilder: (context, index) {
          return ItemCard(
            foodsList: foodsList,
            index: index,
          );
        });
  }
}
