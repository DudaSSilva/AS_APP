import '../pacote_telaPrincipal.dart';
import 'package:flutter/material.dart';

class PacoteAdicionarLista extends StatefulWidget {

  const PacoteAdicionarLista({Key? key}) : super(key: key);

  @override
  _PacoteAdicionarListaState createState() => _PacoteAdicionarListaState();
}

class _PacoteAdicionarListaState extends State<PacoteAdicionarLista> {
  TextEditingController nameListController = TextEditingController();

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
              const Text(
                'NOME DA LISTA DE TAREFAS:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 32),
              TextFormField(
                controller: nameListController,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo e-mail obrigatório';
                  }
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: '',
                ),
                cursorColor: Color(0xFFDD2E44),
              ),
              const SizedBox(height: 16),
              const Text(
                'PRAZO DE REALIZAÇÃO:',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Deseja repetir esta tarefa?',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                '*Selecione abaixo os dias nos quais pretende fazer esta tarefa',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'COR DA LISTA:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void goAnotations() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) {
            return const TelaPrincipalPage();
          }
      ),
    );
  }
}