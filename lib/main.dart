import 'package:asapp/pages/planner/livros.dart';
import 'package:flutter/material.dart';
import '../screens/splash_screen.dart';
import 'package:asapp/services/notification_services.dart';
import 'pages/home_page.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'dart:developer';

FlutterLocalNotificationsPlugin notificationsPlugin = FlutterLocalNotificationsPlugin();


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
    /*WidgetsFlutterBinding.ensureInitialized();
    AndroidInitializationSettings androidSettings = AndroidInitializationSettings("@mipmap/ic_launcher");

    DarwinInitializationSettings iosSettings = DarwinInitializationSettings(
      requestSoundPermission: true,
      requestBadgePermission: true,
      requestCriticalPermission: true,
      requestAlertPermission: true,
    );

    InitializationSettings initializationSettings = InitializationSettings(
      android: androidSettings,
      iOS: iosSettings,
    );

    bool? initialized = await notificationsPlugin.initialize(initializationSettings);

    log("Notifications $initialized");
*/
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Splash()
    ),
  );
}


