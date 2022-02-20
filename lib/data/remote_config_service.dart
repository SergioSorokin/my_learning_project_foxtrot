import 'package:firebase_remote_config/firebase_remote_config.dart';

class RemoteConfigService {
  final versionKey = 'version';
  final RemoteConfig _remoteConfig = RemoteConfig.instance;

  Future<bool> requiresUpdate() async {
    await _remoteConfig.fetchAndActivate();

    var valuesMap = _remoteConfig.getAll();

    return valuesMap[versionKey] != null
        ? valuesMap[versionKey]!.asBool()
        : false;
  }
}
