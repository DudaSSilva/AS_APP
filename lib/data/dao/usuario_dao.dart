import 'package:sqflite/sqflite.dart';

import '../../domain/usuario.dart';
import '../helper/db_helper.dart';

class UsuarioDao {

  Future<void> salvarUser({required Usuario user}) async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    await db.insert('user', user.toJson());
  }

  Future<bool> autenticar({required String user, required String password}) async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * '
        'FROM user '
        'WHERE usuario = ? AND senha = ?;';

    final result = await db.rawQuery(sql, [user, password]);

    return result.isNotEmpty;
  }

  Future<bool> recuperar({required String email}) async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * '
        'FROM user '
        'WHERE email = ?;';

    final result = await db.rawQuery(sql, [email]);

    return result.isNotEmpty;
  }

  listarUsers() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM user;';
    final result = await db.rawQuery(sql);

    print(result);
    List<Usuario> lista = <Usuario>[];
    for(var json in result){
      Usuario usuario = Usuario.fromJson(json);
      lista.add(usuario);
    }

    return lista;
  }

  Future<String> userName({required String usuario}) async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * '
        'FROM user '
        'WHERE usuario = ?;';

    final result = await db.rawQuery(sql, [usuario]);

    return result.toString();
  }

}
