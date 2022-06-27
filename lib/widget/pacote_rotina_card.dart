import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import '../pages/pacote_lista.dart';
import '../domain/pacote_planejamento.dart';
import '../pages/pacote_rotina.dart';

class CardPacoteRotina extends StatefulWidget {
  final PacotePlanejamento pacotePlanejamento;

  const CardPacoteRotina({
    Key? key,
    required this.pacotePlanejamento,
  }) : super(key: key);

  @override
  _CardPacoteRotinaState createState() => _CardPacoteRotinaState();
}

class _CardPacoteRotinaState extends State<CardPacoteRotina> {
  PacotePlanejamento get pacote => widget.pacotePlanejamento;

  @override
  Widget build(BuildContext context) {
    return Card(
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
              child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(

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
                  SizedBox(height: 24),
                  Container(
                    color: Color(0xFFFFFFCC),
                    child: Text('Clique para saber mais...'),
                  )
                ],

              )

            )
          ],
        ),
    );
  }
}