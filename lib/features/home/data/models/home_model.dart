import 'dart:convert';

import 'package:http/http.dart';

class HomeModel {
  List<Foodssss>? foods;

  HomeModel({this.foods});

  // List<Foods> prodectFromJson(String str) =>
  //     List<Foods>.from(json.decode(str).map((x) => Foods.fromJson(x)));

  // HomeModel.fromJson(Map<String, dynamic> json) {
  //   if (json['products'] != null) {
  //     foods = <Foods>[];
  //     json['foods'].forEach((v) {
  //       foods!.add(Foods.fromJson(v));
  //     });
  //   }
  // }
}

// class Foods {
//   int? id;
//   String? name;
//   String? image;
//   int? price;
//   List? ingredients;
//   List? instructions;
//   int? prepTimeMinutes;
//   num? rating;
//   double? caloriesPerServing;
//   String? cuisine;
//   String? mealType;
//   Foods(
//       {this.id,
// this.name,
// this.image,
// this.price,
// this.ingredients,
// this.instructions,
// this.prepTimeMinutes,
// this.rating,
// this.caloriesPerServing,
// this.cuisine,
// this.mealType});

// Foods.fromJson(Map<String, dynamic> json) {
//   id = json['id'];
//   name = json['name'];
//   image = json['image'];
//   price = json['price'];
//   ingredients = json['ingredients'];
//   instructions = json['instructions'];
//   prepTimeMinutes = json['prepTimeMinutes'];
//   rating = json['rating'];
//   caloriesPerServing = json['caloriesPerServing'];
//   cuisine = json['cuisine'];
//   mealType = json['mealType'];
// }
//}

class Foodssss {
  int id;
  String name;
  String image;
  String cuisine;
  List ingredients;
  List instructions;
  int servings;
  Foodssss(
      {required this.id,
      required this.name,
      required this.image,
      required this.cuisine,
      required this.ingredients,
      required this.instructions,
      required this.servings});
}
