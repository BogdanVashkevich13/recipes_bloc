import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:recipes_bloc/Api/drink_option.dart';

class DrinkApiProvider {
  Future<List<DrinkOption>> getDrinkOptions(String search) async {
    // var url = Uri.https(
    //     'https://www.thecocktaildb.com/api/json/v1/1/search.php?f=a');
    // Response response = await get(url);
    final response = await http.get(Uri.parse(
        'https://www.thecocktaildb.com/api/json/v1/1/filter.php?${search}'));
    if (response.statusCode == 200) {
      final items = json.decode(response.body)['drinks'] as List;
      List<DrinkOption> listOfUsers = items.map<DrinkOption>((json) {
        return DrinkOption.fromJson(json);
      }).toList();
      return listOfUsers;
    } else {
      throw Exception('Failed to load internet');
    }
  }
}
