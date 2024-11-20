import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yammy_app/core/utils/app_colors.dart';
import 'package:yammy_app/features/home/data/models/home_model.dart';
import 'package:yammy_app/features/home/presentation/view/widgets/view_all_list.dart';

class RowViewAll extends StatelessWidget {
  const RowViewAll({super.key, required this.foodsList});
  final List<Foods> foodsList;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text("Popular Recipe",
          style: TextStyle(
              color: Colors.black,
              fontSize: 18.sp,
              fontWeight: FontWeight.bold)),
      GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ViewAllList(foodsList: foodsList)));
        },
        child: Text(
          "View All",
          style: TextStyle(
              color: AppColor.primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 18.sp),
        ),
      ),
    ]);
  }
}
