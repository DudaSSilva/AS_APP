import 'package:asapp/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../data/shared_prefs_helper.dart';

class AnimationPage extends StatefulWidget {
  final Widget page;
  const AnimationPage({Key? key, required this.page}) : super(key: key);

  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
  @override
  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    Future.delayed(Duration(seconds: 3)).then((_){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>widget.page));
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
