import 'dart:io';

import 'package:federated_demo_dart/federated_demo_dart.dart';
import 'package:federated_demo_platform_interface/federated_demo_platform_interface.dart';
import 'package:flutter/foundation.dart';

class FederatedDemo implements FederatedDemoPlatform {
  static final _instance = FederatedDemo._();
  FederatedDemo._() {
    if (kIsWeb || Platform.isAndroid || Platform.isIOS) {
      return;
    }
    FederatedDemoPlatform.instance = FederatedDemoDart();
  }

  factory FederatedDemo() => _instance;

  @override
  Future<String> getPlatform() {
    return FederatedDemoPlatform.instance.getPlatform();
  }
}
