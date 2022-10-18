import 'package:sqflite/sqflite.dart';
import '../../domain/pacote_conteudos.dart';
import '../helper/conteudos_db_helper.dart';

class ConteudosDao {

  Future<List<PacoteConteudos>> listarConteudos() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM CONTEUDOS;';
    final result = await db.rawQuery(sql);


    List<PacoteConteudos> lista = <PacoteConteudos>[];
    for(var json in result){
      print(json);
      PacoteConteudos conteudos = PacoteConteudos.fromJson(json);
      lista.add(conteudos);
    }

    return lista;
  }

}