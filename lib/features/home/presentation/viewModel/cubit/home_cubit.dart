
import 'package:bloc/bloc.dart';
import 'package:yammy_app/features/home/data/repository/foods_repository.dart';
import 'package:yammy_app/features/home/presentation/viewModel/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._repository) : super(HomeInitialState());
  final FoodsRepository _repository;

  Future<void> fetch() async {
    emit(LoadingState());
    try {
      final response = await _repository.fetchFoods();
      emit(LoadedState(homeModel: response));
      print(response.length);
    } catch (e) {
      emit(ErrorState(errorMessage: e.toString()));
    }
  }
}
