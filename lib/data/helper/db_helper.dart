import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {

  initDB() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, "asApp24.db");
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
      String sql = "CREATE TABLE user (usuario varchar(100) PRIMARY KEY, senha varchar(100));";
      await db.execute(sql);

      sql = "INSERT INTO user (username, password) VALUES ('academicsyllabus@gmail.com', '123456');";
      await db.execute(sql);
    }
  }

  Future<FutureOr<void>> onCreate(Database db, int version) async {
    //USUÁRIO

    String sqlUser =
        "create table USER (id int PRIMARY KEY, usuario varchar(100), senha varchar(10), email varchar(100));";
    await db.execute(sqlUser);

    sqlUser =
    "INSERT INTO USER (id, usuario, senha, email) VALUES (1, 'Camis123', '123456789', 'camile@email.com');";
    await db.execute(sqlUser);

    sqlUser =
    "INSERT INTO USER (id, usuario, senha, email) VALUES (2, 'Eddyss', '123456789', 'eduarda@email.com');";
    await db.execute(sqlUser);

    sqlUser =
    "INSERT INTO USER (id, usuario, senha, email) VALUES (3, 'MipsBelchior', '123456789', 'izabel@email.com');";
    await db.execute(sqlUser);

    sqlUser =
    "INSERT INTO USER (id, usuario, senha, email) VALUES (4, 'ViviMaria', '123456789', 'viviane@email.com');";
    await db.execute(sqlUser);

    sqlUser =
    "INSERT INTO USER (id, usuario, senha, email) VALUES (5, 'academicSyllabus', 'ASapp2022', 'academicsyllabusapp@gmail.com');";
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

    String sql3 = 'create table CONTEUDOS (id INTEGER PRIMARY KEY, nomedisciplina varchar(100), conteudo1 varchar(100), conteudo2 varchar(100), conteudo3 varchar(100), conteudo4 varchar(100), valor boolean);';
    await db.execute(sql3); //cria a tabela definindo o id como chave primária e definindo os atributos como parâmetro, o await é pra esperar a execução do banco de dados.

    sql3 =
    "INSERT INTO CONTEUDOS (id, nomedisciplina, conteudo1, conteudo2, conteudo3, conteudo4, valor) VALUES (1, 'PORTUGUÊS', 'Modernismo', 'Interpretação de texto', 'Orações subordinadas', 'Aposto e vocativo', 0);";
    await db.execute(sql3); //insere os valores na tabela

    sql3 =
    "INSERT INTO CONTEUDOS (id, nomedisciplina, conteudo1, conteudo2, conteudo3, conteudo4, valor) VALUES (2, 'MATEMÁTICA', 'Estatística', 'Porcentagem', 'Probabilidade', 'Geometria plana', 0);";
    await db.execute(sql3);

    sql3 =
    "INSERT INTO CONTEUDOS (id, nomedisciplina, conteudo1, conteudo2, conteudo3, conteudo4, valor) VALUES (3, 'HISTÓRIA', 'Modernismo', 'Interpretação de texto', 'Orações subordinadas', 'Aposto e vocativo', 0);";
    await db.execute(sql3);

    sql3 =
    "INSERT INTO CONTEUDOS (id, nomedisciplina, conteudo1, conteudo2, conteudo3, conteudo4, valor) VALUES (4, 'ESPANHOL', 'Modernismo', 'Interpretação de texto', 'Orações subordinadas', 'Aposto e vocativo', 0);";
    await db.execute(sql3);

    sql3 =
    "INSERT INTO CONTEUDOS (id, nomedisciplina, conteudo1, conteudo2, conteudo3, conteudo4, valor) VALUES (5, 'SOCIOLOGIA', 'Modernismo', 'Interpretação de texto', 'Orações subordinadas', 'Aposto e vocativo', 0);";
    await db.execute(sql3);

    //IMAGENS

    String sql4 = "CREATE TABLE IMAGES (id INTEGER PRIMARY KEY, URL varchar(100));";
    await db.execute(sql4);

    sql4 = "INSERT INTO IMAGES (id, URL) VALUES (1, 'images/beleza.png');";
    await db.execute(sql4);

    sql4 = "INSERT INTO IMAGES (id, URL) VALUES (2, 'images/casa.png');";
    await db.execute(sql4);

    sql4 = "INSERT INTO IMAGES (id, URL) VALUES (3, 'images/estudos.png');";
    await db.execute(sql4);

    sql4 = "INSERT INTO IMAGES (id, URL) VALUES (4, 'images/saude.png');";
    await db.execute(sql4);

    //FLASHCARDS

    String sql5 = "CREATE TABLE FLASHCARDS (id INTEGER PRIMARY KEY, URL varchar(100), text varchar(300), title varchar(100));";
    await db.execute(sql5);

    sql5 = "INSERT INTO FLASHCARDS (id, URL, text, title) VALUES (1, 'images/filme.png', 'Anabelle', 'filmes');";
    await db.execute(sql5);

    sql5 = "INSERT INTO FLASHCARDS (id, URL, text, title) VALUES (2, 'images/serie.png', 'Uma advogada extraordinária', 'séries');";
    await db.execute(sql5);

    sql5 = "INSERT INTO FLASHCARDS (id, URL, text, title) VALUES (3, 'images/roupa.png', 'Wid leg preta', 'roupas');";
    await db.execute(sql5);

    sql5 = "INSERT INTO FLASHCARDS (id, URL, text, title) VALUES (4, 'images/compra.png', 'Talheres e liquidificador', 'compras');";
    await db.execute(sql5);

    sql5 = "INSERT INTO FLASHCARDS (id, URL, text, title) VALUES (5, 'images/make.png', 'Base e sombras ', 'makes');";
    await db.execute(sql5);

    sql5 = "INSERT INTO FLASHCARDS (id, URL, text, title) VALUES (6, 'images/musica.png', 'Paradise e The nights', 'músicas');";
    await db.execute(sql5);

    sql5 = "INSERT INTO FLASHCARDS (id, URL, text, title) VALUES (7, 'images/mesa.png', 'Mesa e escrivaninha', 'móveis');";
    await db.execute(sql5);

    sql5 = "INSERT INTO FLASHCARDS (id, URL, text, title) VALUES (8, 'images/comida.png', 'Mousse de abacaxi e pizza', 'comida');";
    await db.execute(sql5);

    //LIVROS

    String sql6 = 'create table LIVROS (id INTEGER PRIMARY KEY, livro1 varchar(100), livro2 varchar(100), livro3 varchar(100), livro4 varchar(100), livro5 varchar(100), cor varchar(100));';
    await db.execute(sql6);

    sql6 =
    "INSERT INTO LIVROS (id, livro1, livro2, livro3, livro4, livro5, cor) VALUES (1, 'ACOTAR', 'ACOMAF', 'ACOFAS', 'ACOWAR', 'ACOSF', '0xFFF4D9A9');";
    await db.execute(sql6);

    sql6 =
    "INSERT INTO LIVROS (id, livro1, livro2, livro3, livro4, livro5, cor) VALUES (2, 'Tarsis', 'Matei um amigo ', ' Lula livre', 'Eu imploro', 'ACOSF', '0xFFF4D9A9');";
    await db.execute(sql6);

    sql6 =
    "INSERT INTO LIVROS (id, livro1, livro2, livro3, livro4, livro5, cor) VALUES (3, '3 formas e e forma de bolo', 'de morrer rapidamente', 'Tarsis: Viagens por Arapiraca', 'Tarsis: Coluna mal tratada', 'ACOSF', '0xFFF4D9A9');";
    await db.execute(sql6);

    sql6 =
    "INSERT INTO LIVROS (id, livro1, livro2, livro3, livro4, livro5, cor) VALUES (4, 'Como dar titulos a livros', 'Tarsis: Flutter e ameaças', 'Como ser feliz, sendo um feira-grandense', 'Smilingüido –  Drogas e armas', 'O lar da senhorita Peregrine', '0xFFF37B67');";
    await db.execute(sql6);

    //LOJA

    String sql7 =
        'create table STORE (id INTEGER PRIMARY KEY, image varchar(500), title varchar(100), price varchar(100), page varchar(100));';
    await db.execute(sql7);

    sql7 =
    "INSERT INTO STORE (id, image, title, price, page) VALUES (1, 'https://imgs.casasbahia.com.br/14023375/1xg.jpg?imwidth=500', 'Camisa de Biologia', '50,00', 'QuestPage()');";
    await db.execute(sql7);

    sql7 =
    "INSERT INTO STORE (id, image, title, price, page) VALUES (2, 'https://imgs.casasbahia.com.br/14023375/1xg.jpg?imwidth=500', 'Camisa de Biologia', '50,00', 'QuestPage()');";
    await db.execute(sql7);

    sql7 =
    "INSERT INTO STORE (id, image, title, price, page) VALUES (3, 'https://imgs.casasbahia.com.br/14023375/1xg.jpg?imwidth=500', 'Camisa de Biologia', '50,00', 'QuestPage()');";
    await db.execute(sql7);

    sql7 =
    "INSERT INTO STORE (id, image, title, price, page) VALUES (4, 'https://imgs.casasbahia.com.br/14023375/1xg.jpg?imwidth=500', 'Camisa de Biologia', '50,00', 'QuestPage()');";
    await db.execute(sql7);

    sql7 =
    "INSERT INTO STORE (id, image, title, price, page) VALUES (5, 'https://imgs.casasbahia.com.br/14023375/1xg.jpg?imwidth=500', 'Camisa de Biologia', '50,00', 'QuestPage()');";
    await db.execute(sql7);

    sql7 =
    "INSERT INTO STORE (id, image, title, price, page) VALUES (6, 'https://imgs.casasbahia.com.br/14023375/1xg.jpg?imwidth=500', 'Camisa de Biologia', '50,00', 'QuestPage()');";
    await db.execute(sql7);

    sql7 =
    "INSERT INTO STORE (id, image, title, price, page) VALUES (7, 'https://imgs.casasbahia.com.br/14023375/1xg.jpg?imwidth=500', 'Camisa de Biologia', '50,00', 'QuestPage()');";
    await db.execute(sql7);

    sql7 =
    "INSERT INTO STORE (id, image, title, price, page) VALUES (8, 'https://imgs.casasbahia.com.br/14023375/1xg.jpg?imwidth=500', 'Camisa de Biologia', '50,00', 'QuestPage()');";
    await db.execute(sql7);
  }

}