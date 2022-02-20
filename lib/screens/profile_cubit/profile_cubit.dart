import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:discounter/data/model/user_model.dart';
import 'package:discounter/data/repository/firebase_storage_repository.dart';
import 'package:discounter/data/repository/user_model_repository.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final UserModelRepository _repository;
  final FirebaseStorageRepository firebaseStorageRepository;
  ProfileCubit(
      this._repository, UserModel? userModel, this.firebaseStorageRepository)
      : super(ProfileInitial(userModel));

  Future<void> saveUserModels(UserModel userModel) async {
    await _repository.saveUserModels(userModel);
    emit(ProfileInitial(userModel));
  }

  Future<String?> getImageUrl(String pickedImageUrl) async {
    var imageUrl = await firebaseStorageRepository.getUrl(pickedImageUrl);
    return imageUrl;
  }
}
