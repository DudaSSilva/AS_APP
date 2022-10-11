import 'package:asapp/data/dao/consquistas_dao.dart';
import 'package:flutter/material.dart';
import '../../data/dataSimulatory/bdConquistas.dart';
import '../../domain/pacote_conquistas.dart';
import '../../widget/pacote_conquistas_card.dart';

class PacoteConquista extends StatefulWidget {

  const PacoteConquista({
    Key? key,
  }) : super(key: key);

  @override
  _PacoteConquistaState createState() => _PacoteConquistaState();
}

class _PacoteConquistaState extends State<PacoteConquista> {
  Future<List<PacoteConquistas>> lista = ConquistasDao().listarConquistas();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDD2E44),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('CONQUISTAS'),
        backgroundColor: const Color(0xFFDD2E44),
      ),
      body: buildBody(),
    );
  }

  buildBody() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: BuildListView(),
    );
  }
  BuildListView() {
    return FutureBuilder<List<PacoteConquistas>>(
        future: lista,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<PacoteConquistas> lista = snapshot.data ?? [];

            return ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: lista.length,
                itemBuilder: (BuildContext context, int index) {
                  return CardPacoteConquistas(pacoteConquistas: lista[index]);
                }
            );
          }

          return const Center(child: CircularProgressIndicator());
        }

    );
  }

}