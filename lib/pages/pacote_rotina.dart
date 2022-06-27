import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widget/pacote_rotina_card.dart';

import '../domain/pacote_planejamento.dart';

class PacoteRotina extends StatefulWidget {
  final PacotePlanejamento pacotePlanejamento;

  const PacoteRotina({
    Key? key,
    required this.pacotePlanejamento,
  }) : super(key: key);

  @override
  _PacoteRotinaState createState() => _PacoteRotinaState();
}

class _PacoteRotinaState extends State<PacoteRotina> {
  PacotePlanejamento get pacote => widget.pacotePlanejamento;

  PacotePlanejamento pacote1 = PacotePlanejamento(
    icon: const Icon(Icons.calendar_month),
    titulo: 'Metas diárias',
    cor: 0xFFFFCEEF,
  );
  PacotePlanejamento pacote2 = PacotePlanejamento(
    icon: const Icon(Icons.list),
    titulo: 'IFAL',
    cor: 0xFFF8E9CE,
  );
  PacotePlanejamento pacote3 = PacotePlanejamento(
    icon: const Icon(Icons.book),
    titulo: 'ENEM',
    cor: 0xFFFFCC99,
  );
  PacotePlanejamento pacote4 = PacotePlanejamento(
    icon: const Icon(Icons.lock_clock),
    titulo: 'Importante',
    cor: 0xFFF8E9CE,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFE8E8),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('PLANEJAMENTO SEMANAL'),
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
                color: Colors.pink.shade200, borderRadius: BorderRadius.circular(16)),
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                //ONDE VAI FICAR O CALENDÁRIO:
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'Sexta - feira',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 24),
                      const Text(
                        '07.06.2022',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      const SizedBox(height: 8),
                    ],
                  ),
                ),
                const SizedBox(width: 24),
                const Placeholder(
                  fallbackHeight: 150,
                  fallbackWidth: 100,
                  color: Colors.white,

                )
              ],
            ),
          ),
          const SizedBox(height: 16),
          CardPacoteRotina(pacotePlanejamento: pacote1),
          const SizedBox(height: 16),
          CardPacoteRotina(pacotePlanejamento: pacote2),
          const SizedBox(height: 16),
          CardPacoteRotina(pacotePlanejamento: pacote3),
          const SizedBox(height: 16),
          CardPacoteRotina(pacotePlanejamento: pacote4),
        ],
      ),
    );
  }
}
