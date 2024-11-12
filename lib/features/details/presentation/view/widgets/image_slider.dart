import 'package:flutter/material.dart';
import 'package:yammy_app/features/details/presentation/view/widgets/ani.dart';
import 'package:yammy_app/features/home/data/models/home_model.dart';

class ImageSlider extends StatelessWidget {
  final Function(int) onChange;
  final int currentSlide;
  ImageSlider({
    super.key,
    required this.onChange,
    required this.currentSlide,
    required this.foodsList,
    required this.index,
  });
  int index;
  List<Foodssss> foodsList;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 300,
          width: 300,
          child: PageView.builder(
            onPageChanged: onChange,
            itemCount: 4,
            itemBuilder: (context, index) {
              return RotatingImagePageView(
                foodsList: foodsList,
                index: index,
              );
              // Container(
              //   height: 200,
              //   width: double.infinity,
              //   decoration: BoxDecoration(
              //      image: DecorationImage(
              //         fit: BoxFit.cover,
              //         image: NetworkImage(foodsList[index].image)

              //         ),
              //   ),
              // );
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
                  width: currentSlide == index ? 15 : 8,
                  height: 8,
                  margin: const EdgeInsets.only(right: 3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: currentSlide == index ? Colors.white : Colors.grey,
                    // border: Border.all(color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned.fill(
            bottom: 82,
            left: 310,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: IconButton(
                onPressed: () {},
                style: IconButton.styleFrom(
                  padding: const EdgeInsets.all(15),
                ),
                iconSize: 30,
                color: Colors.grey,
                icon: const Icon(
                  Icons.fullscreen,
                  color: Colors.white,
                ),
              ),
            ))
      ],
    );
  }
}
