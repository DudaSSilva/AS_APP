import 'package:flutter/material.dart';
import '../domain/pacote_planejamento.dart';
//import '../domain/pacote_tarefas.dart';
import '../widget/pacote_habitos_card.dart';

class PacoteHabitos extends StatefulWidget {
  final PacotePlanejamento pacotePlanejamento;

  const PacoteHabitos({
    Key? key,
    required this.pacotePlanejamento,
  }) : super(key: key);

  @override
  _PacoteHabitosState createState() => _PacoteHabitosState();
}

class _PacoteHabitosState extends State<PacoteHabitos> {
  PacotePlanejamento get pacote => widget.pacotePlanejamento;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFE8E8),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('HABIT TRACKER'),
        backgroundColor: const Color(0xFFF25E7A),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(Icons.recycling_rounded),
                    SizedBox(width: 8),
                    Icon(Icons.add_circle),
                  ],
                ),
                const SizedBox(height: 16),
                const CardPacoteHabitos(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}