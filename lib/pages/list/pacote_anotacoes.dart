//ALTERAR PARA TELA DE ANOTAÇÕES
import 'package:asapp/domain/flashcard.dart';
import 'package:asapp/widget/widget_flashcard.dart';
import 'package:flash_card/flash_card.dart';
import 'package:flutter/material.dart';
import '../pacote_telaPrincipal.dart';

class PacoteAnotacoes extends StatefulWidget {
  const PacoteAnotacoes({Key? key}) : super(key: key);

  @override
  _PacoteAnotacoesState createState() => _PacoteAnotacoesState();
}

class _PacoteAnotacoesState extends State<PacoteAnotacoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xFFFFE8E8),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('LISTAS'),
        backgroundColor: const Color(0xFFDD2E44),
      ),
      body: BuildBody(),
    );
  }

  //Fazer um buildFlashCard

  // FlashCardClass pacote = FlashCardClass(
  //   text: 'Anabelle',
  //   title: 'Filmes',
  // );

  List lista = [
    //WidgetFlashCard(flashCardClass: pacote),
    FlashCard(
      frontWidget: Container(
          height: 100,
          width: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text.rich(TextSpan(
                  text: 'Nghĩa:',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  children: [
                    TextSpan(
                      text: 'Ngôi nhà',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ])),
              Text.rich(TextSpan(
                  text: 'Phiên âm:',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  children: [
                    TextSpan(
                      text: '/həʊm/',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ])),
              Container(
                height: 40,
                width: 40,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(color: Colors.blue, width: 2),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(2, 2),
                          spreadRadius: 1,
                          blurRadius: 15)
                    ]),
                child: Center(
                    child:
                    Icon(Icons.volume_down_sharp, color: Colors.blue)),
              ),
            ],
          )),
      backWidget: Container(
        height: 100,
        width: 100,
        child: Center(
          child: Text(
            'SÉRIES',
            style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 30,
                fontWeight: FontWeight.w900),
          ),
        ),
      ),
      width: 300,
      height: 400,
    ),
    FlashCard(
      frontWidget: Container(
          height: 100,
          width: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text.rich(TextSpan(
                  text: 'Nghĩa:',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  children: [
                    TextSpan(
                      text: 'Ngôi nhà',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ])),
              Text.rich(TextSpan(
                  text: 'Phiên âm:',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  children: [
                    TextSpan(
                      text: '/həʊm/',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ])),
              Container(
                height: 40,
                width: 40,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(color: Colors.blue, width: 2),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(2, 2),
                          spreadRadius: 1,
                          blurRadius: 15)
                    ]),
                child: Center(
                    child:
                    Icon(Icons.volume_down_sharp, color: Colors.blue)),
              ),
            ],
          )),
      backWidget: Container(
        height: 100,
        width: 100,
        child: Center(
          child: Text(
            'SÉRIES',
            style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 30,
                fontWeight: FontWeight.w900),
          ),
        ),
      ),
      width: 300,
      height: 400,
    ),
    FlashCard(
      frontWidget: Container(
          height: 100,
          width: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text.rich(TextSpan(
                  text: 'Nghĩa:',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  children: [
                    TextSpan(
                      text: 'Ngôi nhà',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ])),
              Text.rich(TextSpan(
                  text: 'Phiên âm:',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  children: [
                    TextSpan(
                      text: '/həʊm/',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ])),
              Container(
                height: 40,
                width: 40,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(color: Colors.blue, width: 2),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(2, 2),
                          spreadRadius: 1,
                          blurRadius: 15)
                    ]),
                child: Center(
                    child:
                    Icon(Icons.volume_down_sharp, color: Colors.blue)),
              ),
            ],
          )),
      backWidget: Container(
        height: 100,
        width: 100,
        child: Center(
          child: Text(
            'ROUPAS',
            style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 30,
                fontWeight: FontWeight.w900),
          ),
        ),
      ),
      width: 300,
      height: 400,
    ),
    FlashCard(
      frontWidget: Container(
          height: 100,
          width: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text.rich(TextSpan(
                  text: 'Nghĩa:',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  children: [
                    TextSpan(
                      text: 'Ngôi nhà',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ])),
              Text.rich(TextSpan(
                  text: 'Phiên âm:',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  children: [
                    TextSpan(
                      text: '/həʊm/',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ])),
              Container(
                height: 40,
                width: 40,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(color: Colors.blue, width: 2),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(2, 2),
                          spreadRadius: 1,
                          blurRadius: 15)
                    ]),
                child: Center(
                    child:
                    Icon(Icons.volume_down_sharp, color: Colors.blue)),
              ),
            ],
          )),
      backWidget: Container(
        height: 100,
        width: 100,
        child: Center(
          child: Text(
            'COMPRAS',
            style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 30,
                fontWeight: FontWeight.w900),
          ),
        ),
      ),
      width: 300,
      height: 400,
    ),
    FlashCard(
      frontWidget: Container(
          height: 100,
          width: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text.rich(TextSpan(
                  text: 'Nghĩa:',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  children: [
                    TextSpan(
                      text: 'Ngôi nhà',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ])),
              Text.rich(TextSpan(
                  text: 'Phiên âm:',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  children: [
                    TextSpan(
                      text: '/həʊm/',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ])),
              Container(
                height: 40,
                width: 40,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(color: Colors.blue, width: 2),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(2, 2),
                          spreadRadius: 1,
                          blurRadius: 15)
                    ]),
                child: Center(
                    child:
                    Icon(Icons.volume_down_sharp, color: Colors.blue)),
              ),
            ],
          )),
      backWidget: Container(
        height: 100,
        width: 100,
        child: Center(
          child: Text(
            'MAKES',
            style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 30,
                fontWeight: FontWeight.w900),
          ),
        ),
      ),
      width: 300,
      height: 400,
    ),
    FlashCard(
      frontWidget: Container(
          height: 100,
          width: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text.rich(TextSpan(
                  text: 'Nghĩa:',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  children: [
                    TextSpan(
                      text: 'Ngôi nhà',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ])),
              Text.rich(TextSpan(
                  text: 'Phiên âm:',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  children: [
                    TextSpan(
                      text: '/həʊm/',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ])),
              Container(
                height: 40,
                width: 40,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(color: Colors.blue, width: 2),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(2, 2),
                          spreadRadius: 1,
                          blurRadius: 15)
                    ]),
                child: Center(
                    child:
                    Icon(Icons.volume_down_sharp, color: Colors.blue)),
              ),
            ],
          )),
      backWidget: Container(
        height: 100,
        width: 100,
        child: Center(
          child: Text(
            'MÚSICAS',
            style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 30,
                fontWeight: FontWeight.w900),
          ),
        ),
      ),
      width: 300,
      height: 400,
    ),
    FlashCard(
      frontWidget: Container(
          height: 100,
          width: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text.rich(TextSpan(
                  text: 'Nghĩa:',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  children: [
                    TextSpan(
                      text: 'Ngôi nhà',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ])),
              Text.rich(TextSpan(
                  text: 'Phiên âm:',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  children: [
                    TextSpan(
                      text: '/həʊm/',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ])),
              Container(
                height: 40,
                width: 40,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(color: Colors.blue, width: 2),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(2, 2),
                          spreadRadius: 1,
                          blurRadius: 15)
                    ]),
                child: Center(
                    child:
                    Icon(Icons.volume_down_sharp, color: Colors.blue)),
              ),
            ],
          )),
      backWidget: Container(
        height: 100,
        width: 100,
        child: Center(
          child: Text(
            'MÓVEIS',
            style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 30,
                fontWeight: FontWeight.w900),
          ),
        ),
      ),
      width: 300,
      height: 400,
    ),
    FlashCard(
      frontWidget: Container(
          height: 100,
          width: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text.rich(TextSpan(
                  text: 'Nghĩa:',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  children: [
                    TextSpan(
                      text: 'Ngôi nhà',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ])),
              Text.rich(TextSpan(
                  text: 'Phiên âm:',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  children: [
                    TextSpan(
                      text: '/həʊm/',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )
                  ])),
              Container(
                height: 40,
                width: 40,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(color: Colors.blue, width: 2),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(2, 2),
                          spreadRadius: 1,
                          blurRadius: 15)
                    ]),
                child: Center(
                    child:
                    Icon(Icons.volume_down_sharp, color: Colors.blue)),
              ),
            ],
          )),
      backWidget: Container(
        height: 100,
        width: 100,
        child: Center(
          child: Text(
            'COMIDA',
            style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 30,
                fontWeight: FontWeight.w900),
          ),
        ),
      ),
      width: 300,
      height: 400,
    ),
  ];

  BuildBody() {
    return Scaffold(
      backgroundColor: const Color(0xFFDD2E44),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1
          ),
          itemCount: lista.length,
          itemBuilder: (BuildContext context, int index) {
            return lista[index];
          },
        ),
      ),
    );
  }
}
