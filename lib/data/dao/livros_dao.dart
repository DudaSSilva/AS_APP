import 'package:asapp/domain/pacote_livros.dart';
import 'package:sqflite/sqflite.dart';

import '../helper/db_helper.dart';

class LivrosDao {

  Future<List<PacoteLivro>> listarLivrose() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM LIVROS;';
    final result = await db.rawQuery(sql);


    List<PacoteLivro> lista = <PacoteLivro>[];
    for(var json in result){
      print(json);
      PacoteLivro conteudos = PacoteLivro.fromJson(json);
      lista.add(conteudos);
    }

    return lista;
  }

}