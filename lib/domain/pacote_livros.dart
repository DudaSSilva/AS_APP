
//import 'package:flutter/cupertino.dart';

import 'package:flutter/cupertino.dart';

class PacoteLivro {
  late final String livro;
  // late String livro2;
  // late String livro3;
  // late String livro4;
  // late String livro5;
  //late int cor;
  //final String titulo;
  //final Image image;

  PacoteLivro({
    required this.livro,
    // required this.livro2,
    // required this.livro3,
    // required this.livro4,
    // required this.livro5,
    //required this.cor,
    //required this.image,
    //required this.titulo,
  });

  PacoteLivro.fromJson(Map<String, dynamic> json) {
    livro = json['livro'];
    // livro2 = json['livro2'];
    // livro3 = json['livro3'];
    // livro4 = json['livro4'];
    // livro5 = json['livro5'];
    //cor = int.parse(json['cor']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['livro'] = this.livro;
    // data['livro2'] = this.livro2;
    // data['livro3'] = this.livro3;
    // data['livro4'] = this.livro4;
    // data['livro5'] = this.livro5;
    //data['cor'] = cor.toString();
    return data;
  }

  PacoteLivro.fromApiJson(Map<String, dynamic> json) {
    livro = json['livro'];
    // livro2 = json['livro2'];
    // livro3 = json['livro3'];
    // livro4 = json['livro4'];
    // livro5 = json['livro5'];
    //cor = int.parse(json['cor']);
  }
}
