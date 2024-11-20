import 'package:bloc/bloc.dart';
import 'package:yammy_app/features/home/data/models/home_model.dart';
import 'package:yammy_app/features/home/data/repository/foods_repository.dart';
import 'package:yammy_app/features/home/presentation/viewModel/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._repository) : super(HomeInitialState());
  final FoodsRepository _repository;
  List<Foods> foundMeals = [];
  List<Foods> allMeals = [];
  Future<void> fetch() async {
    emit(LoadingState());
    try {
      final response = await _repository.fetchFoods();
      allMeals = response;
      foundMeals = allMeals;
      emit(LoadedState(meals: response));
    } catch (e) {
      emit(ErrorState(errorMessage: e.toString()));
    }
  }

  void filterFoods(String keyword) {
    if (keyword.isEmpty) {
      foundMeals = allMeals;
    } else {
      foundMeals = allMeals.where((food) {
        return food.name.toLowerCase().contains(keyword.toLowerCase());
      }).toList();
    }
    emit(LoadedState(meals: foundMeals));
  }
}
