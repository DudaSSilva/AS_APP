import 'package:asapp/main.dart';
import 'package:asapp/models/auxiliar_styles.dart';
import 'package:asapp/models/theme.dart';
import 'package:asapp/services/notification_services.dart';
import 'package:asapp/services/themes_services.dart';
import 'package:asapp/widget/button.dart';
import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../../data/dataSimulatory/bdLivros.dart';
import '../../domain/pacote_livros.dart';
import '../../widget/pacote_livros_card.dart';
import '../pacote_telaPrincipal.dart';
import 'package:flutter/material.dart';

class Livros extends StatefulWidget {
  const Livros({Key? key}) : super(key: key);

  @override
  State<Livros> createState() => _LivrosState();
}

class _LivrosState extends State<Livros> {
  //showNotification(){
    //setState(() {
      //valor = !valor;
   // });
  //}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        children: [
          _addBookBar(),
          Container(
            child: Container(
              child: DatePicker(
                DateTime.now(),
                height: 100,
                width: 80,
                initialSelectedDate: DateTime.now(),
                selectionColor: Styles.primaryColor,
              ),
            ),
          )
        ],
      ),
      //routes: Routes.list,
      //initialRoute: Routes.initial,
      //navigadorKey: Routes.navigatorKey,
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
                  style: subHeadingStyle,
                ),
                Text("Today",
                  style: HeadingStyle,)

              ],
            ),
          ),
          MyButton(label: "+ ADD Book", onTap: ()=>null)
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
}
