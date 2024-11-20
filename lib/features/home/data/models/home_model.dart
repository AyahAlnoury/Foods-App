class Foods {
  int id;
  String name;
  String image;
  String cuisine;
  List ingredients;
  List instructions;
  num servings;
  num rating;
  Foods(
      {required this.id,
      required this.name,
      required this.image,
      required this.cuisine,
      required this.ingredients,
      required this.instructions,
      required this.servings,
      required this.rating});
}
