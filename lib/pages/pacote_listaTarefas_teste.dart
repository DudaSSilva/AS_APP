import 'package:flutter/material.dart';
import 'package:untitled/pages/pacote_adicionarLista.dart';
import 'package:untitled/pages/pacote_listas.dart';
import '../domain/pacote_planejamento.dart';
import '../domain/pacote_tarefas.dart';
import '../widget/pacote_lista_card.dart';
import '../widget/pacote_planejamento_card.dart';

class PacoteLista extends StatefulWidget {
  final PacotePlanejamento pacotePlanejamento;

  const PacoteLista({
    Key? key,
    required this.pacotePlanejamento,
  }) : super(key: key);

  @override
  _PacoteListaState createState() => _PacoteListaState();
}

class _PacoteListaState extends State<PacoteLista> {
  PacotePlanejamento get pacote => widget.pacotePlanejamento;
  Future<List<PacoteTarefas>> lista = BD.getPacoteTarefas();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFE8E8),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('LISTA DE TAREFAS'),
        backgroundColor: const Color(0xFFF25E7A),
        toolbarHeight: 64,
        actions: [
          IconButton(
            icon: const Icon(Icons.list_alt),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const PacoteListas();
                  },
                ),
              );
            },
          ),
        ],
      ),
      buildListView(),
      const SizedBox(height: 16),
      buildOptions(),
    );
  }
  
  buildListView() {
    return FutureBuilder<List<PacoteTarefas>>(
      future: lista,
      builder: (context, snapshot) {

      if(snapshot.hasData) {
          // ?? -> Verificar ser o conteudo de snapshot.data é nulo
        List<PacoteTarefas> lista = snapshot.data ?? [];

        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: lista.length,
          itemBuilder: (BuildContext context, int index) {
            return CardPacoteLista(pacoteTarefas: lista[index]);
          },
        );
    }

      return Center(child: const CircularProgressIndicator());

  },
  
  buildOptions(){
    return SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton.icon(
                      onPressed: goAnotations,
                      icon: Icon(
                        Icons.list_alt,
                        color: Colors.black,
                      ),
                      label: Text('Anotações'),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFFFCC99),
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(Icons.book_online_outlined),
                          const SizedBox(width: 8),
                          ElevatedButton.icon(
                            onPressed: onPressedButtonAdd,
                            icon: const Icon(
                              Icons.add_circle,
                              color: Color(0xFFF25E7A),
                            ),
                            label: Text('Adicionar Lista'),
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFFFFCC99),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          ElevatedButton.icon(
                            onPressed: (){},
                            icon: Icon(
                              Icons.remove_circle,
                              color: Colors.red[600],
                            ),
                            label: Text('Remover Lista'),
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFFFFCC99),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
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
  
  void goAnotations() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) {
            return const TelaAnotacoes();
          }
      ),
    );
  }

}