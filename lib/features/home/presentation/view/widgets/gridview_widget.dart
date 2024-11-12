import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yammy_app/core/utils/app_size.dart';
import 'package:yammy_app/features/details/presentation/view/details_view.dart';
import 'package:yammy_app/features/home/data/models/home_model.dart';
import 'package:yammy_app/features/home/presentation/view/widgets/rating_star.dart';

class gridview_widget extends StatelessWidget {
  gridview_widget({
    required this.foodsList,
    super.key,
  }); // Tetgwzene  ?yessssss >> Ouli l Omk 7da masri baddo ytzwgne bssss mhmd yala
  List<Foodssss> foodsList; // foods - clean code love yooou wallah
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 15,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: AppPadding.p17),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: AppPadding.p17, // bad naming
          crossAxisSpacing: AppPadding.p17,
          childAspectRatio: .7, //height/width
        ),
        itemBuilder: (context, index) {
          final foods = foodsList[index];
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
                child: Stack(children: [
                  SizedBox(
                    // height: 390.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(
                              foods.image,
                              height: 123.h,
                              width: 133.w,
                              fit: BoxFit.fill,
                            )),
                        Text(foods.name,
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                            )),
                        Text(foods.cuisine,
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                            )),
                      ],
                    ),
                  ),
                  const Positioned(
                    top: 4,
                    right: 27,
                    child: RatingStar(),
                  ),
                ])),
          );
        });
  }
}
