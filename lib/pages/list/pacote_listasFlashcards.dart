import 'package:asapp/data/api/flashcard_listas_api.dart';
//import 'package:asapp/domain/flashcard.dart';
import 'package:flutter/material.dart';
import '../../domain/flashcard.dart';
import '../../widget/widget_flashcard.dart';

class PacoteAnotacoes extends StatefulWidget {
  const PacoteAnotacoes({Key? key}) : super(key: key);

  @override
  _PacoteAnotacoesState createState() => _PacoteAnotacoesState();
}

class _PacoteAnotacoesState extends State<PacoteAnotacoes> {
  Future<List<FlashCardClass>> lista = FlashcardsListaApi().listarFlashcards();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('LISTAS'),
        backgroundColor: const Color(0xFFDD2E44),
      ),
      body: BuildBody(),
    );
  }

  BuildBody() {
    return Scaffold(
      backgroundColor: const Color(0xFFDD2E44),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: FutureBuilder<List<FlashCardClass>>(
              future: lista,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<FlashCardClass> lista = snapshot.data ?? [];

                  return ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: lista.length,
                      itemBuilder: (BuildContext context, int index) {
                        return WidgetFlashCard(flashCardClass: lista[index]);
                      }
                  );
                }

                return const Center(child: CircularProgressIndicator());
              }

          ),
        ),
      ),
    );
  }

}
