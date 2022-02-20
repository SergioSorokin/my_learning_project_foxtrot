import 'package:discounter/data/model/user_model.dart';

abstract class StorageService {
  Future<UserModel?> fetchUserModels();
  Future saveUserModel(Map<String, dynamic> value);
  Future clearUserModel();
}
