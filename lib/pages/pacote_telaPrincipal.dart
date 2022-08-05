import 'package:flutter/material.dart';
import 'package:untitled/domain/pacote_materias.dart';
import 'package:untitled/pages/achiviements_page.dart';
import 'package:untitled/pages/home_page.dart';
import 'package:untitled/pages/pacote_disciplinas.dart';
import 'package:untitled/pages/pacote_habitos.dart';
import 'package:untitled/pages/pacote_listaTarefas.dart';
import 'package:untitled/pages/pacote_rotina.dart';
import 'package:untitled/pages/perfil_page.dart';
import 'package:untitled/pages/settings_page.dart';
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
      drawer: Drawer(
        backgroundColor: const Color(0xFFDD2E44),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BuildPerfil(),
            const SizedBox(height: 10),
            BuildSettings(),
            const SizedBox(height: 10),
            BuildAchiviements(),
          ],
        ),
      ),
      appBar: AppBar(
          centerTitle: true,
          title: const Text('ACADEMIC SYLLABUS'),
          backgroundColor: const Color(0xFFDD2E44),
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
                ),
                pacoteMaterias: PacoteMaterias(
                  disciplina: 'clique para saber mais...',
                ),
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
              color: const Color(0xFFFFB09D),
              borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Image.asset(
                    "images/logo.png",
                  width: 100,
                  height: 100,
                  fit: BoxFit.fitHeight,
                ),
                const SizedBox(width: 8),
                const Expanded(
                  child: Text(
                      'COM ORGANIZAÇÃO O SEU DIA FICA MAIS FÁCIL',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Color(0xFFF25E7A),
                      fontSize: 20,
                    ),
                  ),
                )
              ],
            ),
          ),
          Row(
            //crossAxisAlignment: CrossAxisAlignment.baseline,
            children: [
              Image.asset(
                "images/book.png",
                width: 150,
                height: 100,
                fit: BoxFit.cover,
              ),
              Expanded(
                child: Image.asset(
                  "images/pencilStar.png",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 8),
            ],
          ),
        ],
      ),
    );
  }

  BuildPerfil(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: onPressedPerfil,
          icon: const Icon(
            Icons.person,
            color: Color(0xFFFFE8E8),
            size: 50,
          ),
        ),
        ElevatedButton(
          onPressed: onPressedPerfil,
          child: const Text(
            'PERFIL',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFFF25E7A),
              fontSize: 20,
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: const Color(0xFFFFE8E8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      ],
    );
  }

  BuildSettings(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: onPressedSettings,
          icon: const Icon(
            Icons.settings,
            color: Color(0xFFFFE8E8),
            size: 50,
          ),
        ),
        ElevatedButton(
          onPressed: onPressedSettings,
          child: const Text(
            'CONFIGURAÇÕES',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFFF25E7A),
              fontSize: 20,
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: const Color(0xFFFFE8E8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        )
      ],
    );
  }

  BuildAchiviements(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: onPressedAchiviements,
          icon: const Icon(
            Icons.star,
            color: Color(0xFFFFE8E8),
            size: 50,
          ),
        ),
        ElevatedButton(
          onPressed: onPressedAchiviements,
          child: const Text(
            'CONQUISTAS',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFFF25E7A),
              fontSize: 20,
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: const Color(0xFFFFE8E8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        )
      ],
    );
  }

  void onPressedPerfil() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) {
            return const PerfilPage();
          }
      ),
    );
  }

  void onPressedSettings() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) {
            return const SettingsPage();
          }
      ),
    );
  }

  void onPressedAchiviements() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) {
            return const AchiviementsPage();
          }
      ),
    );
  }
}
