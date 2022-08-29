import '../domain/pacote_conquistas.dart';

class BD {
  static List<PacoteConquistas> lista = [
    PacoteConquistas(
      title: 'PARABÉNS!',
      text: 'Você realizou todas as tarefas desta semana.',
      //cor: 0xFFF4D9A9,
    ),
    PacoteConquistas(
      title: 'PARABÉNS!',
      text: 'Você realizou todas as tarefas desta semana.',
    ),
    PacoteConquistas(
      title: 'PARABÉNS!',
      text: 'Você realizou todas as tarefas desta semana.',
    ),
    PacoteConquistas(
      title: 'PARABÉNS!',
      text: 'Você realizou todas as tarefas desta semana.',
    ),
    PacoteConquistas(
      title: 'PARABÉNS!',
      text: 'Você realizou todas as tarefas desta semana.',
    ),
    PacoteConquistas(
      title: 'PARABÉNS!',
      text: 'Você realizou todas as tarefas desta semana.',
    ),
    PacoteConquistas(
      title: 'PARABÉNS!',
      text: 'Você realizou todas as tarefas desta semana.',
    ),
    PacoteConquistas(
      title: 'PARABÉNS!',
      text: 'Você realizou todas as tarefas desta semana.',
    ),
    PacoteConquistas(
      title: 'PARABÉNS!',
      text: 'Você realizou todas as tarefas desta semana.',
    ),
  ];

  static Future<List<PacoteConquistas>> getPacoteConquistas() async {
    print("ANTES");
    await Future.delayed(const Duration(seconds: 3));
    print("DEPOIS");
    return lista;
  }

}
