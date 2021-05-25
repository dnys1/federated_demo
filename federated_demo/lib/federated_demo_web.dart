import 'dart:async';

import 'package:federated_demo_platform_interface/federated_demo_platform_interface.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

/// A web implementation of the FederatedDemo plugin.
class FederatedDemoWeb extends FederatedDemoPlatform {
  static void registerWith(Registrar registrar) {
    FederatedDemoPlatform.instance = FederatedDemoWeb();
  }

  @override
  Future<String> getPlatform() async => 'web';
}
