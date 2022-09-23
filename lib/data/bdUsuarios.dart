import '../domain/usuario.dart';

class BD {
  static final List<Usuario> lista = [
    Usuario(
      nome: 'Camile',
      email: 'cvfa2@email.com',
      username: 'cami123',
      senha: '123456789',
    ),
    Usuario(
      nome: 'Eduarda',
      email: 'ess47@email.com',
      username: 'Eddyss',
      senha: '123456789',
    ),
    Usuario(
      nome: 'Izabel',
      email: 'mips1@email.com',
      username: 'MipsBelchior',
      senha: '123456789',
    ),
    Usuario(
      nome: 'Viviane',
      email: 'vmss5@email.com',
      username: 'viviMaria',
      senha: '123456789',
    ),
  ];

  static Future<List<Usuario>> getUsuario() async {
    await Future.delayed(const Duration(seconds: 1));
    return lista;
  }
}