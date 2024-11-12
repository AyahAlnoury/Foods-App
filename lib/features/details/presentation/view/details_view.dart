import 'package:flutter/material.dart';
import 'package:yammy_app/features/details/presentation/view/widgets/ani.dart';
import 'package:yammy_app/features/details/presentation/view/widgets/detail_image.dart';
import 'package:yammy_app/features/details/presentation/view/widgets/details_cart.dart';
import 'package:yammy_app/features/home/data/models/home_model.dart';

class DetailsView extends StatelessWidget {
  DetailsView({super.key, required this.index, required this.foodsList});
  int index;
  List<Foodssss> foodsList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Stack(alignment: Alignment.bottomCenter, children: [
        // RotatingImagePageView(foodsList: foodsList, index: index),
        DetailImage(foodsList: foodsList, index: index),
        DetailsCart(index: index, foodsList: foodsList),
      ]),
    ));
  }
}
