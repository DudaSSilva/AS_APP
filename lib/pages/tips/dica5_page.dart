import 'package:flutter/material.dart';
import '../pacote_telaPrincipal.dart';

class Dica5Page extends StatefulWidget {

  const Dica5Page({
    Key? key,
  }) : super(key: key);

  @override
  _Dica5PageState createState() => _Dica5PageState();
}

class _Dica5PageState extends State<Dica5Page> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4D9A9),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('MEDITAÇÃO'),
        backgroundColor: const Color(0xFFF4D9A9),
        toolbarHeight: 64,
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
        ],
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
                      color: Color(0xFFF25E7A),
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