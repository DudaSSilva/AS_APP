import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../../domain/habitos.dart';

class HabitosApi {
  String baseUrl = "asapi.eduardasoares1.repl.co";

  Future<List<PacoteImages>> listarHabitos() async {
    Uri url = Uri.http(baseUrl, "/habitos");
    Response response = await http.get(url);

    List<PacoteImages> lista = <PacoteImages>[];
    if (response.statusCode == 200) {
      var result = jsonDecode(response.body);

      for (var json in result) {
        PacoteImages pacote = PacoteImages.fromApiJson(json);
        lista.add(pacote);
      }
    }

    return lista;
  }
}