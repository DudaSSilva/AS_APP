import 'package:aula_913/domain/pacote_tarefas.dart';

class BD {
  static List<PacoteTarefas> lista = [
    PacoteTarefas(
      nomeLista: 'LISTA DE ESTUDOS',
      cor: 0xFFF4D9A9,
      tarefa1: 'Ler 20 páginas por dia',
      tarefa2: 'Resumo de biologia,
      tarefa3: 'Terminar atividade de PRMO',
      tarefa4: 'Entregar site de PWEB',
      tarefa5: 'Recuperação de matemática - estudar',
    ),
    PacoteTarefas(
      nomeLista: 'LISTA DA SEMANA',
      cor: 0xFFFFC690,
      tarefa1: 'Praticar redação',
      tarefa2: 'Academia',
      tarefa3: 'Começar a ler Jardim Secreto',
      tarefa4: 'Prova de física e sociologia',
      tarefa5: 'Comprinhas do 18-BDay',
    ),
    PacoteTarefas(
      nomeLista: 'LISTA DO MÊS',
      cor: 0xFFFFB09D,
      tarefa: 'Prova bimestral e recuperação',
      tarefa2: 'Ler livro de EMDI',
      tarefa3: 'Júri-simulado',
      tarefa4: 'Recuperação de história',
      tarefa5: 'Comprar materiais de desenho',
    ),
  
  static Future<List<PacoteTarefas>> getPacoteTarefas() async {
    print("ANTES");
    await Future.delayed(const Duration(seconds: 10));
    print("DEPOIS");
    return lista;
  }

}
