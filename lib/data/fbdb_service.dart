import 'package:firebase_database/firebase_database.dart';
import 'package:discounter/data/model/user_model.dart';
import 'package:discounter/data/storage_service.dart';

class FirebaseDatabaseService implements StorageService {
  final String _userModelKey = 'userModel';
  final DatabaseReference database = FirebaseDatabase.instance.reference();

  @override
  Future clearUserModel() async {
    await database.child(_userModelKey).remove();
  }

  @override
  Future<UserModel?> fetchUserModels() async {
    var snapshot = await database.child(_userModelKey).once();
    if (snapshot.value != null) {
      return UserModel.fromJson(Map<String, dynamic>.from(snapshot.value));
    }
    null;
  }

  @override
  Future<void> saveUserModel(Map<String, dynamic> value) async {
    await database.child(_userModelKey).set(value);
  }
}
