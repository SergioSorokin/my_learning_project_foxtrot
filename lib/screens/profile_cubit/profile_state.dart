part of 'profile_cubit.dart';

@immutable
abstract class ProfileState {}

class ProfileInitial extends ProfileState {
  final UserModel? users;

  ProfileInitial(this.users);
}
