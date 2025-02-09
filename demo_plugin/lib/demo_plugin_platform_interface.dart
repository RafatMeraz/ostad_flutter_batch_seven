import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'demo_plugin_method_channel.dart';

abstract class DemoPluginPlatform extends PlatformInterface {
  /// Constructs a DemoPluginPlatform.
  DemoPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static DemoPluginPlatform _instance = MethodChannelDemoPlugin();

  /// The default instance of [DemoPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelDemoPlugin].
  static DemoPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DemoPluginPlatform] when
  /// they register themselves.
  static set instance(DemoPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
