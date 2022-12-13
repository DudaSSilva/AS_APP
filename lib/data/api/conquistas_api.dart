import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import '../../domain/pacote_conquistas.dart';

class ConquistasApi {
  String baseUrl = "asapi.eduardasoares1.repl.co";

  Future<List<PacoteConquistas>> listarConquistas() async {
    Uri url = Uri.http(baseUrl, "/conquistas");
    Response response = await http.get(url);

    List<PacoteConquistas> lista = <PacoteConquistas>[];
    if (response.statusCode == 200) {
      var result = jsonDecode(response.body);

      for (var json in result) {
        PacoteConquistas pacote = PacoteConquistas.fromApiJson(json);
        lista.add(pacote);
      }
    }

    return lista;
  }
}