import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  initDB() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "pacote_1.db");
    Database database = await openDatabase(
      path,
      version: 1,
      onCreate: onCreate,
    );

    print(path);
    return database;
  }

  Future<FutureOr<void>> onCreate(Database db, int version) async {
      String sql = "CREATE TABLE IMAGES (id INTEGER PRIMARY KEY, URL varchar(100), URL2 varchar(100), URL3 varchar(100), URL4 varchar(100))";
      await db.execute(sql);

      sql = "INSERT INTO IMAGES (id, URL, URL2, URL3, URL4) VALUES (1, 'images/beleza.png', 'images/casa.png', 'images/estudos.png', 'images/saude.png')";
      await db.execute(sql);

  }
}