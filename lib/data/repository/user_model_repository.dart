import 'package:discounter/data/model/user_model.dart';
import 'package:discounter/data/storage_service.dart';

class UserModelRepository {
  final StorageService storageService;

  UserModelRepository(this.storageService);

  Future<UserModel?> getUserModel() async {
    return await storageService.fetchUserModels();
  }

  Future saveUserModels(UserModel userModel) async {
    return await storageService.saveUserModel(userModel.toJson());
  }

  Future clearUserModel() async {
    return await storageService.clearUserModel();
  }
}
