import 'package:flutter/material.dart';
//import '../domain/pacote_planejamento.dart';
import '../domain/pacote_materias.dart';
import '../domain/pacote_planejamento.dart';
import '../widget/pacote_disciplinas_card.dart';

class PacoteDisciplinas extends StatefulWidget {
  final PacoteMaterias pacoteMaterias;
  final PacotePlanejamento pacotePlanejamento;

  const PacoteDisciplinas({
    Key? key,
    required this.pacoteMaterias,
    required this.pacotePlanejamento,
  }) : super(key: key);

  @override
  _PacoteDisciplinasState createState() => _PacoteDisciplinasState();
}

class _PacoteDisciplinasState extends State<PacoteDisciplinas> {
  PacoteMaterias get pacote => widget.pacoteMaterias;
  PacotePlanejamento get pacoteX => widget.pacotePlanejamento;

  PacoteMaterias pacote1 = PacoteMaterias(
    disciplina: 'Português',
  );
  PacoteMaterias pacote2 = PacoteMaterias(
    disciplina: 'Matemática',
  );
  PacoteMaterias pacote3 = PacoteMaterias(
    disciplina: 'História',
  );
  PacoteMaterias pacote4 = PacoteMaterias(
    disciplina: 'Espanhol',
  );
  PacoteMaterias pacote5 = PacoteMaterias(
    disciplina: 'Sociologia',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFE8E8),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('DISCIPLINAS E CONTEÚDOS'),
        backgroundColor: const Color(0xFFF25E7A),
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
                color: Colors.purple, borderRadius: BorderRadius.circular(16)),
            padding: const EdgeInsets.all(16),
          ),
          const SizedBox(height: 16),
          CardPacoteDisciplinas(pacoteMaterias: pacote1),
          const SizedBox(height: 16),
          CardPacoteDisciplinas(pacoteMaterias: pacote2),
          const SizedBox(height: 16),
          CardPacoteDisciplinas(pacoteMaterias: pacote3),
          const SizedBox(height: 16),
          CardPacoteDisciplinas(pacoteMaterias: pacote4),
          const SizedBox(height: 16),
          CardPacoteDisciplinas(pacoteMaterias: pacote5),
          const SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Adicionar disciplina',
                style: TextStyle(fontSize: 22),
              ),
              const SizedBox(width: 8),
              ElevatedButton.icon(
                onPressed: (){},
                icon: Icon(
                  Icons.add_circle,
                  color: Colors.black,
                ),
                label: Text(''),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
