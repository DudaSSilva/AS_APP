import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'screens/splash_screen.dart';

//FlutterLocalNotificationsPlugin notificationsPlugin = FlutterLocalNotificationsPlugin();

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // WidgetsFlutterBinding.ensureInitialized();
  // AndroidInitializationSettings androidSettings = AndroidInitializationSettings("@mipmap/ic_launcher");
  //
  // DarwinInitializationSettings iosSettings = DarwinInitializationSettings(
  //   requestSoundPermission: true,
  //   requestBadgePermission: true,
  //   requestCriticalPermission: true,
  //   requestAlertPermission: true,
  // );
  //
  // InitializationSettings initializationSettings = InitializationSettings(
  //   android: androidSettings,
  //   iOS: iosSettings,
  // );
  //
  // bool? initialized = await notificationsPlugin.initialize(initializationSettings);
  //
  // log("Notifications $initialized");

  runApp(
    const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Splash()
      // Splash()
    ),
  );
}
