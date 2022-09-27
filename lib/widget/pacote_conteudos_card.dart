import 'package:flutter/material.dart';
import '../domain/pacote_conteudos.dart';
import '../pages/add/pacote_adicionarConteudos.dart';

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
  // bool value1 = false;
  // bool value2 = false;
  // bool value3 = false;
  // bool value4 = false;

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
                  color: const Color(0xFFFFCC99),
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        pacote.nomedisciplina,
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
                      CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: Color(0xFFF25E7A),
                        checkColor: Colors.white,
                        value: pacote.value,
                        title: Text(
                          pacote.conteudo1,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        onChanged: (value) => setState(() => this.pacote.value = value!),
                      ),
                      CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: Color(0xFFF25E7A),
                        checkColor: Colors.white,
                        value: pacote.value,
                        title: Text(
                          pacote.conteudo2,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        onChanged: (value) => setState(() => this.pacote.value = value!),
                      ),
                      CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: Color(0xFFF25E7A),
                        checkColor: Colors.white,
                        value: pacote.value,
                        title: Text(
                          pacote.conteudo3,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        onChanged: (value) => setState(() => this.pacote.value = value!),
                      ),
                      CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: Color(0xFFF25E7A),
                        checkColor: Colors.white,
                        value: pacote.value,
                        title: Text(
                          pacote.conteudo4,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        onChanged: (value) => setState(() => this.pacote.value = value!),
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
            return const PacoteAdicionarConteudos();
          }
      ),
    );
  }
}

// buildCard({
//   required String tarefa1,
//   required String tarefa2,
//   required String tarefa3,
//   required String tarefa4,
//   required String tarefa5,
// }) {
//   return Card(
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(16),
//     ),
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             const Icon(Icons.circle),
//             const ClipRRect(
//               borderRadius: BorderRadius.vertical(
//               top: Radius.circular(16),
//             ),
//           ),
//           //colocar checkbox aqui
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   tarefa1,
//                  style: const TextStyle(fontWeight: FontWeight.bold),
//                ),
//               ],
//             ),
//            ),
//             const Icon(Icons.remove_outlined),
//           ],
//         ),
//         const SizedBox(height: 8),
//         Row(
//           children: [
//             const Icon(Icons.circle),
//             const ClipRRect(
//               borderRadius: BorderRadius.vertical(
//               top: Radius.circular(16),
//             ),
//           ),
//           //colocar checkbox aqui
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   tarefa2,
//                  style: const TextStyle(fontWeight: FontWeight.bold),
//                ),
//               ],
//             ),
//            ),
//             const Icon(Icons.remove_outlined),
//           ],
//         ),
//         const SizedBox(height: 8),
//         Row(
//           children: [
//             const Icon(Icons.circle),
//             const ClipRRect(
//               borderRadius: BorderRadius.vertical(
//               top: Radius.circular(16),
//             ),
//           ),
//           //colocar checkbox aqui
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   tarefa3,
//                  style: const TextStyle(fontWeight: FontWeight.bold),
//                ),
//               ],
//             ),
//            ),
//             const Icon(Icons.remove_outlined),
//           ],
//         ),
//         const SizedBox(height: 8),
//         Row(
//           children: [
//             const Icon(Icons.circle),
//             const ClipRRect(
//               borderRadius: BorderRadius.vertical(
//               top: Radius.circular(16),
//             ),
//           ),
//           //colocar checkbox aqui
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   tarefa4,
//                  style: const TextStyle(fontWeight: FontWeight.bold),
//                ),
//               ],
//             ),
//            ),
//             const Icon(Icons.remove_outlined),
//           ],
//         ),
//         const SizedBox(height: 8),
//         Row(
//           children: [
//             const Icon(Icons.circle),
//             const ClipRRect(
//               borderRadius: BorderRadius.vertical(
//               top: Radius.circular(16),
//             ),
//           ),
//           //colocar checkbox aqui
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   tarefa5,
//                  style: const TextStyle(fontWeight: FontWeight.bold),
//                ),
//               ],
//             ),
//            ),
//             const Icon(Icons.remove_outlined),
//           ],
//         ),
//       ],
//     ),
//   );
//
//
// }
