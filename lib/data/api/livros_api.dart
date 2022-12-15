import 'dart:convert';

import 'package:asapp/domain/pacote_livros.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class LivrosApi {
  String baseUrl = "asapi.eduardasoares1.repl.co";

  Future<List<PacoteLivro>> listarLivros() async {
    Uri url = Uri.http(baseUrl, "/livros");
    Response response = await http.get(url);

    List<PacoteLivro> lista = <PacoteLivro>[];
    if (response.statusCode == 200) {
      var result = jsonDecode(response.body);

      for (var json in result) {
        PacoteLivro pac = PacoteLivro.fromApiJson(json);
        lista.add(pac);
      }
    }

    return lista;
  }
}