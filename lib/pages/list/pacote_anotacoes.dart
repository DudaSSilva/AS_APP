//ALTERAR PARA TELA DE ANOTAÇÕES
import 'package:flutter/material.dart';
import '../pacote_telaPrincipal.dart';

class PacoteAnotacoes extends StatefulWidget {
  const PacoteAnotacoes({Key? key}) : super(key: key);

  @override
  _PacoteAnotacoesState createState() => _PacoteAnotacoesState();
}

class _PacoteAnotacoesState extends State<PacoteAnotacoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFE8E8),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('ANOTAÇÕES'),
        backgroundColor: const Color(0xFFC2334D),
      ),
      body: buildBody(),
    );
  }

  buildBody() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color(0xFFC2334D),
                borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.all(16),
            child: const Text(
                'FILMES',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  color: Color(0xFFFFE8E8),
                ),
            ),
          ),
        ],
      ),
    );
  }
}
