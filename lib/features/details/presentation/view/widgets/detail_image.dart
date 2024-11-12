import 'package:flutter/material.dart';
import 'package:yammy_app/features/details/presentation/view/widgets/image_slider.dart';
import 'package:yammy_app/features/home/data/models/home_model.dart';

class DetailImage extends StatefulWidget {
  DetailImage({super.key, required this.index, required this.foodsList});
  final int index;
  final List<Foodssss> foodsList;
  @override
  State<DetailImage> createState() => _DetailImageState();
}

class _DetailImageState extends State<DetailImage> {
  int currentSlide = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          ImageSlider(
            onChange: (value) {
              setState(() {
                currentSlide = value;
              });
            },
            currentSlide: currentSlide,
            foodsList: widget.foodsList,
            index: widget.index,
          ),
          Positioned(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.grey.withOpacity(0.01),
                      padding: const EdgeInsets.all(1),
                    ),
                    iconSize: 30,
                    color: Colors.white,
                    icon: const Icon(Icons.arrow_back),
                  ),
                  IconButton(
                    onPressed: () {},
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.all(1),
                    ),
                    iconSize: 23,
                    icon: const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
