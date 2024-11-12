// import 'dart:convert';

// import 'package:http/http.dart' as http;
// import 'package:yammy_app/features/home/data/models/home_model.dart';

// class FoodsRepository {
//   String baseUrl = "https://dummyjson.com/recipes";
//   fetchFoods() async {
//     final uri = Uri.parse(baseUrl);
//     try {
//       http.Response response = await http.get(uri);
//       if (response.statusCode == 200) {
//         Map<String, dynamic> data = jsonDecode(response.body);
//         HomeModel homeModel = HomeModel.fromJson(data);
//         print(homeModel.foods![0].name);
//         return homeModel;
//       } else {
//         throw "Something went wrong ${response.statusCode}";
//       }
//     } catch (e) {}
//   }
// }

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:yammy_app/features/home/data/models/home_model.dart';

class FoodsRepository {
  String baseUrl = "https://dummyjson.com/recipes";
  Future<List<Foodssss>> fetchFoods() async {
    final uri = Uri.parse(baseUrl);

    http.Response response = await http.get(uri);
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = jsonDecode(response.body);

      if (data.containsKey('recipes') && data['recipes'] is List) {
        final List<dynamic> recipesList = data['recipes'];
        final result = recipesList.map((e) {
          return Foodssss(
            id: e['id'] ?? '',
            name: e['name'] ?? 'Unnamed Food',
            image: e['image'] ?? '',
            cuisine: e['cuisine'],
            ingredients: e['ingredients'] ?? '',
            instructions: e['instructions'] ?? '',
            servings: e['servings'] ?? 1,
          );
        }).toList();
        return result;
      } else {
        throw "Unexpected JSON structure";
      }
    } else {
      throw "Something went wrong ${response.statusCode}";
    }

    //   final result = data.map((e) {
    //     return Foodssss(id: e['id'] ?? '', name: e['name'] ?? '');
    //   }).toList();
    //   return result;
    //  } else {
    //   throw "Something went wrong ${response.statusCode}";
  }
}
//}
