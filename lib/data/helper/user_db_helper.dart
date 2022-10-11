import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  initDB() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "pacote.db");
    Database database = await openDatabase(
      path,
      version: 2,
      //onCreate: onCreate,
      onUpgrade: onUpgrade,
    );

    print(path);
    return database;
  }

  Future<void> onUpgrade(Database db, int oldVersion, int newVersion) async {
    if(oldVersion == 1 && newVersion == 2){
      String sql = "CREATE TABLE USUARIO (usuario varchar(100) PRIMARY KEY, senha varchar(100))";
      await db.execute(sql);

      sql = "INSERT INTO USUARIO (usuario, senha) VALUES ('Cami123', '123456789')";
      await db.execute(sql);

      sql = "INSERT INTO USUARIO (usuario, senha) VALUES ('Eddyss', '123456789')";
      await db.execute(sql);

      sql = "INSERT INTO USUARIO (usuario, senha) VALUES ('MipsBelchior', '123456789')";
      await db.execute(sql);

      sql = "INSERT INTO USUARIO (usuario, senha) VALUES ('viviMaria', '123456789')";
      await db.execute(sql);
    }
  }
}