import 'package:flutter/material.dart';
import '../pacote_telaPrincipal.dart';

class Dica6Page extends StatefulWidget {

  const Dica6Page({
    Key? key,
  }) : super(key: key);

  @override
  _Dica6PageState createState() => _Dica6PageState();
}

class _Dica6PageState extends State<Dica6Page> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD7525B),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('ESTUDOS'),
        backgroundColor: const Color(0xFFD7525B),
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