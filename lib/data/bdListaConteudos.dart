import 'package:untitled/domain/pacote_conteudos.dart';

import '../domain/pacote_tarefas.dart';

class BD {
  static List<PacoteConteudos> lista = [
    PacoteConteudos(
      nomeLista: 'Português',
      cor: 0xFFF4D9A9,
      tarefa1: 'Modernismo',
      tarefa2: 'Interpretação de texto',
      tarefa3: 'Orações subordinadas',
      tarefa4: 'Aposto e vocativo',
      tarefa5: 'Semana de arte moderna',
    ),
    PacoteConteudos(
      nomeLista: 'Português',
      cor: 0xFFF4D9A9,
      tarefa1: 'Modernismo',
      tarefa2: 'Interpretação de texto',
      tarefa3: 'Orações subordinadas',
      tarefa4: 'Aposto e vocativo',
      tarefa5: 'Semana de arte moderna',
    ),
    PacoteConteudos(
      nomeLista: 'Português',
      cor: 0xFFF4D9A9,
      tarefa1: 'Modernismo',
      tarefa2: 'Interpretação de texto',
      tarefa3: 'Orações subordinadas',
      tarefa4: 'Aposto e vocativo',
      tarefa5: 'Semana de arte moderna',
    ),
    PacoteConteudos(
      nomeLista: 'Português',
      cor: 0xFFF4D9A9,
      tarefa1: 'Modernismo',
      tarefa2: 'Interpretação de texto',
      tarefa3: 'Orações subordinadas',
      tarefa4: 'Aposto e vocativo',
      tarefa5: 'Semana de arte moderna',
    ),

  ];
  
  static Future<List<PacoteConteudos>> getPacoteConteudos() async {
    print("ANTES");
    await Future.delayed(const Duration(seconds: 10));
    print("DEPOIS");
    return lista;
  }

}
