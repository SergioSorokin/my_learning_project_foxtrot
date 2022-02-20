import 'package:discounter/data/remote_config_service.dart';

class AppConfigRepository {
  final RemoteConfigService configService;

  AppConfigRepository(this.configService);

  Future<bool> requiresUpdate() async {
    return await configService.requiresUpdate();
  }
}
