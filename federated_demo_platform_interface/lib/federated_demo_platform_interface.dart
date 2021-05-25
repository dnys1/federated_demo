library federated_demo_platform_interface;

import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'method_channel_impl.dart';

abstract class FederatedDemoPlatform extends PlatformInterface {
  static final Object _token = Object();

  FederatedDemoPlatform() : super(token: _token);

  static FederatedDemoPlatform _instance = FederatedDemoMethodChannelImpl();

  static FederatedDemoPlatform get instance => _instance;

  static set instance(FederatedDemoPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String> getPlatform() {
    throw UnimplementedError();
  }
}
