import 'package:flutter/material.dart';
import 'package:untitled/pages/login_page.dart';
import 'package:untitled/pages/pacote_telaPrincipal.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    "imagens/logo.png",
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
                  // const SizedBox(height: 32),
                  // const Text(
                  //     'COM ORGANIZAÇÃO SEU DIA FICA MAIS FÁCIL!',
                  //     textAlign: TextAlign.center,
                  //     style: TextStyle(
                  //       fontSize: 10,
                  //       color: Color(0xFFFFFFCC),
                  //     ),
                  // ),
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
