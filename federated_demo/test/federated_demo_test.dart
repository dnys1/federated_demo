@TestOn('vm')

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:federated_demo/federated_demo.dart';

void main() {
  const MethodChannel channel = MethodChannel('federated_demo');
  final federatedDemo = FederatedDemo();

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return 'mock';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatform', () async {
    expect(
      await federatedDemo.getPlatform(),
      'mock',
    );
  });
}
