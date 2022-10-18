import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {

  initDB() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "tarefas6.db");
    Database database = await openDatabase(
        path,
        version: 1,
        onCreate: onCreate,
        onUpgrade: onUpgrade,
    );

    print(path);
    return database;
  }

  Future<FutureOr<void>> onCreate(Database db, int version) async {
    String sql = 'create table TAREFAS (id INTEGER PRIMARY KEY, nomeLista varchar(100), tarefa1 varchar(100), tarefa2 varchar(100), tarefa3 varchar(100), tarefa4 varchar(100), tarefa5 varchar(100), cor varchar(100), valor boolean);';
    await db.execute(sql);

    sql =
    "INSERT INTO TAREFAS (id, nomeLista, tarefa1, tarefa2, tarefa3, tarefa4, tarefa5, cor, valor ) VALUES (1, 'LISTA DE ESTUDOS', 'Ler 20 páginas por dia', 'Resumo de biologia', 'Terminar atividade de PRMO', 'Entregar site de pweb', 'Recuperação de matemática: estudar', '0xFFF4D9A9', 0);";
    await db.execute(sql);

    sql =
    "INSERT INTO TAREFAS (id, nomeLista, tarefa1, tarefa2, tarefa3, tarefa4, tarefa5, cor, valor ) VALUES (2, 'LISTA DA SEMANA', 'Praticar redação', 'Academia', 'Começar a ler jardim secreto', 'Prova de física e sociologia', 'Comprinhas do 18-BDay', '0xFFFFC690', 0);";
    await db.execute(sql);

    sql =
    "INSERT INTO TAREFAS (id, nomeLista, tarefa1, tarefa2, tarefa3, tarefa4, tarefa5, cor, valor ) VALUES (3, 'LISTA DO MÊS', 'Prova bimestral de recuperação', 'Ler livro de EMDI', 'Júri-simulado', 'Recuperação de história', 'Comprar materiais de desenho', '0xFFFFB09D', 0);";
    await db.execute(sql);

    sql =
    "INSERT INTO TAREFAS (id, nomeLista, tarefa1, tarefa2, tarefa3, tarefa4, tarefa5, cor, valor ) VALUES (4, 'LEITURAS DO ANO', 'A rainha do nada', 'Morte no nilo', 'Verity', 'Os sete maridos de evelyn hugo', 'A través de mi ventana', '0xFFF49AAA', 0);";
    await db.execute(sql);

    sql =
    "INSERT INTO TAREFAS (id, nomeLista, tarefa1, tarefa2, tarefa3, tarefa4, tarefa5, cor, valor ) VALUES (5, 'PARA COMPRAR', 'Os dois morrem no final', 'É assim que começa', 'Trono de vidro', 'Anne de Ingleside', 'Por lugares incríveis', '0xFFD7525B', 0);";
    await db.execute(sql);

    sql =
    "INSERT INTO TAREFAS (id, nomeLista, tarefa1, tarefa2, tarefa3, tarefa4, tarefa5, cor, valor ) VALUES (6, 'COMPRAS', 'Blazer', 'Wide leg', 'Camisa social preta', 'Prancheta', 'All star', '0xFFF4D9A9', 0);";
    await db.execute(sql);
  }

  Future<void> onUpgrade(Database db, int oldVersion, int newVersion) async {
    if(oldVersion == 1 && newVersion == 2){
      String sql = "CREATE TABLE TAREFAS (id INTEGER PRIMARY KEY, nomeLista varchar(100), tarefa1 varchar(100), tarefa2 varchar(100), tarefa3 varchar(100), tarefa4 varchar(100), tarefa5 varchar(100), cor varchar(100), valor boolean);";
      await db.execute(sql);

      sql =
      "INSERT INTO TAREFAS (id, nomeLista, tarefa1, tarefa2, tarefa3, tarefa4, tarefa5, cor, valor ) VALUES (1, 'LISTA DE ESTUDOS', 'Ler 20 páginas por dia', 'Resumo de biologia', 'Terminar atividade de PRMO', 'Entregar site de pweb', 'Recuperação de matemática: estudar', '0xFFF4D9A9', 0);";
      await db.execute(sql);

      sql =
      "INSERT INTO TAREFAS (id, nomeLista, tarefa1, tarefa2, tarefa3, tarefa4, tarefa5, cor, valor ) VALUES (2, 'LISTA DA SEMANA', 'Praticar redação', 'Academia', 'Começar a ler jardim secreto', 'Prova de física e sociologia', 'Comprinhas do 18-BDay', '0xFFFFC690', 0);";
      await db.execute(sql);

      sql =
      "INSERT INTO TAREFAS (id, nomeLista, tarefa1, tarefa2, tarefa3, tarefa4, tarefa5, cor, valor ) VALUES (3, 'LISTA DO MÊS', 'Prova bimestral de recuperação', 'Ler livro de EMDI', 'Júri-simulado', 'Recuperação de história', 'Comprar materiais de desenho', '0xFFFFB09D', 0);";
      await db.execute(sql);

      sql =
      "INSERT INTO TAREFAS (id, nomeLista, tarefa1, tarefa2, tarefa3, tarefa4, tarefa5, cor, valor ) VALUES (4, 'LEITURAS DO ANO', 'A rainha do nada', 'Morte no nilo', 'Verity', 'Os sete maridos de evelyn hugo', 'A través de mi ventana', '0xFFF49AAA', 0);";
      await db.execute(sql);

      sql =
      "INSERT INTO TAREFAS (id, nomeLista, tarefa1, tarefa2, tarefa3, tarefa4, tarefa5, cor, valor ) VALUES (5, 'PARA COMPRAR', 'Os dois morrem no final', 'É assim que começa', 'Trono de vidro', 'Anne de Ingleside', 'Por lugares incríveis', '0xFFD7525B', 0);";
      await db.execute(sql);

      sql =
      "INSERT INTO TAREFAS (id, nomeLista, tarefa1, tarefa2, tarefa3, tarefa4, tarefa5, cor, valor ) VALUES (6, 'COMPRAS', 'Blazer', 'Wide leg', 'Camisa social preta', 'Prancheta', 'All star', '0xFFF4D9A9', 0);";
      await db.execute(sql);
    }
  }
}