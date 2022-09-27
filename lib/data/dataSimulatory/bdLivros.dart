import 'package:flutter/cupertino.dart';

import '../../domain/pacote_livros.dart';

class BD {
  static List<PacoteLivro> lista = [
    PacoteLivro(
      //titulo: 'O mundo de Sofia',
      //image: Image.asset('images/book1.jpg'),
      livro1: 'A revolução dos bichos',
      livro2: 'De repente 30',
      livro3: 'Com amor, Simon',
      livro4: 'Rinhas de porcos abatidos',
      livro5: 'Outsider',
      cor: 0xFFF4D9A9,
    ),
    PacoteLivro(
      livro1: 'It: a coisa',
      livro2: 'Carrie, a estranha',
      livro3: 'Doutor sono',
      livro4: '1984',
      livro5: 'A menina que roubava livros',
      cor: 0xFFFFC690,
    ),
    PacoteLivro(
      livro1: 'Extraordinário',
      livro2: 'a culpa é das estrelas',
      livro3: 'Todas as suas imperfeições',
      livro4: 'Um caso perdido',
      livro5: 'Mentirosos',
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

