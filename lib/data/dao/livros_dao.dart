import 'package:asapp/domain/pacote_livros.dart';
import 'package:sqflite/sqflite.dart';
import '../../domain/pacote_conteudos.dart';
import '../../domain/pacote_tarefas.dart';
import '../helper/tarefas_db_helper.dart';

class LivrosDao {

  Future<List<PacoteLivro>> listarLivrose() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM LIVROS;';
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