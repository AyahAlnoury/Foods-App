import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yammy_app/features/details/presentation/view/widgets/rotate_image.dart';
import 'package:yammy_app/features/home/data/models/home_model.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({
    super.key,
    required this.onChange,
    required this.currentSlide,
    required this.foodsList,
    required this.index,
  });
  final Function(int) onChange;
  final int currentSlide;
  final int index;
  final List<Foods> foodsList;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 350.h,
          width: 350.w,
          child: PageView.builder(
            onPageChanged: onChange,
            itemCount: 4,
            itemBuilder: (context, indx) {
              return RotatingImage(
                foodsList: foodsList,
                index: index,
              );
            },
          ),
        ),
        Positioned.fill(
          bottom: 100,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                4,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: currentSlide == index ? 15.w : 8.w,
                  height: 8.h,
                  margin: const EdgeInsets.only(right: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: currentSlide == index ? Colors.white : Colors.grey,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
