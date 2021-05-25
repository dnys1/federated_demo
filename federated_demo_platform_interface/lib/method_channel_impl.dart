import 'package:federated_demo_platform_interface/federated_demo_platform_interface.dart';
import 'package:flutter/services.dart';

class FederatedDemoMethodChannelImpl extends FederatedDemoPlatform {
  static const _methodChannel = MethodChannel('federated_demo');

  @override
  Future<String> getPlatform() async {
    return (await _methodChannel.invokeMethod<String>('getPlatform'))!;
  }
}
