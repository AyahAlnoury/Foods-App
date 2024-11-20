import 'package:flutter/material.dart';
import 'package:yammy_app/features/details/presentation/view/widgets/detail_image.dart';
import 'package:yammy_app/features/details/presentation/view/widgets/details_cart.dart';
import 'package:yammy_app/features/home/data/models/home_model.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.index, required this.foodsList});
  final int index;
  final List<Foods> foodsList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(alignment: Alignment.bottomCenter, children: [
        DetailImage(foodsList: foodsList, index: index),
        DetailsCart(index: index, foodsList: foodsList),
      ]),
    ));
  }
}
