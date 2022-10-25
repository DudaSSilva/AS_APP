import 'package:asapp/main.dart';
import 'package:asapp/services/notification_services.dart';
import 'package:asapp/services/themes_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        children: [
          Text("Leituras",
            style: TextStyle(
              fontSize: 30
            ),
          )
        ],
      ),
    );
  }
  _appBar(){
    return AppBar(
      leading: GestureDetector(
        onTap: (){
          ThemesService().switchTheme();
        },
        child: Icon(Icons.nightlight_round),
      ),
      actions: [
        Icon(Icons.person,
          size: 20,),
        SizedBox(width: 20,),
      ],
    );
  }
}
