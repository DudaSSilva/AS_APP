import 'package:flutter/material.dart';
import '../pacote_telaPrincipal.dart';

class Dica7Page extends StatefulWidget {
  const Dica7Page({
    Key? key,
  }) : super(key: key);

  @override
  _Dica7PageState createState() => _Dica7PageState();
}

class _Dica7PageState extends State<Dica7Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF49AAA),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('ORGANIZAÇÃO'),
        backgroundColor: const Color(0xFFF49AAA),
        /*toolbarHeight: 64,
        actions: [
          IconButton(
            icon: const Icon(Icons.house),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const TelaPrincipalPage();
                  },
                ),
              );
            },
          ),
        ],*/
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/logo.png",
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'AINDA NÃO HÁ DICAS CADASTRADAS',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
