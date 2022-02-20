import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';

class FirebaseStorageService {
  FirebaseStorage storage = FirebaseStorage.instance;

  Future<String?> uploadFileAndGetUrl(String filePath) async {
    File file = File(filePath);
    await storage.ref('avatar').putFile(file);
    return imageUrl;
  }

  Future<String?> get imageUrl async =>
      await storage.ref('avatar').getDownloadURL();

  Future<void> clearUrl() async {
    await storage.ref('avatar').delete();
  }
}
