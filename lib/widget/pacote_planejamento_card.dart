import 'package:flutter/material.dart';
import '../pages/list/pacote_listaTarefas.dart';
import '../domain/pacote_planejamento.dart';
//import '../domain/pacote_tarefas.dart';

class CardPacotePlanejamento extends StatefulWidget {
  final PacotePlanejamento pacotePlanejamento;
  final Widget tela;

  const CardPacotePlanejamento({
    Key? key,
    required this.pacotePlanejamento,
    required this.tela
  }) : super(key: key);

  @override
  _CardPacotePlanejamentoState createState() => _CardPacotePlanejamentoState();
}

class _CardPacotePlanejamentoState extends State<CardPacotePlanejamento> {
  PacotePlanejamento get pacote => widget.pacotePlanejamento;

  Widget get tela => widget.tela;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return tela;
            },
          ),
        );
      },
      child: Card(
        color: Color(pacote.cor),
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
                  pacote.icon,
                  const SizedBox(width: 8),
                  Text(
                    pacote.titulo,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
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