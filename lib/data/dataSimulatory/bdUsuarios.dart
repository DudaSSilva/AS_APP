import '../../domain/usuario.dart';

class BD {
  static final List<Usuario> lista = [
    Usuario(
      usuario: 'cami123',
      senha: '123456789',
      // nome: 'Camile',
      // email: 'cvfa2@email.com',
    ),
    Usuario(
      usuario: 'Eddyss',
      senha: '123456789',
      // nome: 'Eduarda',
      // email: 'ess47@email.com',
    ),
    Usuario(
      usuario: 'MipsBelchior',
      senha: '123456789',
      // nome: 'Izabel',
      // email: 'mips1@email.com',
    ),
    Usuario(
      usuario: 'viviMaria',
      senha: '123456789',
      // nome: 'Viviane',
      // email: 'vmss5@email.com',
    ),
  ];

  static Future<List<Usuario>> getUsuario() async {
    await Future.delayed(const Duration(seconds: 1));
    return lista;
  }
}