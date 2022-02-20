import 'dart:convert';

import 'package:discounter/data/model/user_model.dart';
import 'package:discounter/data/storage_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferencesService implements StorageService {
  final String key = 'userModel';
  late SharedPreferences preferences;
  PreferencesService() {
    init();
  }
  Future init() async {
    preferences = await SharedPreferences.getInstance();
  }

  @override
  Future saveUserModel(Map<String, dynamic> value) async {
    await preferences.setString(key, jsonEncode(value));
  }

  @override
  Future<UserModel?> fetchUserModels() async {
    var model = preferences.getString(key);
    if (model != null) {
      return UserModel.fromJson(json.decode(model));
    }
    return null;
  }

  @override
  Future clearUserModel() async {
    await preferences.remove(key);
  }
}
