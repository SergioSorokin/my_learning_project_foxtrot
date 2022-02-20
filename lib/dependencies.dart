import 'package:discounter/data/firebase_firestore_service.dart';
import 'package:discounter/data/firebase_storage_service.dart';
import 'package:discounter/data/remote_config_service.dart';
import 'package:discounter/data/repository/app_config_repository.dart';
import 'package:discounter/data/repository/firebase_storage_repository.dart';
import 'package:discounter/data/repository/user_model_repository.dart';
import 'package:discounter/data/storage_service.dart';

class Dependencies {
  StorageService? _service;
  StorageService get service => _service ?? FirebaseFirestoreService();

  UserModelRepository? _repository;
  UserModelRepository get repository =>
      _repository ?? UserModelRepository(service);

  RemoteConfigService? _remoteConfigService;
  RemoteConfigService get remoteConfigService =>
      _remoteConfigService ?? RemoteConfigService();

  AppConfigRepository? _configRepository;
  AppConfigRepository get configRepository =>
      _configRepository ?? AppConfigRepository(remoteConfigService);

  FirebaseStorageService? _firebaseStorageService;
  FirebaseStorageService get firebaseStorageService =>
      _firebaseStorageService ?? FirebaseStorageService();

  FirebaseStorageRepository? _firebaseStorageRepository;
  FirebaseStorageRepository get firebaseStorageRepository =>
      _firebaseStorageRepository ??
      FirebaseStorageRepository(firebaseStorageService);
}
