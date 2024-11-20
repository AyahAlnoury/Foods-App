import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:yammy_app/features/home/data/models/home_model.dart';

class FoodsRepository {
  String baseUrl = "https://dummyjson.com/recipes";
  Future<List<Foods>> fetchFoods() async {
    final uri = Uri.parse(baseUrl);
    http.Response response = await http.get(uri);
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = jsonDecode(response.body);

      if (data.containsKey('recipes') && data['recipes'] is List) {
        final List<dynamic> recipesList = data['recipes'];
        final result = recipesList.map((e) {
          return Foods(
            id: e['id'] ?? '',
            name: e['name'] ?? 'Unnamed Food',
            image: e['image'] ?? '',
            cuisine: e['cuisine'] ?? '',
            ingredients: e['ingredients'] ?? '',
            instructions: e['instructions'] ?? '',
            servings: e['servings'] ?? 1,
            rating: e['rating'] ?? 0,
          );
        }).toList();
        return result;
      } else {
        throw "Unexpected JSON structure";
      }
    } else {
      throw "Something went wrong ${response.statusCode}";
    }
  }
}
