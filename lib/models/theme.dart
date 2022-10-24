/* Caso for fazer modo escuro, vc muda a cor essas
são apenas pra diferenciar
 */
import 'package:flutter/material.dart';

class Themes{
  static final _light = ThemeData(
    primaryColor: Colors.red,
    brightness: Brightness.light
  );
  static final dark = ThemeData(
      primaryColor: Colors.yellow,
      brightness: Brightness.light
  );
}