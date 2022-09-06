import '../domain/pacote_livros.dart';

class BD {
  static List<PacoteLivro> lista = [
    PacoteLivro(
      genero: 'Mistério',
      livro1: 'A maldição de Tarsis',
      livro2: 'Cuaderno de Tarsis',
      livro3: 'O enigma de Tarsis',
      livro4: 'Autobiografia: Tarsis',
      livro5: 'Tarsis - Apenas, Tarsis',
      cor: 0xFFF4D9A9,
    ),
    PacoteLivro(
      genero: 'Mistério',
      livro1: 'nomeLivro1',
      livro2: 'nomeLivro1',
      livro3: 'nomeLivro1',
      livro4: 'nomeLivro1',
      livro5: 'nomeLivro1',
      cor: 0xFFFFC690,

    ),
    PacoteLivro(
      genero: 'Mistério',
      livro1: 'nomeLivro1',
      livro2: 'nomeLivro1',
      livro3: 'nomeLivro1',
      livro4: 'nomeLivro1',
      livro5: 'nomeLivro1',
      cor: 0xFFFFB09D,
    ),
  ];

  static Future<List<PacoteLivro>> getLivros() async {
    print("ANTES");
    await Future.delayed(const Duration(seconds:2));
    print("DEPOIS");
    return lista;
  }

}

