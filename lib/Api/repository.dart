import 'drink_api_provider.dart';
import 'drink_option.dart';

class Repository {
  DrinkApiProvider _drinkApiProvider = DrinkApiProvider();

  Future<List<DrinkOption>> getDrinkOptions() {
    return _drinkApiProvider.getDrinkOptions();
  }
}
