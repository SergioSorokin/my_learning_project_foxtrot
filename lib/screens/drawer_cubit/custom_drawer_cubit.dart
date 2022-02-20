import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:discounter/data/model/user_model.dart';
import 'package:discounter/data/repository/firebase_storage_repository.dart';
import 'package:discounter/data/repository/user_model_repository.dart';

part 'custom_drawer_cubit_state.dart';

class CustomDrawerCubit extends Cubit<CustomDrawerState> {
  String? imageUrl;
  String? name;
  String? surname;
  final UserModelRepository _repository;
  final FirebaseStorageRepository _firebaseStorageRepository;
  CustomDrawerCubit(this._repository, this._firebaseStorageRepository)
      : super(CustomDrawerInitial()) {
    getUsers();
  }

  Future<void> getUsers() async {
    var users = await _repository.getUserModel();
    emit(CustomDrawerLoaded(users));
  }

  Future<UserModel?> removeUserModel() async {
    await _repository.clearUserModel();
    _firebaseStorageRepository.clearUrl();
    emit(CustomDrawerInitial());
  }
}
