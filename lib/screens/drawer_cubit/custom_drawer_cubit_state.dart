part of 'custom_drawer_cubit.dart';

@immutable
abstract class CustomDrawerState {}

class CustomDrawerInitial extends CustomDrawerState {}

class CustomDrawerLoaded extends CustomDrawerState {
  final UserModel? users;

  CustomDrawerLoaded(this.users);
}
