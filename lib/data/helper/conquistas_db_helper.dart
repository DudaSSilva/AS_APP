import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {

  initDB() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "banco2.db");
    Database database = await openDatabase(
      path,
      version: 1,
      onCreate: onCreate,
    );

    print(path);
    return database;
  }

  Future<FutureOr<void>> onCreate(Database db, int version) async {
    String sql = 'create table CONQUISTAS (id INTEGER PRIMARY KEY, title varchar(100), text varchar(500));';
    await db.execute(sql);

    sql =
    "INSERT INTO CONQUISTAS (id, title, text) VALUES (1, 'PARABÉNS','Você realizou todas as tarefas desta semana.');";
    await db.execute(sql);

    sql =
    "INSERT INTO CONQUISTAS (id, title, text) VALUES (2, 'PARABÉNS','Você realizou todas as tarefas desta semana.');";
    await db.execute(sql);

    sql =
    "INSERT INTO CONQUISTAS (id, title, text) VALUES (3, 'PARABÉNS','Você realizou todas as tarefas desta semana.');";
    await db.execute(sql);

    sql =
    "INSERT INTO CONQUISTAS (id, title, text) VALUES (4, 'PARABÉNS','Você realizou todas as tarefas desta semana.');";
    await db.execute(sql);

    sql =
    "INSERT INTO CONQUISTAS (id, title, text) VALUES (5, 'PARABÉNS','Você realizou todas as tarefas desta semana.');";
    await db.execute(sql);

    sql =
    "INSERT INTO CONQUISTAS (id, title, text) VALUES (6, 'PARABÉNS','Você realizou todas as tarefas desta semana.');";
    await db.execute(sql);

    sql =
    "INSERT INTO CONQUISTAS (id, title, text) VALUES (7, 'PARABÉNS','Você realizou todas as tarefas desta semana.');";
    await db.execute(sql);

    sql =
    "INSERT INTO CONQUISTAS (id, title, text) VALUES (8, 'PARABÉNS','Você realizou todas as tarefas desta semana.');";
    await db.execute(sql);
  }

}