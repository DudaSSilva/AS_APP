import 'dart:async';

import 'package:asapp/widget/timer.dart';
import 'package:flutter/material.dart';
import '../screens/splash_screen.dart';
import 'pages/home_page.dart';

void main() {
  runApp(
    const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Splash()
    ),
  );
}