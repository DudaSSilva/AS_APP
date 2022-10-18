import 'package:asapp/screens/calendar_screen.dart';
import 'package:flutter/material.dart';

import '../domain/habitos.dart';

class CardPacoteHabitos extends StatefulWidget {
  final PacoteImages pacoteImages;

  const CardPacoteHabitos({
    Key? key,
    required this.pacoteImages,
  }) : super(key: key);

  @override
  _CardPacoteHabitosState createState() => _CardPacoteHabitosState();
}

class _CardPacoteHabitosState extends State<CardPacoteHabitos> {
  PacoteImages get pacote => widget.pacoteImages;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 500,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 10,
            crossAxisSpacing: 10,
            mainAxisSpacing: 0,
          ),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //Envolver cada imagem com um card para ficar clicável

                BuildImage1(),
                const SizedBox(height: 20),
                Card(
                  child: Image.asset(
                    pacote.images2,
                    width: 200,
                    height: 200,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                BuildImage3(),
                const SizedBox(height: 20),
                BuildImage4(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  BuildImage1() {
    return InkWell(
        onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return CalendarScreen();
          },
        ),
      );
    },
    child: Card(
      child: Image.asset(
        pacote.images,
        width: 200,
        height: 200,
        fit: BoxFit.fitHeight,
      ),
    ),
    );
  }

  BuildImage2() {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CalendarScreen();
            },
          ),
        );
      },
      child: Card(
        child: Image.asset(
          pacote.images2,
          width: 200,
          height: 200,
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }

  BuildImage3() {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CalendarScreen();
            },
          ),
        );
      },
      child: Card(
        child: Image.asset(
          pacote.images3,
          width: 200,
          height: 200,
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }

  BuildImage4() {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CalendarScreen();
            },
          ),
        );
      },
      child: Card(
        child: Image.asset(
          pacote.images4,
          width: 200,
          height: 200,
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }

}
