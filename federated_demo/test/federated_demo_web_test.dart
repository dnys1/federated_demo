@TestOn('browser')

import 'package:federated_demo/federated_demo_web.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final federatedDemo = FederatedDemoWeb();
  test('getPlatform', () async {
    expect(
      await federatedDemo.getPlatform(),
      'web',
    );
  });
}
