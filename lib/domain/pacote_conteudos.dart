
//import 'package:flutter/cupertino.dart';

class PacoteConteudos {
  late final String nomedisciplina;
  late final String conteudo1;
  late final String conteudo2;
  late final String conteudo3;
  late final String conteudo4;
  //late final int cor;
  late final bool value;

  PacoteConteudos({
    required this.nomedisciplina,
    required this.conteudo1,
    required this.conteudo2,
    required this.conteudo3,
    required this.conteudo4,
    //required this.cor,
    required this.value,
  });

  Map<String, Object?> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['nomedisciplina'] = nomedisciplina;
    data['conteudo1'] = conteudo1;
    data['conteudo2'] = conteudo2;
    data['conteudo3'] = conteudo3;
    data['conteudo4'] = conteudo4;
    //data['cor'] = cor.toString();
    data['valor'] = value;

    return data;
  }

  PacoteConteudos.fromJson(Map<String, dynamic> json) { //mapeia o objeeto e converte as variáveis de json pra classe
    nomedisciplina = json['nomedisciplina'];
    conteudo1 = json['conteudo1'];
    conteudo2 = json['conteudo2'];
    conteudo3 = json['conteudo3'];
    conteudo4 = json['conteudo4'];
    //cor = int.parse(json['cor']);
    value = json['valor'] == 0 ? false : true;  // além de converter o json para uma clase, também faz a condição para que se o valor for 0,
    // o card do objeto receber o valor falso (aí o checkbox está desmarcado), e se for diferente é verdadeiro (aí o checkbox é marcado como concluído)
  }
}
