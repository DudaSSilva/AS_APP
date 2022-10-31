import 'package:asapp/data/dao/livros_dao.dart';
import 'package:asapp/domain/pacote_livros.dart';
import 'package:asapp/models/auxiliar_styles.dart';
import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

import '../../services/themes_services.dart';
import '../../widget/pacote_livros_card.dart';


class Livros extends StatefulWidget {
  const Livros({Key? key}) : super(key: key);

  @override
  State<Livros> createState() => _LivrosState();
}

class _LivrosState extends State<Livros> {
  Future<List<PacoteLivro>> lista = LivrosDao().listarLivrose();
  DateTime _selectedDate = DateTime.now();
  //showNotification(){
  //setState(() {
  //valor = !valor;
  // });
  //}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _addBookBar(),
            _addDateBar(),
            const SizedBox(height: 24),
            BuildListView(),
          ],
        ),
      ),
      //routes: Routes.list,
      //initialRoute: Routes.initial,
      //navigadorKey: Routes.navigatorKey,
    );
  }
  _addDateBar(){
    return Container(
      margin: const EdgeInsets.only(top:20, left: 20),
      child: Container(
        child: DatePicker(
          DateTime.now(),
          height: 100,
          width: 80,
          initialSelectedDate: DateTime.now(),
          selectionColor: Styles.primaryColor,
          selectedTextColor: Colors.white,
          dateTextStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.grey,
            ),
          dayTextStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.grey,
          ),
          monthTextStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.grey,
            ),
          onDateChange: (date){
            _selectedDate=date;
          },
        ),
      ),
    );
  }
  _addBookBar(){
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(DateFormat.yMMMMd().format(DateTime.now()),
                  //style: subHeadingStyle,
                ),
                Text(
                  "Today",
                  //style: HeadingStyle
                )

              ],
            ),
          ),
          //Button(label: "+ ADD Book", onTap: ()=>Get.to(AddBookPage()))
        ],
      ),
    );
  }
  _appBar(){
    return AppBar(
      elevation:  0,
      backgroundColor: context.theme.backgroundColor,
      leading: GestureDetector(
        onTap: (){
          ThemesService().switchTheme();
        },
        child: Icon(Get.isDarkMode ? Icons.wb_sunny_outlined:Icons.nightlight_round,
            size: 20,
            color: Get.isDarkMode ? Colors.white: Colors.black
        ),
      ),
      actions: [
        CircleAvatar(
          backgroundImage: AssetImage(
              "images/perfil.png"
          ),
        ),
        SizedBox(width: 20,),
      ],
    );
  }

  BuildListView() {
    return FutureBuilder<List<PacoteLivro>>(
        future: lista,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // ?? -> Verificar ser o conteudo de snapshot.data é nulo
            List<PacoteLivro> lista = snapshot.data ?? [];

            return ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: lista.length,
                itemBuilder: (BuildContext context, int index) {
                  return CardPacoteLivros(
                      pacoteLivros: lista[index]);
                });
          }

          return const Center(child: CircularProgressIndicator());
        });
  }
}