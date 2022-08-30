import 'package:flutter/material.dart';
import 'package:untitled/domain/pacote_dica.dart';
import 'package:untitled/pages/dica1_page.dart';
import 'package:untitled/widget/pacote_dica_card.dart';
import '../pages/pacote_telaPrincipal.dart';
import '../domain/pacote_planejamento.dart';

class PacoteDicas extends StatefulWidget {
  final PacotePlanejamento pacotePlanejamento;

  const PacoteDicas({
    Key? key,
    required this.pacotePlanejamento,
  }) : super(key: key);

  @override
  _PacoteDicasState createState() => _PacoteDicasState();
}

class _PacoteDicasState extends State<PacoteDicas> {
  PacotePlanejamento get pacote => widget.pacotePlanejamento;

  PacoteDica pacote1 = PacoteDica(
    title: 'PLANEJAMENTO',
    color: 0xFFFFCEEF,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFE8E8),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('DICAS'),
        backgroundColor: const Color(0xFFF25E7A),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  const SizedBox(height: 16),
                  CardPacoteDica(
                      pacoteDica: pacote1,
                      tela: const Dica1Page(),
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
