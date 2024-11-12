import 'package:http/http.dart';
import 'package:yammy_app/features/home/data/models/home_model.dart';

abstract class HomeState {}

class HomeInitialState extends HomeState {
  HomeInitialState();
}

class LoadingState extends HomeState {}

class ErrorState extends HomeState {
  final String errorMessage;
  ErrorState({required this.errorMessage});
}

class LoadedState extends HomeState {
  
  List<Foodssss> homeModel;
  LoadedState({required this.homeModel});
  }
