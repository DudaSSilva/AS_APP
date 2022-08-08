import 'package:flutter/material.dart';
import 'package:untitled/domain/pacote_materias.dart';
import 'package:untitled/widget/pacote_disciplinas_card.dart';
import '../domain/pacote_planejamento.dart';
import '../domain/pacote_conteudos.dart';
import '../widget/pacote_lista_card.dart';

class PacoteConteudo extends StatefulWidget {

const PacoteConteudo({
  Key? key,
}) : super(key: key);

@override
_PacoteConteudoState createState() => _PacoteConteudoState();
}

class _PacoteConteudoState extends State<PacoteConteudo> {

  PacoteConteudos pacote1 = PacoteConteudos(
  nomeLista: 'CONTEÚDOS',
  cor: 0xFFF4D9A9,
  tarefa: 'Modernismo',
);
  PacoteConteudos pacote2 = PacoteConteudos(
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
              //CardPacoteDisciplinas(pacoteConteudos: pacote1),
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
