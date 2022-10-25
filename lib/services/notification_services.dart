import 'dart:html';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotifyHelper{
 static Future initialize(FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin) async{
   var androidInitialize = new AndroidInitializationSettings('mipmap/ic_launcher');
   var iOSInitialize = new DarwinInitializationSettings();
   var initializationsSettings = new InitializationSettings(android: androidInitialize,
   iOS: iOSInitialize);
   await flutterLocalNotificationsPlugin.initialize(intializationSettings);
 }
 static Future showBigTextNotification({var id=0, required String title, required String body,
 var payload, required FlutterLocalNotificationsPlugin fln}) async{
   AndroidNotificationDetails androidPlataformChannelSpecifs = new AndroidNotificationDetails('OPA',
   'OPA',);
 }
}