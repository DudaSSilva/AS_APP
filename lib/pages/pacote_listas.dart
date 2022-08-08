//ALTERAR PARA TELA DE ANOTAÇÕES
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:untitled/pages/pacote_telaPrincipal.dart';

class PacoteListas extends StatefulWidget {
  const PacoteListas({Key? key}) : super(key: key);

  @override
  _PacoteListasState createState() => _PacoteListasState();
}

class _PacoteListasState extends State<PacoteListas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFE8E8),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('MINHAS LISTAS'),
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
