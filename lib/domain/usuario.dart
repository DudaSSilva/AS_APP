class Usuario {
  late String usuario;
  late String senha;

  Usuario({
    required this.usuario,
    required this.senha,
  });

  Usuario.fromJson(Map<String, dynamic> json) {
    usuario = json['usuario'];
    senha = json['senha'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['usuario'] = this.usuario;
    data['senha'] = this.senha;
    return data;
  }
}