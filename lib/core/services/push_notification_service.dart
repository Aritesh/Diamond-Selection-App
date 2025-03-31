import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationService {
  final FirebaseMessaging _messaging = FirebaseMessaging.instance;

  Future<void> initialize() async {
    // Request Notification Permission
    await _messaging.requestPermission();

    // Get FCM Token
    String? token = await _messaging.getToken();
    print("🔔 FCM Token: $token");

    // Foreground Message Listener
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print("🔔 Foreground Message: ${message.notification?.title}");
    });

    // Background Message Listener
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print("🔔 Opened from Background: ${message.notification?.title}");
    });

    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  }

  Future<void> _firebaseMessagingBackgroundHandler(
    RemoteMessage message,
  ) async {
    print("🔔 Background Message: ${message.notification?.title}");
  }
}
