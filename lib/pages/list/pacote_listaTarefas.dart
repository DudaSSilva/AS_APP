import 'package:asapp/data/api/tarefas_api.dart';
import 'package:flutter/material.dart';
import '../../data/dao/tarefas_dao.dart';
import '../add/pacote_adicionarLista.dart';
import 'pacote_listasFlashcards.dart';
import '../pacote_telaPrincipal.dart';
import '../../domain/pacote_planejamento.dart';
import '../../domain/pacote_tarefas.dart';
import '../../widget/pacote_lista_card.dart';

class PacoteLista extends StatefulWidget {
  final PacotePlanejamento pacotePlanejamento;
  final String nomeUsuario;

  const PacoteLista({
    Key? key,
    required this.pacotePlanejamento,
    required this.nomeUsuario,
  }) : super(key: key);

  @override
  _PacoteListaState createState() => _PacoteListaState();
}

class _PacoteListaState extends State<PacoteLista> {
  PacotePlanejamento get pacote => widget.pacotePlanejamento;
  Future<List<PacoteTarefas>> lista = TarefasApi().listarTarefas();

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
                    return const PacoteAnotacoes();
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
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "images/book.png",
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Row(
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
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  BuildListView(),
                ],
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
        return PacoteAdicionarLista(nomeUsuario: widget.nomeUsuario);
      }),
    );
  }

  void goAnotations() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return TelaPrincipalPage(nomeUsuario: widget.nomeUsuario);
      }),
    );
  }

  BuildListView() {
    return FutureBuilder<List<PacoteTarefas>>(
        future: lista,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // ?? -> Verificar ser o conteudo de snapshot.data é nulo
            List<PacoteTarefas> lista = snapshot.data ?? [];

            return ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: lista.length,
                itemBuilder: (BuildContext context, int index) {
                  return CardPacoteLista(
                      pacoteTarefas: lista[index],
                      nomeUsuario: widget.nomeUsuario);
                });
          }

          return const Center(child: CircularProgressIndicator());
        });
  }
}
