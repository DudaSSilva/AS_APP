
class Usuario {
  late String usuario;
  late String senha;
  // late String nome;
  // late String email;

  Usuario({
    required this.usuario,
    required this.senha,
    // required this.nome,
    // required this.email,
  });

  Usuario.fromJson(Map<String, dynamic> json) {
    usuario = json['usuario'];
    senha = json['senha'];
    // nome = json['nome'];
    // email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['usuario'] = usuario;
    data['senha'] = senha;
    // data['nome'] = nome;
    // data['email'] = email;
    return data;
  }
}