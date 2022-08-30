import 'package:flutter/material.dart';
import '../pages/pacote_listaTarefas.dart';
import '../domain/pacote_planejamento.dart';
import '../domain/pacote_dica.dart';

class CardPacoteDica extends StatefulWidget {
  final PacoteDica pacoteDica;
  final Widget tela;

  const CardPacoteDica({
    Key? key,
    required this.pacoteDica,
    required this.tela
  }) : super(key: key);

  @override
  _CardPacoteDicaState createState() => _CardPacoteDicaState();
}

class _CardPacoteDicaState extends State<CardPacoteDica> {
  PacoteDica get pacote => widget.pacoteDica;
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
        color: Color(pacote.color),
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
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(Icons.tips_and_updates_outlined),
                      const SizedBox(width: 8),
                      Text(
                        pacote.title,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
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