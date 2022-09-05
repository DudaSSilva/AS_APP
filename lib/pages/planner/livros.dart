import 'package:flutter/material.dart';
import 'package:untitled/widget/pacote_livros_card.dart';
import '../../data/bdLivros.dart';
import '../../domain/pacote_livros.dart';

class PacoteLivros extends StatefulWidget {

  const PacoteLivros({
    Key? key,
  }) : super(key: key);

  @override
  _PacoteLivrosState createState() => _PacoteLivrosState();
}

class _PacoteLivrosState extends State<PacoteLivros> {
  Future<List<PacoteLivro>> lista = BD.getLivros();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFE8E8),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('LIVROS'),
        backgroundColor: const Color(0xFFF25E7A),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 16),
            BuildListView(),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  BuildListView() {
    return FutureBuilder<List<PacoteLivro>>(
        future: lista,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // ?? -> Verificar ser o conteudo de snapshot.data é nulo
            List<PacoteLivro> lista = snapshot.data ?? [];

            return ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: lista.length,
                itemBuilder: (BuildContext context, int index) {
                  return CardPacoteLivros(pacoteLivros: lista[index]);
                }
            );
          }

          return const Center(child: CircularProgressIndicator());
        }

    );
  }
}