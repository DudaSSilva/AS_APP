import 'package:flutter/material.dart';
import 'package:untitled/domain/pacote_conteudos.dart';
import '../domain/pacote_tarefas.dart';
import '../pages/pacote_adicionarLista.dart';
//import '../pages/pacote_listaTarefas.dart';

class CardPacoteConteudos extends StatefulWidget {
  final PacoteConteudos pacoteConteudos;

  const CardPacoteConteudos({
    Key? key,
    required this.pacoteConteudos,
  }) : super(key: key);

  @override
  _CardPacoteConteudosState createState() => _CardPacoteConteudosState();
}

class _CardPacoteConteudosState extends State<CardPacoteConteudos> {
  PacoteConteudos get pacote => widget.pacoteConteudos;

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
                      IconButton(
                        icon: const Icon(
                          Icons.library_add,
                          color: Color(0xFFDD2E44),
                        ),
                        onPressed: onPressedButtonAdd,
                      ),
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
                          buildCard(
                            tarefa1: pacote.tarefa1,
                            tarefa2: pacote.tarefa2,
                            tarefa3: pacote.tarefa3,
                            tarefa4: pacote.tarefa4,
                            tarefa5: pacote.tarefa5,
                          ),
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
  void onPressedButtonAdd() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) {
            return const PacoteAdicionarLista();
          }
      ),
    );
  }
}

buildCard({
  required String tarefa1,
  required String tarefa2,
  required String tarefa3,
  required String tarefa4,
  required String tarefa5,
}) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Icon(Icons.circle),
            const ClipRRect(
              borderRadius: BorderRadius.vertical(
              top: Radius.circular(16),
            ),
          ),
          //colocar checkbox aqui
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tarefa1,
                 style: const TextStyle(fontWeight: FontWeight.bold),
               ),
              ],
            ),
           ),
            const Icon(Icons.remove_outlined),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            const Icon(Icons.circle),
            const ClipRRect(
              borderRadius: BorderRadius.vertical(
              top: Radius.circular(16),
            ),
          ),
          //colocar checkbox aqui
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tarefa2,
                 style: const TextStyle(fontWeight: FontWeight.bold),
               ),
              ],
            ),
           ),
            const Icon(Icons.remove_outlined),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            const Icon(Icons.circle),
            const ClipRRect(
              borderRadius: BorderRadius.vertical(
              top: Radius.circular(16),
            ),
          ),
          //colocar checkbox aqui
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tarefa3,
                 style: const TextStyle(fontWeight: FontWeight.bold),
               ),
              ],
            ),
           ),
            const Icon(Icons.remove_outlined),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            const Icon(Icons.circle),
            const ClipRRect(
              borderRadius: BorderRadius.vertical(
              top: Radius.circular(16),
            ),
          ),
          //colocar checkbox aqui
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tarefa4,
                 style: const TextStyle(fontWeight: FontWeight.bold),
               ),
              ],
            ),
           ),
            const Icon(Icons.remove_outlined),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            const Icon(Icons.circle),
            const ClipRRect(
              borderRadius: BorderRadius.vertical(
              top: Radius.circular(16),
            ),
          ),
          //colocar checkbox aqui
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tarefa5,
                 style: const TextStyle(fontWeight: FontWeight.bold),
               ),
              ],
            ),
           ),
            const Icon(Icons.remove_outlined),
          ],
        ),
      ],
    ),
  );


}
