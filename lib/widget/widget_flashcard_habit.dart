import 'package:asapp/screens/calendario.dart';
import 'package:flash_card/flash_card.dart';
import 'package:flutter/material.dart';

import '../domain/habitos.dart';

class WidgetFlashCardHabit extends StatefulWidget {
  final PacoteImages pacoteImages;
  final String nomeUsuario;

  const WidgetFlashCardHabit({
    Key? key,
    required this.pacoteImages,
    required this.nomeUsuario,
  }) : super(key: key);

  @override
  _WidgetFlashCardHabitState createState() => _WidgetFlashCardHabitState();
}

class _WidgetFlashCardHabitState extends State<WidgetFlashCardHabit> {
  PacoteImages get pacote => widget.pacoteImages;

  @override
  Widget build(BuildContext context) {
    return FlashCard(
      frontWidget: Container(
          height: 100,
          width: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xFFFFCC99)),
                  onPressed: onPressed,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    child: Text(
                      'CALENDAR',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFDD2E44)),
                    ),
                  ),
                ),
              ),
            ],
          )),
      backWidget: Container(
        height: 100,
        width: 100,
        child: Center(child: Image.network(pacote.URL)),
      ),
      width: 400,
      height: 400,
    );
  }

  void onPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return Calendario(nomeUsuario: widget.nomeUsuario);
        },
      ),
    );
  }
}
