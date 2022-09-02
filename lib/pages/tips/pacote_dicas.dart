import 'package:flutter/material.dart';
import '../../domain/pacote_dica.dart';
import 'dica1_page.dart';
import 'dica2_page.dart';
import 'dica3_page.dart';
import 'dica4_page.dart';
import 'dica5_page.dart';
import 'dica6_page.dart';
import 'dica7_page.dart';
import '../../widget/pacote_dica_card.dart';
import '../pacote_telaPrincipal.dart';
import '../../domain/pacote_planejamento.dart';

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
    color: 0xFFFFC690,
  );

  PacoteDica pacote2 = PacoteDica(
    title: 'CRONOGRAMA',
    color: 0xFFFFCEEF,
  );

  PacoteDica pacote3 = PacoteDica(
    title: 'DESEMPENHO',
    color: 0xFFFFFFCC,
  );

  PacoteDica pacote4 = PacoteDica(
    title: 'CONCENTRAÇÃO',
    color: 0xFFE88883,
  );

  PacoteDica pacote5 = PacoteDica(
    title: 'MEDITAÇÃO',
    color: 0xFFF4D9A9,
  );

  PacoteDica pacote6 = PacoteDica(
    title: 'ESTUDOS',
    color: 0xFFD7525B,
  );

  PacoteDica pacote7 = PacoteDica(
    title: 'ORGANIZAÇÃO',
    color: 0xFFF49AAA,
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
                  const SizedBox(height: 16),
                  CardPacoteDica(
                    pacoteDica: pacote1,
                    tela: const Dica1Page(),
                  ),
                  const SizedBox(height: 16),
                  CardPacoteDica(
                    pacoteDica: pacote2,
                    tela: const Dica2Page(),
                  ),
                  const SizedBox(height: 16),
                  CardPacoteDica(
                    pacoteDica: pacote3,
                    tela: const Dica3Page(),
                  ),
                  const SizedBox(height: 16),
                  CardPacoteDica(
                    pacoteDica: pacote4,
                    tela: const Dica4Page(),
                  ),
                  const SizedBox(height: 16),
                  CardPacoteDica(
                    pacoteDica: pacote5,
                    tela: const Dica5Page(),
                  ),
                  const SizedBox(height: 16),
                  CardPacoteDica(
                    pacoteDica: pacote6,
                    tela: const Dica6Page(),
                  ),
                  const SizedBox(height: 16),
                  CardPacoteDica(
                    pacoteDica: pacote7,
                    tela: const Dica7Page(),
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