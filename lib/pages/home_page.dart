import 'package:flutter/material.dart';
import '../pages/pacote_telaPrincipal.dart';

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
                    width: 250,
                    height: 250,
                    fit: BoxFit.fitHeight,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'ACADEMIC',
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'SYLLABUS',
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'COM ORGANIZAÇÃO SEU DIA FICA MAIS FÁCIL!',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFFFFFFCC),
                    ),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: onPressedButton,
                    child: const Text(
                      'ENTRAR',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFFED1F30),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFFFFCC99),
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
          return const TelaPrincipalPage();
        },
      ),
    );
  }
}
