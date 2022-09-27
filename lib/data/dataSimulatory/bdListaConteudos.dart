import '../../domain/pacote_conteudos.dart';

class BD {
  static List<PacoteConteudos> lista = [
    PacoteConteudos(
      nomedisciplina: 'Português',
      cor: 0xFFF4D9A9,
      conteudo1: 'Modernismo',
      conteudo2: 'Interpretação de texto',
      conteudo3: 'Orações subordinadas',
      conteudo4: 'Aposto e vocativo',
      value: false,
    ),
    PacoteConteudos(
      nomedisciplina: 'Português',
      cor: 0xFFF4D9A9,
      conteudo1: 'Modernismo',
      conteudo2: 'Interpretação de texto',
      conteudo3: 'Orações subordinadas',
      conteudo4: 'Aposto e vocativo',
      value: false,
    ),
    PacoteConteudos(
      nomedisciplina: 'Português',
      cor: 0xFFF4D9A9,
      conteudo1: 'Modernismo',
      conteudo2: 'Interpretação de texto',
      conteudo3: 'Orações subordinadas',
      conteudo4: 'Aposto e vocativo',
      value: false,
    ),
    PacoteConteudos(
      nomedisciplina: 'Português',
      cor: 0xFFF4D9A9,
      conteudo1: 'Modernismo',
      conteudo2: 'Interpretação de texto',
      conteudo3: 'Orações subordinadas',
      conteudo4: 'Aposto e vocativo',
      value: false,
    ),
    PacoteConteudos(
      nomedisciplina: 'Português',
      cor: 0xFFF4D9A9,
      conteudo1: 'Modernismo',
      conteudo2: 'Interpretação de texto',
      conteudo3: 'Orações subordinadas',
      conteudo4: 'Aposto e vocativo',
      value: false,
    ),
  ];

  static Future<List<PacoteConteudos>> getPacoteConteudos() async {
    print("ANTES");
    await Future.delayed(const Duration(seconds: 2));
    print("DEPOIS");
    return lista;
  }

}
