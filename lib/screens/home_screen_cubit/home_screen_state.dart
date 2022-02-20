part of 'home_screen_cubit.dart';

@immutable
abstract class HomeScreenState {}

class HomeScreenInitial extends HomeScreenState {}

class HomeScreenLoaded extends HomeScreenState {
  final bool isAppRequireUpdate;
  HomeScreenLoaded(this.isAppRequireUpdate);
}
