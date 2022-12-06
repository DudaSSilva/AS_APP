import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import '../../domain/flashcard.dart';

class FlashcardsListaApi {
  String baseUrl = "api.eduardasoares1.repl.co";

  Future<List<FlashCardClass>> listarFlashcards() async {
    Uri url = Uri.http(baseUrl, "/flashcards");
    Response response = await http.get(url);

    List<FlashCardClass> lista = <FlashCardClass>[];
    if (response.statusCode == 200) {
      var result = jsonDecode(response.body);

      for (var json in result) {
        FlashCardClass pacote = FlashCardClass.fromApiJson(json);
        lista.add(pacote);
      }
    }

    return lista;
  }
}