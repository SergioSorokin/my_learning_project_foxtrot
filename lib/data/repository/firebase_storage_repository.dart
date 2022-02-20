import 'package:discounter/data/firebase_storage_service.dart';

class FirebaseStorageRepository {
  final FirebaseStorageService firebaseStorageService;

  FirebaseStorageRepository(this.firebaseStorageService);

  Future<String?> getUrl(String? pickedImageUrl) async {
    var storageImageUrl =
        await firebaseStorageService.uploadFileAndGetUrl(pickedImageUrl!);
    return storageImageUrl;
  }

  Future<void> clearUrl() async {
    firebaseStorageService.clearUrl();
  }
}
