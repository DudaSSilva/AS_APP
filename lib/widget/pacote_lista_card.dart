import 'dart:ffi';

import 'package:flutter/material.dart';
import '../domain/pacote_tarefas.dart';
import '../pages/pacote_adicionarLista.dart';
//import '../pages/pacote_listaTarefas.dart';

class CardPacoteLista extends StatefulWidget {
  final PacoteTarefas pacoteTarefas;

  const CardPacoteLista({
    Key? key,
    required this.pacoteTarefas,
  }) : super(key: key);

  @override
  _CardPacoteListaState createState() => _CardPacoteListaState();
}

class _CardPacoteListaState extends State<CardPacoteLista> {
  PacoteTarefas get pacote => widget.pacoteTarefas;
  bool value1 = false;
  bool value2 = false;
  bool value3 = false;
  bool value4 = false;
  bool value5 = false;
  //bool value = false;

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
                  color: const Color(0xFFFFF6E5),
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        pacote.nomeLista,
                        style: const TextStyle(
                          fontSize: 22,
                        ),
                      ),
                      const SizedBox(width: 8),
                      IconButton(
                        icon: const Icon(
                          Icons.library_add,
                          color: Color(0xFFDD2E44),
                        ),
                        onPressed: onPressedButtonAdd,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: Color(0xFFF25E7A),
                        checkColor: Colors.white,
                        value: value1,
                        title: Text(
                          pacote.tarefa1,
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
                          pacote.tarefa2,
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
                          pacote.tarefa3,
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
                          pacote.tarefa4,
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
                          pacote.tarefa5,
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

/*
buildCheckbox(value){
  return CheckboxListTile(
    controlAffinity: ListTileControlAffinity.leading,
    activeColor: Color(0xFFF25E7A),
    checkColor: Colors.white,
    value: value,
    title: Text(
      pacote.tarefa3,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    ),
    onChanged: (value) => setState(() => this.value = value!),
  ),
}
*/
