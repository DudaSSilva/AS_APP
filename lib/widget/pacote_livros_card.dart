import 'package:flutter/material.dart';
import '../domain/pacote_livros.dart';
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
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFFFCC99),
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
                      CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: Color(0xFFF25E7A),
                        checkColor: Colors.white,
                        value: value,
                        title: Text(
                          pacote.livro,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        onChanged: (value) =>
                            setState(() => this.value = value!),
                      ),
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

}
