import 'package:flutter/material.dart';

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
      color: const Color(0xFFFFF6E5),
      //shape: RoundedRectangleBorder(
      //borderRadius: BorderRadius.circular(8),
      //),

      child: Column(
        children: [
          Container(
            height: 250,
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 6,
                childAspectRatio: 1,
                crossAxisSpacing: 10,
                mainAxisSpacing: 0,
              ),
              children: const [
                Text(
                  'Tarefas',
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
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
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),

                Text(
                  'Simulado',
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
                const Icon(Icons.circle),
                const Icon(Icons.circle),
                const Icon(Icons.circle),
                const Icon(Icons.circle),
                const Icon(Icons.circle),

                Text(
                  'Atividades',
                  style: const TextStyle(
                    fontSize: 14,
                  ),
                ),
                const Icon(Icons.circle),
                const Icon(Icons.circle),
                const Icon(Icons.circle),
                const Icon(Icons.circle),
                const Icon(Icons.circle),

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

                Text(
                  'Vídeo aula',
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
          ),
          const SizedBox(height: 24),
        ],
      ),

    );
  }

  SingleChildScrollView buildListView() {
    return SingleChildScrollView(
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
                    children: const [
                      Text(
                        'Tarefas',
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        'S',
                        style: const TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        'T',
                        style: const TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Q',
                        style: const TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Q',
                        style: const TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        'S',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
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
                          const SizedBox(width: 8),
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
                          const SizedBox(width: 8),
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
                          const Text(
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
                const SizedBox(height: 32),
                Container(
                  color: const Color(0xFFFFF6E5),
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Tarefas',
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'S',
                        style: const TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'T',
                        style: const TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Q',
                        style: const TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'Q',
                        style: const TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      const SizedBox(width: 8),
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
                          const SizedBox(width: 8),
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
                          const SizedBox(width: 8),
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
                          const Text(
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
