import '../domain/pacote_tarefas.dart';

class BD {
  static List<PacoteTarefas> lista = [
    PacoteTarefas(
      nomeLista: 'LISTA DE ESTUDOS',
      cor: 0xFFF4D9A9,
      tarefa1: 'Ler 20 páginas por dia',
      tarefa2: 'Resumo de biologia',
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
      tarefa1: 'Prova bimestral e recuperação',
      tarefa2: 'Ler livro de EMDI',
      tarefa3: 'Júri-simulado',
      tarefa4: 'Recuperação de história',
      tarefa5: 'Comprar materiais de desenho',
    ),
    PacoteTarefas(
      nomeLista: 'LEITURAS DO ANO',
      cor: 0xFFF49AAA,
      tarefa1: 'A Rainha do Nada',
      tarefa2: 'Morte no Nilo',
      tarefa3: 'Verity',
      tarefa4: 'Os sete maridos de Evelyn Hugo',
      tarefa5: 'A través de mi ventana',
    ),
    PacoteTarefas(
      nomeLista: 'PARA COMPRAR',
      cor: 0xFFD7525B,
      tarefa1: 'Os dois morrem no final',
      tarefa2: 'É assim que começa',
      tarefa3: 'Trono de vidro',
      tarefa4: 'Anne de Ingleside',
      tarefa5: 'Por lugares incríveis',
    ),
    PacoteTarefas(
      nomeLista: 'COMPRAS',
      cor: 0xFFF4D9A9,
      tarefa1: 'Blazer',
      tarefa2: 'Wide leg',
      tarefa3: 'Camisa social preta',
      tarefa4: 'Prancheta',
      tarefa5: 'All star',
    ),
  ];

  static Future<List<PacoteTarefas>> getPacoteTarefas() async {
    print("ANTES");
    await Future.delayed(const Duration(seconds: 4));
    print("DEPOIS");
    return lista;
  }

}
