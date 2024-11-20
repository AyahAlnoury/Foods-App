import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yammy_app/features/details/presentation/view/details_view.dart';
import 'package:yammy_app/features/home/data/models/home_model.dart';
import 'package:yammy_app/features/home/presentation/view/widgets/rating_star.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.foodsList, required this.index});
  final List<Foods> foodsList;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailsView(
                          index: index,
                          foodsList: foodsList,
                        )));
          },
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 20,
                  offset: const Offset(0, 0.1),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.r),
                  child: Stack(children: [
                    Image.network(
                      foodsList[index].image,
                      height: 123.h,
                      width: 133.w,
                      fit: BoxFit.fill,
                    ),
                    Positioned(
                      top: 4,
                      right: 7,
                      child: RatingStar(
                        foodsList: foodsList,
                        index: index,
                      ),
                    ),
                  ]),
                ),
                Text(foodsList[index].name,
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                    )),
                Text(foodsList[index].cuisine,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    )),
              ],
            ),
          )),
    );
  }
}
