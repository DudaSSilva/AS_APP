import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../../domain/pacote_tarefas.dart';

class TarefasApi {
  String baseUrl = "asapi.eduardasoares1.repl.co";

  Future<List<PacoteTarefas>> listarTarefas() async {
    Uri url = Uri.http(baseUrl, "/tarefas");
    Response response = await http.get(url);

    List<PacoteTarefas> lista = <PacoteTarefas>[];
    if (response.statusCode == 200) {
      var result = jsonDecode(response.body);

      for (var json in result) {
        PacoteTarefas pacote = PacoteTarefas.fromApiJson(json);
        lista.add(pacote);
      }
    }

    return lista;
  }
}