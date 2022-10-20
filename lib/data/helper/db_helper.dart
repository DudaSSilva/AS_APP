import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {

  initDB() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "asApp2.db");
    Database database = await openDatabase(
      path,
      version: 1,
      onCreate: onCreate,
      onUpgrade: onUpgrade,
    );

    print(path);
    return database;
  }

  Future<void> onUpgrade(Database db, int oldVersion, int newVersion) async {
    if(oldVersion == 1 && newVersion == 2){
      String sql = "CREATE TABLE user (usuario varchar(100) PRIMARY KEY, senha varchar(100))";
      await db.execute(sql);

      sql = "INSERT INTO user (username, password) VALUES ('academicsyllabus@gmail.com', '123456')";
      await db.execute(sql);
    }
  }

  Future<FutureOr<void>> onCreate(Database db, int version) async {
    //USUÁRIO

    String sqlUser =
        "create table USER (id int PRIMARY KEY, usuario varchar(100), senha varchar(10));";
    await db.execute(sqlUser);

    sqlUser =
    "INSERT INTO USER (id, usuario, senha) VALUES (1, 'Camis123', '123456789');";
    await db.execute(sqlUser);

    sqlUser =
    "INSERT INTO USER (id, usuario, senha) VALUES (2, 'Eddyss', '123456789');";
    await db.execute(sqlUser);

    sqlUser =
    "INSERT INTO USER (id, usuario, senha) VALUES (3, 'MipsBelchior', '123456789');";
    await db.execute(sqlUser);

    sqlUser =
    "INSERT INTO USER (id, usuario, senha) VALUES (4, 'ViviMaria', '123456789');";
    await db.execute(sqlUser);

    sqlUser =
    "INSERT INTO USER (id, usuario, senha) VALUES (5, 'academicsyllabusapp@gmail.com', 'ASapp2022');";
    await db.execute(sqlUser);

    //TAREFAS

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
    "INSERT INTO TAREFAS (id, nomeLista, tarefa1, tarefa2, tarefa3, tarefa4, tarefa5, cor, valor ) VALUES (5, 'PARA COMPRAR', 'Os dois morrem no final', 'É assim que começa', 'Trono de vidro', 'Anne de Ingleside', 'Por lugares incríveis', '0xFFD7525B', 1);";
    await db.execute(sql);

    sql =
    "INSERT INTO TAREFAS (id, nomeLista, tarefa1, tarefa2, tarefa3, tarefa4, tarefa5, cor, valor ) VALUES (6, 'COMPRAS', 'Blazer', 'Wide leg', 'Camisa social preta', 'Prancheta', 'All star', '0xFFF4D9A9', 0);";
    await db.execute(sql);

    //CONQUISTAS

    String sql2 = 'create table CONQUISTAS (id INTEGER PRIMARY KEY, title varchar(100), text varchar(500));';
    await db.execute(sql2);

    sql2 =
    "INSERT INTO CONQUISTAS (id, title, text) VALUES (1, 'PARABÉNS','Você realizou todas as tarefas desta semana.');";
    await db.execute(sql2);

    sql2 =
    "INSERT INTO CONQUISTAS (id, title, text) VALUES (2, 'PARABÉNS','Você realizou todas as tarefas desta semana.');";
    await db.execute(sql2);

    sql2 =
    "INSERT INTO CONQUISTAS (id, title, text) VALUES (3, 'PARABÉNS','Você realizou todas as tarefas desta semana.');";
    await db.execute(sql2);

    sql2 =
    "INSERT INTO CONQUISTAS (id, title, text) VALUES (4, 'PARABÉNS','Você realizou todas as tarefas desta semana.');";
    await db.execute(sql2);

    sql2 =
    "INSERT INTO CONQUISTAS (id, title, text) VALUES (5, 'PARABÉNS','Você realizou todas as tarefas desta semana.');";
    await db.execute(sql2);

    sql2 =
    "INSERT INTO CONQUISTAS (id, title, text) VALUES (6, 'PARABÉNS','Você realizou todas as tarefas desta semana.');";
    await db.execute(sql2);

    sql2 =
    "INSERT INTO CONQUISTAS (id, title, text) VALUES (7, 'PARABÉNS','Você realizou todas as tarefas desta semana.');";
    await db.execute(sql2);

    sql2 =
    "INSERT INTO CONQUISTAS (id, title, text) VALUES (8, 'PARABÉNS','Você realizou todas as tarefas desta semana.');";
    await db.execute(sql2);

    //CONTEÚDOS

    // String sql3 = 'create table CONTEUDOS (id INTEGER PRIMARY KEY, nomedisciplina varchar(100), conteudo1 varchar(100), conteudo2 varchar(100), conteudo3 varchar(100), conteudo4 varchar(100), valor boolean);';
    // await db.execute(sql3);
    //
    // sql3 =
    // "INSERT INTO CONTEUDOS (id, nomeLista, conteudo1, conteudo2, conteudo3, conteudo4, conteudo5, valor) VALUES (1, 'PORTUGUÊS', 'Modernismo', 'Interpretação de texto', 'Orações subordinadas', 'Aposto e vocativo', 0);";
    // await db.execute(sql3);
    //
    // sql3 =
    // "INSERT INTO CONTEUDOS (id, nomeLista, conteudo1, conteudo2, conteudo3, conteudo4, conteudo5, valor) VALUES (2, 'MATEMÁTICA', 'Estatística', 'Porcentagem', 'Probabilidade', 'Geometria plana', 0);";
    // await db.execute(sql3);
    //
    // sql3 =
    // "INSERT INTO CONTEUDOS (id, nomeLista, conteudo1, conteudo2, conteudo3, conteudo4, conteudo5, valor) VALUES (3, 'HISTÓRIA', 'Modernismo', 'Interpretação de texto', 'Orações subordinadas', 'Aposto e vocativo', 0);";
    // await db.execute(sql3);
    //
    // sql3 =
    // "INSERT INTO CONTEUDOS (id, nomeLista, conteudo1, conteudo2, conteudo3, conteudo4, conteudo5, valor) VALUES (4, 'ESPANHOL', 'Modernismo', 'Interpretação de texto', 'Orações subordinadas', 'Aposto e vocativo', 0);";
    // await db.execute(sql3);
    //
    // sql3 =
    // "INSERT INTO CONTEUDOS (id, nomeLista, conteudo1, conteudo2, conteudo3, conteudo4, conteudo5, valor) VALUES (5, 'SOCIOLOGIA', 'Modernismo', 'Interpretação de texto', 'Orações subordinadas', 'Aposto e vocativo', 0);";
    // await db.execute(sql3);
  }

}