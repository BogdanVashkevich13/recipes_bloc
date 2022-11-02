import 'dart:convert';
import 'package:recipes_bloc/Api/drink.dart';
import 'package:http/http.dart';
import 'package:recipes_bloc/Api/drink_option.dart';
class DrinkApiProvider {

  Future<List<DrinkOption>> getDrinkOptions() async {
    var url = Uri.https(
        'https://www.thecocktaildb.com/api/json/v1/1/search.php?f=a');
    Response response = await get(url);

    if (response.statusCode == 200) {
      final items = json.decode(response.body)['drinks'];
      List<DrinkOption> listOfUsers = items.map<DrinkOption>((json) {
        return DrinkOption.fromJson(json);}).toList();
      return listOfUsers;
    } else {
      throw Exception('Failed to load internet');
    }
  }
}