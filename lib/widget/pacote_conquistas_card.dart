import 'package:flutter/material.dart';
import 'package:untitled/domain/pacote_conquistas.dart';
import '../pages/pacote_listaTarefas.dart';
import '../domain/pacote_planejamento.dart';
//import '../domain/pacote_tarefas.dart';

class CardPacoteConquistas extends StatefulWidget {
  final PacoteConquistas pacoteConquistas;

  const CardPacoteConquistas(
      {Key? key, required this.pacoteConquistas})
      : super(key: key);

  @override
  _CardPacoteConquistasState createState() => _CardPacoteConquistasState();
}

class _CardPacoteConquistasState extends State<CardPacoteConquistas> {
  PacoteConquistas get pacote => widget.pacoteConquistas;

  //Widget get tela => widget.tela;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFEF7E6B),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      pacote.title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  pacote.text,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
