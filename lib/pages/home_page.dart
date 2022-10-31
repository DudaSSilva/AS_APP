import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'login/login_page.dart';
import '../pages/pacote_telaPrincipal.dart';
import 'package:asapp/main.dart';
import 'package:asapp/services/notification_services.dart';
import 'package:asapp/services/themes_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import '../../data/dataSimulatory/bdLivros.dart';
import '../../domain/pacote_livros.dart';
import '../../widget/pacote_livros_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void showNotification() async {
    AndroidNotificationDetails androidDetails = AndroidNotificationDetails(
      "as-app",
      "ASApp",
      priority: Priority.max,
      importance: Importance.max,
    );

    DarwinNotificationDetails iosDetails = DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );

    NotificationDetails notiDetails = NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );

    await notificationsPlugin.show(
        0,
        "Notificação teste",
        "Seja bem vindo, queridinha!",
        notiDetails
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: showNotification,
        child: Icon(Icons.notification_add),
      ),
      backgroundColor: const Color(0xFFDD2E44),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/logo.png",
                    width: 300,
                    height: 300,
                    fit: BoxFit.fitHeight,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'ACADEMIC SYLLABUS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 32),
                  ElevatedButton(
                    onPressed: onPressedButton,
                    child: const Text(
                      'ENTRAR',
                      style: TextStyle(
                        fontSize: 25,
                        color: Color(0xFFED1F30),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFFFFCC99),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onPressedButton() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const LoginPage();
        },
      ),
    );
  }
}