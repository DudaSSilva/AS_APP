import 'package:sqflite/sqflite.dart';
import '../../domain/pacote_conteudos.dart';
import '../helper/db_helper.dart';

class ConteudosDao {

  Future<List<PacoteConteudos>> listarConteudos() async { //lista futura assíncrona que retorna uma lista com todos os valores inseridos no banco de dados na tabela Conteudos, nesse caso
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB(); //declara um database que espera o dbhelper inicializar (ou seja, ele roda depois que as tabelas são criadas e os valores são inseridos nela no dbhelper)

    String sql = 'SELECT * FROM CONTEUDOS;'; //seleciona tudo da tabela conteudos e armazena na string sql
    final result = await db.rawQuery(sql); // variavel de resultado armazena os dados da string sql em um seletor RAW (linha), depois que inicializado


    List<PacoteConteudos> lista = <PacoteConteudos>[]; //Declara uma lista do tipo PacoteConteudos (que é o domínio da clase conteudo) e armazena as variaveis, convertidas em json, na lista
    for(var json in result){ //condição pra se o json estiver na lista, retorn a o conteudo convertido numa classe
      print(json);
      PacoteConteudos conteudos = PacoteConteudos.fromJson(json);
      lista.add(conteudos); //adiciona o conteudo na lista
    }

    return lista; //returna a lista de valores/ retorna os objetos
  }

}