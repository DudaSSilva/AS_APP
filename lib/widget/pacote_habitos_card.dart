import 'package:flutter/material.dart';

import '../domain/habitos.dart';

class CardPacoteHabitos extends StatefulWidget {
  final PacoteImages pacoteImages;

  const CardPacoteHabitos({
    Key? key,
    required this.pacoteImages,
  }) : super(key: key);

  @override
  _CardPacoteHabitosState createState() => _CardPacoteHabitosState();
}

class _CardPacoteHabitosState extends State<CardPacoteHabitos> {
  PacoteImages get pacote => widget.pacoteImages;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 500,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 10,
            crossAxisSpacing: 10,
            mainAxisSpacing: 0,
          ),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //Envolver cada imagem com um card para ficar clicável

                Card(
                  child: Image.asset(
                    pacote.images,
                    width: 200,
                    height: 200,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                const SizedBox(height: 20),
                Card(
                  child: Image.asset(
                    pacote.images2,
                    width: 200,
                    height: 200,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // InkWell(
                //   onTap: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) {
                //           return tela;
                //         },
                //       ),
                //     );
                //   },
                  Card(
                    child: Image.asset(
                      pacote.images3,
                      width: 200,
                      height: 200,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                const SizedBox(height: 20),
                Card(
                  child: Image.asset(
                    pacote.images4,
                    width: 200,
                    height: 200,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /*
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
  */
}
