import 'package:flutter/material.dart';
import 'package:untitled/domain/pacote_planejamento.dart';
import 'package:untitled/pages/pacote_rotina.dart';
import 'package:untitled/screens/splash_screen.dart';
import 'pages/home_page.dart';

void main() {
  runApp(

    const MaterialApp(
      debugShowCheckedModeBanner: false,
        home: const PacoteRotina(),
    ),
  );
}
