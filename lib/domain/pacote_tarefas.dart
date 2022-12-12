class PacoteTarefas {
  late String nomeLista;
  late String tarefa1;
  late String tarefa2;
  late String tarefa3;
  late String tarefa4;
  late String tarefa5;
  //late int cor;
  late bool value;

  PacoteTarefas({
    required this.nomeLista,
    required this.tarefa1,
    required this.tarefa2,
    required this.tarefa3,
    required this.tarefa4,
    required this.tarefa5,
    //required this.cor,
    required this.value,
  });

  Map<String, Object?> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['nomeLista'] = nomeLista;
    data['tarefa1'] = tarefa1;
    data['tarefa2'] = tarefa2;
    data['tarefa3'] = tarefa3;
    data['tarefa4'] = tarefa4;
    data['tarefa5'] = tarefa5;
    //data['cor'] = cor.toString();
    data['value'] = value;

    return data;
  }

  PacoteTarefas.fromJson(Map<String, dynamic> json) {
    nomeLista = json['nomeLista'];
    tarefa1 = json['tarefa1'];
    tarefa2 = json['tarefa2'];
    tarefa3 = json['tarefa3'];
    tarefa4 = json['tarefa4'];
    tarefa5 = json['tarefa5'];
    //cor = int.parse(json['cor']);
    value = json['valor'] == 0 ? false : true;
  }

  PacoteTarefas.fromApiJson(Map<String, dynamic> json) {
    nomeLista = json['nomeLista'];
    tarefa1 = json['tarefa1'];
    tarefa2 = json['tarefa2'];
    tarefa3 = json['tarefa3'];
    tarefa4 = json['tarefa4'];
    tarefa5 = json['tarefa5'];
    value = json['value'] == 0 ? false : true;
  }
}
