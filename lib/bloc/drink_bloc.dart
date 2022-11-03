import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipes_bloc/Api/drink_option.dart';
import 'package:recipes_bloc/Api/repository.dart';
import 'package:recipes_bloc/bloc/drink_state.dart';
import 'package:recipes_bloc/bloc/user_event.dart';

class DrinkBloc extends Bloc<DrinkEvent, DrinkState> {
  final Repository Reposytory;
  DrinkBloc({required this.Reposytory}): super(DrinkEmptyState()){
    on<DrinkLoadEvent>((event, emit) async {
      emit(DrinkLoadingState());

      try{
       final List<DrinkOption> loadedDrinkList = await Reposytory.getDrinkOptions();
       emit(DrinkLoadedState(loadedDrink: loadedDrinkList));
      }catch (_){
        emit(DrinkErorState());
      }
    });
  }
}