import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:discounter/data/model/user_model.dart';
import 'package:discounter/data/storage_service.dart';

class FirebaseFirestoreService implements StorageService {
  final String documentId = 'userKey';
  CollectionReference usersCollection =
      FirebaseFirestore.instance.collection('users');

  @override
  Future<void> clearUserModel() async {
    return await usersCollection.doc(documentId).delete();
  }

  @override
  Future<UserModel?> fetchUserModels() async {
    var snapshot = await usersCollection.get();
    if (snapshot.docs.isNotEmpty) {
      return UserModel.fromJson(
        Map<String, dynamic>.from(snapshot.docs.first.data() as Map),
      );
    }
    return null;
  }

  @override
  Future<void> saveUserModel(Map<String, dynamic> value) async {
    await usersCollection.doc(documentId).set(value);
  }
}
