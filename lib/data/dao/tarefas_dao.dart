import 'package:sqflite/sqflite.dart';
import '../../domain/pacote_tarefas.dart';
import '../helper/db_helper.dart';

class TarefasDao {

  Future<List<PacoteTarefas>> listarTarefas() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM TAREFAS;';
    final result = await db.rawQuery(sql);


    List<PacoteTarefas> lista = <PacoteTarefas>[];
    for(var json in result){
      print(json);
      PacoteTarefas tarefas = PacoteTarefas.fromJson(json);
      lista.add(tarefas);
    }

    return lista;
  }

}