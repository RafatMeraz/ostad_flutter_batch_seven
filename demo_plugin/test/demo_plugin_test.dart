import 'package:flutter_test/flutter_test.dart';
import 'package:demo_plugin/demo_plugin.dart';
import 'package:demo_plugin/demo_plugin_platform_interface.dart';
import 'package:demo_plugin/demo_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDemoPluginPlatform
    with MockPlatformInterfaceMixin
    implements DemoPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final DemoPluginPlatform initialPlatform = DemoPluginPlatform.instance;

  test('$MethodChannelDemoPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDemoPlugin>());
  });

  test('getPlatformVersion', () async {
    DemoPlugin demoPlugin = DemoPlugin();
    MockDemoPluginPlatform fakePlatform = MockDemoPluginPlatform();
    DemoPluginPlatform.instance = fakePlatform;

    expect(await demoPlugin.getPlatformVersion(), '42');
  });
}
