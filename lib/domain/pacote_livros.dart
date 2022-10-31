
//import 'package:flutter/cupertino.dart';

import 'package:flutter/cupertino.dart';

class PacoteLivro {
  late String livro1;
  late String livro2;
  late String livro3;
  late String livro4;
  late String livro5;
  late int cor;
  //final String titulo;
  //final Image image;

  PacoteLivro({
    required this.livro1,
    required this.livro2,
    required this.livro3,
    required this.livro4,
    required this.livro5,
    required this.cor,
    //required this.image,
    //required this.titulo,
  });

  PacoteLivro.fromJson(Map<String, dynamic> json) {
    livro1 = json['livro1'];
    livro2 = json['livro2'];
    livro3 = json['livro3'];
    livro4 = json['livro4'];
    livro5 = json['livro5'];
    cor = int.parse(json['cor']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['livro1'] = this.livro1;
    data['livro2'] = this.livro2;
    data['livro3'] = this.livro3;
    data['livro4'] = this.livro4;
    data['livro5'] = this.livro5;
    data['cor'] = cor.toString();
    return data;
  }
}
