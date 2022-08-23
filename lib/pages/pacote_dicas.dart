import 'package:flutter/material.dart';
import '../pages/pacote_telaPrincipal.dart';
import '../domain/pacote_planejamento.dart';

class PacoteDicas extends StatefulWidget {
  final PacotePlanejamento pacotePlanejamento;

  const PacoteDicas({
    Key? key,
    required this.pacotePlanejamento,
  }) : super(key: key);

  @override
  _PacoteDicasState createState() => _PacoteDicasState();
}

class _PacoteDicasState extends State<PacoteDicas> {
  PacotePlanejamento get pacote => widget.pacotePlanejamento;
  // Future<List<PacoteTarefas>> lista = BD.getPacoteTarefas();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFE8E8),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('DICAS'),
        backgroundColor: const Color(0xFFF25E7A),
        toolbarHeight: 64,
        actions: [
          IconButton(
            icon: const Icon(Icons.house),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const TelaPrincipalPage();
                  },
                ),
              );
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(height: 8),
                  Text('Esta página ainda será feita'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // BuildListView() {
  //   return FutureBuilder<List<PacoteDicas>>(
  //       future: lista,
  //       builder: (context, snapshot) {
  //         if (snapshot.hasData) {
  //           // ?? -> Verificar ser o conteudo de snapshot.data é nulo
  //           List<PacoteTarefas> lista = snapshot.data ?? [];
  //
  //           return ListView.builder(
  //               shrinkWrap: true,
  //               physics: const NeverScrollableScrollPhysics(),
  //               itemCount: lista.length,
  //               itemBuilder: (BuildContext context, int index) {
  //                 return CardPacoteLista(pacoteTarefas: lista[index]);
  //               }
  //           );
  //         }
  //
  //         return Center(child: const CircularProgressIndicator());
  //       }
  //
  //   );
  // }
}
