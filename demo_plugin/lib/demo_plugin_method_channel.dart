import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'demo_plugin_platform_interface.dart';

/// An implementation of [DemoPluginPlatform] that uses method channels.
class MethodChannelDemoPlugin extends DemoPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('demo_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
