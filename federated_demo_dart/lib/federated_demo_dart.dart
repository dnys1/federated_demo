library federated_demo_dart;

import 'dart:io';

import 'package:federated_demo_platform_interface/federated_demo_platform_interface.dart';

class FederatedDemoDart extends FederatedDemoPlatform {
  static final instance = FederatedDemoDart();

  static void registerWith() {
    FederatedDemoPlatform.instance = instance;
  }

  @override
  Future<String> getPlatform() async => Platform.operatingSystem;
}
