import 'package:sqflite/sqflite.dart';
import '../../domain/pacote_conquistas.dart';
import '../../domain/pacote_conteudos.dart';
import '../../domain/pacote_tarefas.dart';
import '../../pages/planner/conquistas.dart';
import '../helper/tarefas_db_helper.dart';

class ConquistasDao {

  Future<List<PacoteConquistas>> listarConquistas() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM CONQUISTAS;';
    final result = await db.rawQuery(sql);


    List<PacoteConquistas> lista = <PacoteConquistas>[];
    for(var json in result){
      print(json);
      PacoteConquistas conquistas = PacoteConquistas.fromJson(json);
      lista.add(conquistas);
    }

    return lista;
  }

}