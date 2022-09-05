import 'package:flutter/material.dart';
import '../domain/pacote_materias.dart';
import '../domain/pacote_planejamento.dart';
import '../pages/subjects/pacote_conteudo.dart';
//import '../domain/pacote_tarefas.dart';

class CardPacoteDisciplinas extends StatefulWidget {
  final PacoteMaterias pacoteMaterias;
  //final PacotePlanejamento pacotePlanejamento;

  const CardPacoteDisciplinas({
    Key? key,
    required this.pacoteMaterias,
    //required this.pacotePlanejamento,
  }) : super(key: key);

  @override
  _CardPacoteDisciplinasState createState() => _CardPacoteDisciplinasState();
}

class _CardPacoteDisciplinasState extends State<CardPacoteDisciplinas> {
  PacoteMaterias get pacote => widget.pacoteMaterias;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return PacoteConteudo();
            },
          ),
        );
      },
      child: Card(
        color: Color(0xFFFFCC99),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            const ClipRRect(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pacote.disciplina,
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
