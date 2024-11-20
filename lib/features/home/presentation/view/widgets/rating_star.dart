import 'package:flutter/material.dart';
import 'package:yammy_app/core/utils/app_colors.dart';
import 'package:yammy_app/features/home/data/models/home_model.dart';

class RatingStar extends StatelessWidget {
  const RatingStar({super.key, required this.foodsList, required this.index});
  final List<Foods> foodsList;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 20,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        color: AppColor.primaryColor,
      ),
      child: Center(
        child: Row(
          children: [
            const Icon(
              color: Colors.white,
              Icons.star,
              size: 16,
            ),
            const SizedBox(width: 4),
            Text(
              foodsList[index].rating.toString(),
              style: const TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
