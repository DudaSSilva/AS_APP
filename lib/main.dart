import 'package:asapp/screens/animation.dart';
import 'package:flutter/material.dart';
import '../screens/splash_screen.dart';

void main() {
  runApp(
    const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimationPage(page: Splash())
    ),
  );
}
