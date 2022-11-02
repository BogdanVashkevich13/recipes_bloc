import 'package:recipes_bloc/Api/drink_option.dart';

abstract class DrinkState{}
class DrinkEmptyState extends DrinkState{}
class DrinkLoadingState extends DrinkState{}
class DrinkLoadedState extends DrinkState{
  List<DrinkOption> loadedDrink;
  DrinkLoadedState({required this.loadedDrink,});
}
class DrinkErorState extends DrinkState{}