import 'package:flutter/material.dart';
import '../domain/pacote_tarefas.dart';
//import '../pages/pacote_lista.dart';

class CardPacoteLista extends StatefulWidget {
  final PacoteTarefas pacoteTarefas;

  const CardPacoteLista({
    Key? key,
    required this.pacoteTarefas,
  }) : super(key: key);

  @override
  _CardPacoteListaState createState() => _CardPacoteListaState();
}

class _CardPacoteListaState extends State<CardPacoteLista> {
  PacoteTarefas get pacote => widget.pacoteTarefas;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(pacote.cor),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: const Color(0xFFFFF6E5),
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        pacote.nomeLista,
                        style: const TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Icon(Icons.add),
                      //Colocar um elevatedButton aqui
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(Icons.circle),
                          buildCard(
                            tarefa: pacote.tarefa,
                          ),
                          const Icon(Icons.remove_outlined),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(Icons.circle),
                          buildCard(
                            tarefa: pacote.tarefa,
                          ),
                          const Icon(Icons.remove_outlined),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(Icons.circle),
                          const SizedBox(width: 8),
                          buildCard(
                            tarefa: pacote.tarefa,
                          ),
                          const Icon(Icons.remove_outlined),
                        ],
                      ),
                    ],
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

buildCard({
  required String tarefa,
}) {
  return Card(
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
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tarefa,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        )
      ],
    ),
  );
}