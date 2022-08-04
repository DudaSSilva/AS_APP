import 'package:flutter/material.dart';

class PacoteAdicionarLista extends StatefulWidget {
  //final PacoteTarefas pacotePlanejamento;

  const PacoteAdicionarLista({
    Key? key,
    //required this.pacotePlanejamento,
  }) : super(key: key);

  @override
  _PacoteAdicionarListaState createState() => _PacoteAdicionarListaState();
}

class _PacoteAdicionarListaState extends State<PacoteAdicionarLista> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFE8E8),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('ADICIONAR LISTA'),
        backgroundColor: const Color(0xFFF25E7A),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'NOME DA LISTA DE TAREFAS:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'PRAZO DE REALIZAÇÃO:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Deseja repetir esta tarefa?',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '*Selecione abaixo os dias nos quais pretende fazer esta tarefa',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              Text(
                'Deseja repetir esta tarefa?',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'COR DA LISTA:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
