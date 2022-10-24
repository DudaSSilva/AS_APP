import 'package:asapp/domain/flashcard.dart';
import 'package:sqflite/sqflite.dart';
import '../helper/db_helper.dart';

class FlashcardslistaDao {

  Future<List<FlashCardClass>> listarFlashcards() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM FLASHCARDS;';
    final result = await db.rawQuery(sql);


    List<FlashCardClass> lista = <FlashCardClass>[];
    for(var json in result){
      print(json);
      FlashCardClass flashcard = FlashCardClass.fromJson(json);
      lista.add(flashcard);
    }

    return lista;
  }

}