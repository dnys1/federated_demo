import 'package:federated_demo_platform_interface/federated_demo_platform_interface.dart';

class FederatedDemo implements FederatedDemoPlatform {
  @override
  Future<String> getPlatform() {
    return FederatedDemoPlatform.instance.getPlatform();
  }
}
