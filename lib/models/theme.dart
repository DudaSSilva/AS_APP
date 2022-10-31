/* Caso for fazer modo escuro, vc muda a cor essas
são apenas pra diferenciar
 */
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
class Themes{
  static final _light = ThemeData(
    backgroundColor: Colors.white,
    primaryColor: Colors.red,
    brightness: Brightness.light
  );
  static final dark = ThemeData(
    backgroundColor: Colors.black,
      primaryColor: Colors.yellow,
      brightness: Brightness.light
  );
}

TextStyle get subHeadingStyle{
  return GoogleFonts.lato(
    textStyle: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Get.isDarkMode ? Colors.grey[400] : Colors.grey
    )
  );
}
TextStyle get HeadingStyle{
  return GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Get.isDarkMode ? Colors.white : Colors.black
      )
  );
}