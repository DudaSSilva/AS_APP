import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {

  initDB() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "conteudos4.db");
    Database database = await openDatabase(path,version: 1, onCreate: onCreate);

    print(path);
    return database;
  }

  Future<FutureOr<void>> onCreate(Database db, int version) async {
    String sql = 'create table CONTEUDOS (id INTEGER PRIMARY KEY, nomedisciplina varchar(100), conteudo1 varchar(100), conteudo2 varchar(100), conteudo3 varchar(100), conteudo4 varchar(100), cor varchar(100), valor boolean);';
    await db.execute(sql);

    sql =
    "INSERT INTO CONTEUDOS (id, nomeLista, conteudo1, conteudo2, conteudo3, conteudo4, conteudo5, cor, valor) VALUES (1, 'PORTUGUÊS', 'Modernismo', 'Interpretação de texto', 'Orações subordinadas', 'Aposto e vocativo, '0xFFF4D9A9', 0);";
    await db.execute(sql);

    sql =
    "INSERT INTO CONTEUDOS (id, nomeLista, conteudo1, conteudo2, conteudo3, conteudo4, conteudo5, cor, valor) VALUES (2, 'MATEMÁTICA', 'Estatística', 'Porcentagem', 'Probabilidade', 'Geometria plana', '0xFFD7525B', 0);";
    await db.execute(sql);

    sql =
    "INSERT INTO CONTEUDOS (id, nomeLista, conteudo1, conteudo2, conteudo3, conteudo4, conteudo5, cor, valor) VALUES (3, 'PORTUGUÊS', 'Modernismo', 'Interpretação de texto', 'Orações subordinadas', 'Aposto e vocativo, '0xFFF4D9A9', 0);";
    await db.execute(sql);

    sql =
    "INSERT INTO CONTEUDOS (id, nomeLista, conteudo1, conteudo2, conteudo3, conteudo4, conteudo5, cor, valor) VALUES (4, 'PORTUGUÊS', 'Modernismo', 'Interpretação de texto', 'Orações subordinadas', 'Aposto e vocativo, '0xFFF4D9A9', 0);";
    await db.execute(sql);

    sql =
    "INSERT INTO CONTEUDOS (id, nomeLista, conteudo1, conteudo2, conteudo3, conteudo4, conteudo5, cor, valor) VALUES (5, 'PORTUGUÊS', 'Modernismo', 'Interpretação de texto', 'Orações subordinadas', 'Aposto e vocativo, '0xFFF4D9A9', 0);";
    await db.execute(sql);
  }
}