import 'package:asapp/pages/pacote_telaPrincipal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../pages/home_page.dart';

class Splash3 extends StatefulWidget {
  final String nomeUsuario;
  const Splash3({Key? key, required this.nomeUsuario}) : super(key: key);

  @override
  _Splash3State createState() => _Splash3State();
}

class _Splash3State extends State<Splash3> {
  @override
  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    Future.delayed(Duration(seconds: 3)).then((_){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>TelaPrincipalPage(nomeUsuario: widget.nomeUsuario)));
    });
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
