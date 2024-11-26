import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseNotificationManager {
  static Future<void> initialize() async {
    await FirebaseMessaging.instance.requestPermission();

    // background
    FirebaseMessaging.onMessageOpenedApp.listen(_onMessage);

    // foreground
    FirebaseMessaging.onMessage.listen(_onMessage);

    // terminated
    FirebaseMessaging.onBackgroundMessage(_onBackgroundMessage);
  }

  static void _onMessage(RemoteMessage message) {
    print(message.data);
    print(message.notification?.title);
    print(message.notification?.body);
  }

  static Future<String?> getFcmToken() async {
    String? token = await FirebaseMessaging.instance.getToken();
    return token;
  }

  static Future<void> onRefreshToken() async {
    FirebaseMessaging.instance.onTokenRefresh.listen((String? newToken) {
      // share token with api
    });
  }
}

Future<void> _onBackgroundMessage(RemoteMessage message) async {
  print('got a new message');
}
