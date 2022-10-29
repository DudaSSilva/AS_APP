import 'package:flutter/material.dart';
import '../domain/pacote_tarefas.dart';
import '../pages/add/pacote_adicionarLista.dart';
//import '../pages/pacote_listaTarefas.dart';

class CardPacoteLista extends StatefulWidget {
  final PacoteTarefas pacoteTarefas;
  final String nomeUsuario;

  const CardPacoteLista({
    Key? key,
    required this.pacoteTarefas,
    required this.nomeUsuario,
  }) : super(key: key);

  @override
  _CardPacoteListaState createState() => _CardPacoteListaState();
}

class _CardPacoteListaState extends State<CardPacoteLista> {
  PacoteTarefas get pacote => widget.pacoteTarefas;

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
                        value: pacote.value,
                        title: Text(
                          pacote.tarefa1,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        onChanged: (value) =>
                            setState(() => this.pacote.value = value!),
                      ),
                      CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: Color(0xFFF25E7A),
                        checkColor: Colors.white,
                        value: pacote.value,
                        title: Text(
                          pacote.tarefa2,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        onChanged: (value) =>
                            setState(() => this.pacote.value = value!),
                      ),
                      CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: Color(0xFFF25E7A),
                        checkColor: Colors.white,
                        value: pacote.value,
                        title: Text(
                          pacote.tarefa3,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        onChanged: (value) =>
                            setState(() => this.pacote.value = value!),
                      ),
                      CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: Color(0xFFF25E7A),
                        checkColor: Colors.white,
                        value: pacote.value,
                        title: Text(
                          pacote.tarefa4,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        onChanged: (value) =>
                            setState(() => this.pacote.value = value!),
                      ),
                      CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        activeColor: Color(0xFFF25E7A),
                        checkColor: Colors.white,
                        value: pacote.value,
                        title: Text(
                          pacote.tarefa5,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        onChanged: (value) =>
                            setState(() => this.pacote.value = value!),
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
      MaterialPageRoute(builder: (context) {
        return PacoteAdicionarLista(nomeUsuario: widget.nomeUsuario);
      }),
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
