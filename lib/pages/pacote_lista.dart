import 'package:flutter/material.dart';
import 'package:untitled/pages/pacote_adicionarLista.dart';
import '../domain/pacote_planejamento.dart';
import '../domain/pacote_tarefas.dart';
import '../widget/pacote_lista_card.dart';

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

  PacoteTarefas pacote1 = PacoteTarefas(
    nomeLista: 'LISTA DE ESTUDOS',
    cor: 0xFFF4D9A9,
    tarefa: 'Terminar atividade de PRMO',
  );
  PacoteTarefas pacote2 = PacoteTarefas(
    nomeLista: 'LISTA DA SEMANA',
    cor: 0xFFFFC690,
    tarefa: 'Fazer atividade de PWEB',
  );
  PacoteTarefas pacote3 = PacoteTarefas(
    nomeLista: 'LISTA DO MÊS',
    cor: 0xFFFFB09D,
    tarefa: 'Prova bimestral e recuperação',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFE8E8),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('LISTA DE TAREFAS'),
        backgroundColor: const Color(0xFFF25E7A),
        //leading: const Icon(Icons.notification_important)
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Icon(Icons.person_outline),
                    SizedBox(width: 8),
                    Text(
                      'HOJE:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CardPacoteLista(pacoteTarefas: pacote1),
                    const SizedBox(height: 8),
                    const Text(
                      'ESTA SEMANA:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CardPacoteLista(pacoteTarefas: pacote2),
                    const SizedBox(height: 8),
                    const Text(
                      'ESTE MÊS:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CardPacoteLista(pacoteTarefas: pacote3),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.book_online_outlined),
                        const SizedBox(width: 8),
                        ElevatedButton.icon(
                          onPressed: onPressedButtonAdd,
                          icon: Icon(
                            Icons.add_circle,
                            color: Colors.green[400],
                          ),
                          label: Text('Adicionar Lista de Tarefas'),
                        ),
                        const SizedBox(width: 8),
                        ElevatedButton.icon(
                          onPressed: (){},
                          icon: Icon(
                            Icons.remove_circle,
                            color: Colors.red[600],
                          ),
                          label: Text('Remover Lista de Tarefas'),
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
    );
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

}