import 'package:flutter/material.dart';
import 'package:discounter/data/repository/app_config_repository.dart';
import 'package:discounter/data/repository/firebase_storage_repository.dart';
import 'package:discounter/data/repository/user_model_repository.dart';
import 'package:discounter/screens/home_page_layout.dart';

class HomePage {
  static const String routName = '/homePage';

  static initRoute(BuildContext context,
      {required UserModelRepository repository,
      required AppConfigRepository configRepository,
      required FirebaseStorageRepository firebaseStorageRepository}) {
    return HomePageLayout(
      repository: repository,
      configRepository: configRepository,
      firebaseStorageRepository: firebaseStorageRepository,
    );
  }
}
