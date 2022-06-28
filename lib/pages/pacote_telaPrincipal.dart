import 'package:flutter/material.dart';
import 'package:untitled/pages/pacote_habitos.dart';
import 'package:untitled/pages/pacote_lista.dart';
import 'package:untitled/pages/pacote_rotina.dart';
import '../widget/pacote_planejamento_card.dart';
import '../domain/pacote_planejamento.dart';

class TelaPrincipalPage extends StatefulWidget {
  const TelaPrincipalPage({Key? key}) : super(key: key);

  @override
  _TelaPrincipalPageState createState() => _TelaPrincipalPageState();
}

class _TelaPrincipalPageState extends State<TelaPrincipalPage> {
  PacotePlanejamento pacote1 = PacotePlanejamento(
    icon: const Icon(Icons.calendar_month),
    titulo: 'PLANEJAMENTO SEMANAL',
    cor: 0xFFFFCEEF,
  );
  PacotePlanejamento pacote2 = PacotePlanejamento(
    icon: const Icon(Icons.list),
    titulo: 'LISTA DE TAREFAS',
    cor: 0xFFF8E9CE,
  );
  PacotePlanejamento pacote3 = PacotePlanejamento(
    icon: const Icon(Icons.book),
    titulo: 'DISCIPLINAS E CONTEÚDOS',
    cor: 0xFFFFCC99,
  );
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
          title: const Text('ACADEMIC SYLLABUS'),
          backgroundColor: const Color(0xFFF25E7A),
          leading: const Icon(Icons.notification_important)
      ),
      body: buildBody(),
    );
  }
  buildBody() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          const SizedBox(height: 16),
          CardPacotePlanejamento(
            pacotePlanejamento: pacote1,
            tela: PacoteRotina(
              pacotePlanejamento: PacotePlanejamento(
                icon: const Icon(Icons.calendar_month),
                titulo: 'PLANEJAMENTO SEMANAL',
                cor: 0xFFFFCEEF,
              ),
            ),
          ),
          const SizedBox(height: 16),
          CardPacotePlanejamento(
              pacotePlanejamento: pacote2,
            tela: PacoteLista(
             pacotePlanejamento: PacotePlanejamento(
               icon: const Icon(Icons.list),
               titulo: 'LISTA DE TAREFAS',
               cor: 0xFFF8E9CE,
             )
            ),
          ),
          const SizedBox(height: 16),
          CardPacotePlanejamento(
            pacotePlanejamento: pacote3,
            tela: PacoteDisciplinas(
                pacotePlanejamento: PacotePlanejamento(
                  icon: const Icon(Icons.book),
                  titulo: 'DISCIPLINAS E CONTEÚDOS',
                  cor: 0xFFFFCC99,
                )
            ),
          ),
          const SizedBox(height: 16),
          CardPacotePlanejamento(
            pacotePlanejamento: pacote4,
            tela: PacoteHabitos(
              pacotePlanejamento: PacotePlanejamento(
                icon: const Icon(Icons.lock_clock),
                titulo: 'HABIT TRACKER',
                cor: 0xFFF8E9CE,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Container(
            decoration: BoxDecoration(
                color: Color(0xFFFFB09D),
                borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                const SizedBox(width: 24),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        "imagens/logo.png",
                        width: 60,
                        height: 60,
                        fit: BoxFit.fitHeight,
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        'COM ORGANIZAÇÃO SEU DIA FICA MAIS FÁCIL!',
                        style: TextStyle(
                            color: Color(0xFFF25E7A),
                            fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
