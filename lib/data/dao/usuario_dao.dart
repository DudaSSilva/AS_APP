import 'package:sqflite/sqflite.dart';
import '../../domain/usuario.dart';
import '../helper/db_helper.dart';

class UsuarioDao {

  Future<void> salvarUser({required Usuario usuario}) async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    await db.insert('user', usuario.toJson());
  }

  Future<bool> autenticar({required String user, required String password}) async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * '
        'FROM USUARIO'
        'WHERE username = ? AND password = ?;';

    final result = await db.rawQuery(sql, [user, password]);

    return result.isNotEmpty;
  }

  listarUsers() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM user;';
    final result = await db.rawQuery(sql);

    List<Usuario> lista = <Usuario>[];
    for(var json in result){
      Usuario usuario = Usuario.fromJson(json);
      lista.add(usuario);
    }

    return lista;
  }

}