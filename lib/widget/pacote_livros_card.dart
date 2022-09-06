import 'package:flutter/material.dart';
import 'package:untitled/domain/pacote_livros.dart';
import 'package:untitled/models/auxiliar_styles.dart';
import '../pages/add/pacote_adicionarLista.dart';

class CardPacoteLivros extends StatefulWidget {
  final PacoteLivro pacoteLivros;

  const CardPacoteLivros({
    Key? key,
    required this.pacoteLivros,
  }) : super(key: key);

  @override
  _CardPacoteLivrosState createState() => _CardPacoteLivrosState();
}

class _CardPacoteLivrosState extends State<CardPacoteLivros> {
  PacoteLivro get pacote => widget.pacoteLivros;
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  bool value4 = false;
  bool value5 = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(pacote.cor),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text("LIVROS",00000000000000000)0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000,
                        ],
                      ),
                      CheckboxListTile(

                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: Color(0xFFF25E7A),
                        checkColor: Colors.white,
                        value: value1,
                        title: Text(
                          pacote.livro1,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        onChanged: (value) => setState(() => this.value1 = value!),
                      ),
                      CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: Color(0xFFF25E7A),
                        checkColor: Colors.white,
                        value: value2,
                        title: Text(
                          pacote.livro2,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        onChanged: (value) => setState(() => this.value2 = value!),
                      ),
                      CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: Color(0xFFF25E7A),
                        checkColor: Colors.white,
                        value: value3,
                        title: Text(
                          pacote.livro3,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        onChanged: (value) => setState(() => this.value3 = value!),
                      ),
                      CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: Color(0xFFF25E7A),
                        checkColor: Colors.white,
                        value: value4,
                        title: Text(
                          pacote.livro4,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        onChanged: (value) => setState(() => this.value4 = value!),
                      ),
                      CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: Color(0xFFF25E7A),
                        checkColor: Colors.white,
                        value: value5,
                        title: Text(
                          pacote.livro5,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        onChanged: (value) => setState(() => this.value5 = value!),
                      ),
                      //buildCheckbox(value),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
  void onPressedButtonAdd() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) {
            return const PacoteAdicionarLista();
          }
      ),
    );
  }
}
