import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/pages/home_page.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    Future.delayed(Duration(seconds: 3)).then((_){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      color: Color(0xFFDD2E44),
      child: Center(
        child: Container(
          width: 200,
          height: 200,
          child: Image.asset("images/logo.png"),
        ),
      ),
    );
  }
}
