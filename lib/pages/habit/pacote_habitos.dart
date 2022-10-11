import 'package:flutter/material.dart';
import '../../pages/add/pacote_adicionarHabito.dart';
import '../../domain/pacote_planejamento.dart';
import '../../widget/pacote_habitos_card.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      ElevatedButton.icon(
                        onPressed: onPressedButtonAdd,
                        icon: const Icon(
                          Icons.add_circle,
                          color: Color(0xFFF25E7A),
                        ),
                        label: const Text('Adicionar'),
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFFFFCC99),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.remove_circle,
                          color: Colors.red[600],
                        ),
                        label: const Text('Remover'),
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFFFFCC99),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  const CardPacoteHabitos(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onPressedButtonAdd() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return const PacoteAdicionarHabito();
      }),
    );
  }
}
