import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yammy_app/features/home/data/models/home_model.dart';

class DisplayImage extends StatelessWidget {
  const DisplayImage({super.key, required this.foodsList, required this.index});
  final List<Foods> foodsList;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300.w,
        height: 300.h,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(foodsList[index].image),
          ),
        ));
  }
}
