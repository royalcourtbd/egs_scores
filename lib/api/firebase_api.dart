import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> handleBackgroundMessage(RemoteMessage message) async {
  debugPrint('Title: ${message.notification?.title}');
  debugPrint('Title: ${message.notification?.body}');
  debugPrint('Title: ${message.data}');
}

class FirebaseApi {
  final _firebaseMessaging = FirebaseMessaging.instance;

  Future initPushNotifications() async {
    await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
  }

  Future<void> initNotifications() async {
    await _firebaseMessaging.requestPermission();
    final fCMToken = await _firebaseMessaging.getToken();
    debugPrint('FCM Token: $fCMToken');

    initPushNotifications();

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      debugPrint("Foreground Message Received: ${message.notification?.body}");

      // Show the notification message in a Snackbar
      if (message.notification != null) {
        Get.snackbar(
          message.notification!.title ?? '',
          message.notification!.body ?? '',
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.white,
          colorText: Colors.black,
        );
      }
    });
  }
}
