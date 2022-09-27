import 'package:flutter/material.dart';
import '../pacote_telaPrincipal.dart';

class Dica4Page extends StatefulWidget {

  const Dica4Page({
    Key? key,
  }) : super(key: key);

  @override
  _Dica4PageState createState() => _Dica4PageState();
}

class _Dica4PageState extends State<Dica4Page> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE88883),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('CONCENTRAÇÃO'),
        backgroundColor: const Color(0xFFE88883),
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