import 'package:sqflite/sqflite.dart';

import '../../domain/habitos.dart';
import '../helper/images_habit_db_helper.dart';

class ImagesDao {

  Future<List<PacoteImages>> listarHabitos() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM HABITOS;';
    final result = await db.rawQuery(sql);


    List<PacoteImages> lista = <PacoteImages>[];
    for(var json in result){
      print(json);
      PacoteImages images = PacoteImages.fromJson(json);
      lista.add(images);
    }

    return lista;
  }

}