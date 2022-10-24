import 'package:asapp/pages/habit/pacote_habitos.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import '../domain/pacote_planejamento.dart';
import '../pages/pacote_telaPrincipal.dart';
import 'calendar_screen.dart';

class Calendario extends StatefulWidget {
  const Calendario({Key? key}) : super(key: key);

  @override
  _CalendarioState createState() => _CalendarioState();
}

class _CalendarioState extends State<Calendario> {
  CalendarFormat format = CalendarFormat.month;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFE8E8),
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: const Text('ACADEMIC SYLLABUS'),
      //   backgroundColor: const Color(0xFFDD2E44),
      // ),
      body: buildBody(),
    );
  }

  buildBody() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          Container(
            child: IconButton(
              icon: const Icon(
                Icons.house,
                color: Color(0xFFDD2E44),
              ),
              onPressed: () {
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
                      );
                    },
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 16),
          CalendarScreen(),
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
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
