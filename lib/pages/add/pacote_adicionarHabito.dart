import 'package:flutter/material.dart';
import '../../domain/pacote_planejamento.dart';
import '../habit/pacote_habitos.dart';

class PacoteAdicionarHabito extends StatefulWidget {
  final String nomeUsuario;

  const PacoteAdicionarHabito({
    Key? key,
    required this.nomeUsuario,
  }) : super(key: key);

  @override
  _PacoteAdicionarListaState createState() => _PacoteAdicionarListaState();
}

class _PacoteAdicionarListaState extends State<PacoteAdicionarHabito> {
  PacotePlanejamento pacote4 = PacotePlanejamento(
    icon: const Icon(Icons.lock_clock),
    titulo: 'HABIT TRACKER',
    cor: 0xFFF8E9CE,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFE8E8),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('ADICIONAR HÁBITO'),
        backgroundColor: const Color(0xFFF25E7A),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "images/logo.png",
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 32),
              TextFormField(
                // controller: userNameController,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo habito obrigatório';
                  }
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Digite o hábito...',
                ),
                cursorColor: Color(0xFFDD2E44),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Color(0xFFFFCC99)),
                onPressed: goHabits,
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Text(
                    'ADICIONAR HÁBITO',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFDD2E44)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void goHabits() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return PacoteHabitos(
            pacotePlanejamento: PacotePlanejamento(
              icon: const Icon(Icons.lock_clock),
              titulo: 'HABIT TRACKER',
              cor: 0xFFF8E9CE,
            ),
            nomeUsuario: widget.nomeUsuario,
          );
        },
      ),
    );
  }
}
