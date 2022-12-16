import 'package:flutter/material.dart';
//import '../../data/dataSimulatory/bdListaConteudos.dart';
import '../../data/api/conteudos_api.dart';
import '../../data/dataSimulatory/bdListaConteudos.dart';
import '../../domain/pacote_conteudos.dart';
import '../../widget/pacote_conteudos_card.dart';
import '../add/pacote_adicionarConteudos.dart';

class PacoteConteudo extends StatefulWidget {
  const PacoteConteudo({
    Key? key,
  }) : super(key: key);

  @override
  _PacoteConteudoState createState() => _PacoteConteudoState();
}

class _PacoteConteudoState extends State<PacoteConteudo> {
  //Future<List<PacoteConteudos>> lista = BD.getPacoteConteudos();
  Future<List<PacoteConteudos>> lista = ConteudosApi().listarConteudos();

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: const Color(0xFFFFE8E8),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('PORTUGUÊS'),
        backgroundColor: const Color(0xFFF5BFA1),
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
    return FutureBuilder<List<PacoteConteudos>>( //retorna uma lista futura
        future: lista,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<PacoteConteudos> lista = snapshot.data ?? [];

            return ListView.builder( //monta a lista
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: lista.length, //faz a contagem dos elementos pra rodar/montar a lista até atingir essa contagem
                itemBuilder: (BuildContext context, int index) {
                  return CardPacoteConteudos(pacoteConteudos: lista[index]);//retorna o card de conteúdos que recebe como parâmetro
                  // os dados do banco de dadops armzenados na lista
                }
            );
          }

          return Center(child: const CircularProgressIndicator());
        }

    );
  }
}
