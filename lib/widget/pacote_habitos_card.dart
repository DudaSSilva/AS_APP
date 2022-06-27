import 'package:flutter/material.dart';
import '../domain/pacote_tarefas.dart';
//import '../pages/pacote_lista.dart';

class CardPacoteHabitos extends StatefulWidget {
  //final PacoteTarefas pacoteTarefas;

  const CardPacoteHabitos({
    Key? key,
    //required this.pacoteTarefas,
  }) : super(key: key);

  @override
  _CardPacoteHabitosState createState() => _CardPacoteHabitosState();
}

class _CardPacoteHabitosState extends State<CardPacoteHabitos> {
  //PacoteTarefas get pacote => widget.pacoteTarefas;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFFFF6E5),
      //shape: RoundedRectangleBorder(
      //borderRadius: BorderRadius.circular(8),
      //),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'S',
                        style: const TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        'T',
                        style: const TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        'Q',
                        style: const TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        'Q',
                        style: const TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        'S',
                        style: const TextStyle(
                          fontSize: 22,
                        ),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text(
                            'Responder simulado',
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),

                          const Icon(Icons.circle),
                          const Icon(Icons.circle),
                          const Icon(Icons.circle),
                          const Icon(Icons.circle),
                          const Icon(Icons.circle),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text(
                            'Mapas mentais',
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),

                          const Icon(Icons.circle),
                          const Icon(Icons.circle),
                          const Icon(Icons.circle),
                          const Icon(Icons.circle),
                          const Icon(Icons.circle),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text(
                            'Lista exercícios',
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),

                          const Icon(Icons.circle),
                          const Icon(Icons.circle),
                          const Icon(Icons.circle),
                          const Icon(Icons.circle),
                          const Icon(Icons.circle),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text(
                            'Resumos',
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),

                          const Icon(Icons.circle),
                          const Icon(Icons.circle),
                          const Icon(Icons.circle),
                          const Icon(Icons.circle),
                          const Icon(Icons.circle),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text(
                            'Vídeo aulas',
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),

                          const Icon(Icons.circle),
                          const Icon(Icons.circle),
                          const Icon(Icons.circle),
                          const Icon(Icons.circle),
                          const Icon(Icons.circle),
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