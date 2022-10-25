class Usuario {
  late String usuario;
  late String senha;
  late String email;

  Usuario({
    required this.usuario,
    required this.senha,
    required this.email,
  });

  Usuario.fromJson(Map<String, dynamic> json) {
    usuario = json['usuario'];
    senha = json['senha'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['usuario'] = this.usuario;
    data['senha'] = this.senha;
    data['email'] = this.email;
    return data;
  }
}