import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../../domain/pacote_conteudos.dart';

class ConteudosApi {
  String baseUrl = "asapi.eduardasoares1.repl.co";

  Future<List<PacoteConteudos>> listarConteudos() async {
    Uri url = Uri.http(baseUrl, "/conteudo");
    Response response = await http.get(url);

    List<PacoteConteudos> lista = <PacoteConteudos>[];
    if (response.statusCode == 200) {
      var result = jsonDecode(response.body);

      for (var json in result) {
        PacoteConteudos pacote = PacoteConteudos.fromApiJson(json);
        lista.add(pacote);
      }
    }

    return lista;
  }
}