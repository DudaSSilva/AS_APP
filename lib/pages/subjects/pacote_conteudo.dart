import 'package:flutter/material.dart';
import 'package:untitled/pages/add/pacote_adicionarConteudos.dart';
import 'package:untitled/widget/pacote_conteudos_card.dart';
import 'package:untitled/data/bdListaConteudos.dart';
import '../../domain/pacote_conteudos.dart';

class PacoteConteudo extends StatefulWidget {
  const PacoteConteudo({
    Key? key,
  }) : super(key: key);

  @override
  _PacoteConteudoState createState() => _PacoteConteudoState();
}

class _PacoteConteudoState extends State<PacoteConteudo> {
  Future<List<PacoteConteudos>> lista = BD.getPacoteConteudos();

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: const Color(0xFFFFE8E8),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('PORTUGUÊS'),
        backgroundColor: const Color(0xFFF25E7A),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    BuildListView(),
                    const SizedBox(height: 8),
                    // const Text(
                    //   'JULHO:',
                    //   style: TextStyle(
                    //     fontSize: 16,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // ),
                    Row(
                      children: [
                        ElevatedButton.icon(
                          onPressed: onPressedButtonAdd,
                          icon: const Icon(
                            Icons.add_circle,
                            color: Color(0xFFF25E7A),
                          ),
                          label: const Text('Adicionar'),
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFFFCC99),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.remove_circle,
                            color: Colors.red[600],
                          ),
                          label: const Text('Remover'),
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFFFCC99),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


  void onPressedButtonAdd() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return const PacoteAdicionarConteudos();
      }),
    );
  }

  BuildListView() {
    return FutureBuilder<List<PacoteConteudos>>(
        future: lista,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // ?? -> Verificar ser o conteudo de snapshot.data é nulo
            List<PacoteConteudos> lista = snapshot.data ?? [];

            return ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: lista.length,
                itemBuilder: (BuildContext context, int index) {
                  return CardPacoteConteudos(pacoteConteudos: lista[index]);
                }
            );
          }

          return Center(child: const CircularProgressIndicator());
        }

    );
  }
}
