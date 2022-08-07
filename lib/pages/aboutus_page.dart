import 'dart:ffi';

import 'package:flutter/material.dart';

class AboutUsPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _AboutUsPageState createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDD2E44),
      appBar: AppBar(
          centerTitle: true,
          title: const Text('SOBRE NÓS'),
          backgroundColor: const Color(0xFFF25E7A),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/logo.png",
                    width: 300,
                    height: 300,
                    fit: BoxFit.fitHeight,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                      'Academic Syllabus é um aplicativo ainda em desenvolvimento como requisito parcial para obtenção de diploma de conclusão de curso.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                      'O objetivo do AS (abreviação) é otimizar a organização do usuário/estudante, uma vez que a rotina acadêmica pode tornar-se cansativa e acumulativa na questão de estudo dos conteúdos abordados em sala. Nisso, estabelecer metas acadêmicas, criar um cronograma e, no geral, definir um planejamento de estudos se faz uma alternativa viável para se manter organizado. ',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
