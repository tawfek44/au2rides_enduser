import 'dart:async';
import 'dart:io';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter/material.dart';

Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  debugPrint("Handling a background message: ${message.data}");
}

class FirebaseNotifications {
  late FirebaseMessaging _firebaseMessaging;

  late FlutterLocalNotificationsPlugin _notificationsPlugin;

  Future<void> setUpFirebase() async {
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

    _firebaseMessaging = FirebaseMessaging.instance;
    _firebaseMessaging.setAutoInitEnabled(true);
    FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
    firebaseCloudMessaging_Listeners();
    _notificationsPlugin = FlutterLocalNotificationsPlugin();
    _notificationsPlugin
        .resolvePlatformSpecificImplementation<
            IOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );
    var android = const AndroidInitializationSettings('@mipmap/ic_launcher');
    var ios = IOSInitializationSettings(
        requestSoundPermission: true,
        defaultPresentBadge: true,
        defaultPresentAlert: true,
        defaultPresentSound: true,
        onDidReceiveLocalNotification: (id, title, body, payload) async {
          debugPrint(id.toString());
          debugPrint(title);
          debugPrint(body);
          debugPrint(payload);
        });

    var initSetting = InitializationSettings(android: android, iOS: ios);
    _notificationsPlugin.initialize(
      initSetting,
      //TODO When We Click On Notification While The App Is In Foreground
      onSelectNotification: (String? payload) async {
        debugPrint('#################');
      },
    );
  }

  Future<void> checkLastMessage() async {
    RemoteMessage? initialMessage =
        await FirebaseMessaging.instance.getInitialMessage();
    if (initialMessage != null) {
      debugPrint("NOONONONON${initialMessage.data}");
      //   Get.toNamed(Routes.HOME);
      handlePath(initialMessage.data);
    }
  }

  Future<void> firebaseCloudMessaging_Listeners() async {
    if (Platform.isIOS) iOS_Permission();
    FirebaseMessaging.onMessage.listen((RemoteMessage data) {
      debugPrint('on message ${data.data}');
      if (Platform.isAndroid) {
        showNotification(data.data, (data.notification?.title) ?? "",
            (data.notification?.body) ?? "");
      }
    });
    // Here We Handle Notification OnClick in background
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage data) {
      debugPrint('on Opened ${data.data}');
      handlePath(data.data);
    });
  }

  showNotification(
      Map<String, dynamic> _message, String title, String body) async {
    debugPrint("Notification Response : $_message");

    var androidt = const AndroidNotificationDetails(
      '12',
      'CHANNEL_AU2RIDES',
      'CHANNEL_DESCRIPTION',
      priority: Priority.max,
      channelShowBadge: true,
      playSound: true,
      ticker: 'ticker',
      icon: "@mipmap/ic_launcher",
      enableVibration: true,
      enableLights: true,
      importance: Importance.max,
    );
    var ios = const IOSNotificationDetails();
    var platform = NotificationDetails(android: androidt, iOS: ios);
    await _notificationsPlugin.show(0, title, body, platform);
  }

  void iOS_Permission() {
    _firebaseMessaging.requestPermission(
        alert: true, announcement: true, badge: true, sound: true);
  }

  void handlePath(Map<String, dynamic> dataMap) {
    handlePathByRoute(dataMap);
  }

  Future<void> handlePathByRoute(Map<String, dynamic> dataMap) async {
    //TODO Please Make The Routes Here
    if (dataMap['offer'] != null) {

    }
  }
}
