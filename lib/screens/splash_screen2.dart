import 'package:asapp/pages/login/login_page.dart';
import 'package:asapp/pages/pacote_telaPrincipal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../data/dao/usuario_dao.dart';
import '../data/shared_prefs_helper.dart';

class Splash2 extends StatefulWidget {

  Splash2({Key? key}) : super(key: key);

  @override
  _Splash2State createState() => _Splash2State();
}

class _Splash2State extends State<Splash2> {
  @override
  void initState(){
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(
      const Duration(seconds: 4),
    );

    bool isLogged = await SharedPrefsHelper().getUser();
    String username = await UsuarioDao().userName(usuario: SharedPrefsHelper().getUserObject().toString());

    if (isLogged == true){
      // Ir p/ pag de HomePage
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return TelaPrincipalPage(nomeUsuario: username);
          },
        ),
      );
    } else {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context){
                return LoginPage();
              }
          )
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFDD2E44),
      child: Center(
        child: Container(
          width: 300,
          height: 300,
          child: Image.asset("images/logo.png"),
        ),
      ),
    );
  }
}
