import 'package:flutter_test/flutter_test.dart';

import 'package:federated_demo_platform_interface/federated_demo_platform_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFederatedDemoPlatform extends FederatedDemoPlatform
    with MockPlatformInterfaceMixin {
  @override
  Future<String> getPlatform() async => 'mock';
}

void main() {
  final federatedDemo = MockFederatedDemoPlatform();

  test('getPlatform', () async {
    expect(
      await federatedDemo.getPlatform(),
      'mock',
    );
  });
}
