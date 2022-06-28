import 'package:flutter/material.dart';
import '../domain/pacote_planejamento.dart';
import '../domain/pacote_tarefas.dart';
import '../widget/pacote_lista_card.dart';

class PacoteConteudo extends StatefulWidget {
final PacotePlanejamento pacotePlanejamento;

const PacoteConteudo({
  Key? key,
  required this.pacotePlanejamento,
}) : super(key: key);

@override
_PacoteConteudoState createState() => _PacoteConteudoState();
}

class _PacoteConteudoState extends State<PacoteConteudo> {
PacotePlanejamento get pacote => widget.pacotePlanejamento;

PacoteTarefas pacote1 = PacoteTarefas(
  nomeLista: 'CONTEÚDOS',
  cor: 0xFFF4D9A9,
  tarefa: 'Modernismo',
);
PacoteTarefas pacote2 = PacoteTarefas(
  nomeLista: 'CONTEÚDOS',
  cor: 0xFFFFC690,
  tarefa: 'Vanguardas europeias',
);

@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: const Color(0xFFFFE8E8),
    appBar: AppBar(
      centerTitle: true,
      title: const Text('PORTUGUÊS'),
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(Icons.person_outline),
                  SizedBox(width: 8),
                  Text(
                    'JUNHO:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              CardPacoteLista(pacoteTarefas: pacote1),
              const SizedBox(height: 8),
              const Text(
                'JULHO:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
}
