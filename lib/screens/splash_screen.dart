import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../pages/home_page.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    loadData();
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

  void loadData() {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    Future.delayed(Duration(seconds: 3)).then((_){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
    });
  }
}
