import 'package:flutter/material.dart';
import '../pacote_telaPrincipal.dart';
import 'package:url_launcher/url_launcher.dart';

class Dica4Page extends StatefulWidget {

  const Dica4Page({
    Key? key,
  }) : super(key: key);

  @override
  _Dica4PageState createState() => _Dica4PageState();
}

class _Dica4PageState extends State<Dica4Page> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE88883),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('CONCENTRAÇÃO'),
        backgroundColor: const Color(0xFFE88883),
        toolbarHeight: 64,
        actions: [
          IconButton(
            icon: const Icon(Icons.house),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const TelaPrincipalPage();
                  },
                ),
              );
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/logo.png",
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Text(
                        'Fonte da imagem:',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFF25E7A),
                          fontSize: 10,
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            shadowColor: Colors.transparent,
                          ),
                          child: const Text(
                            'https://holos.org.br/wp-content/uploads/2018/11/foco-concentracao-300x250.jpg',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                              color: Color(0xFFF25E7A),
                            ),
                          ),
                          onPressed: onPressedFonteImagem,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                   const Text(
                    '5 dicas para melhorar a Concentração',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFF25E7A),
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Para melhorar nossa concentração é importante ter disciplina, isto é, ser constante, insistente, dedicado e organizado.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Color(0xFFF25E7A),
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'A habilidade de manter a concentração pode ser desenvolvida como qualquer outra habilidade, como a de dirigir o carro ou como a de empreender. Para isso, é preciso querer aprender a se concentrar – e querer muito, pois costumamos ter muita resistência. Por isso, segue as dicas.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Color(0xFFF25E7A),
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 24),
                  buildTittle(
                    title1: '1 - Preste atenção naquilo que está fazendo.',
                    title2: '2 - Exercite sua mente',
                    title3: '3 - Aprenda a priorizar',
                    title4: '4 - Aprenda a fazer centramento',
                    title5: '5 - Ouça música',
                  ),
                  const SizedBox(height: 32),
                  const Center(
                    child: Text(
                      'FONTES UTILIZADAS PARA O TEXTO DESSE POST',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFF25E7A),
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        shadowColor: Colors.transparent,
                      ),
                      child: const Text(
                        'https://holos.org.br/concentracao-melhorar/',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFFF25E7A),
                        ),
                      ),
                      onPressed: onPressedFonte,
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
  
  Future<void> onPressedFonteImagem() async {
    final Uri _url = Uri.parse('https://holos.org.br/wp-content/uploads/2018/11/foco-concentracao-300x250.jpg');

    if (!await launchUrl(
      _url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $_url';
    }
  }
  
  Future<void> onPressedFonte() async {
    final Uri _url = Uri.parse('https://holos.org.br/concentracao-melhorar/');

    if (!await launchUrl(
      _url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $_url';
    }
  }

  buildText({
    required String text,
  }) {
    return Text(
      text,
      textAlign: TextAlign.justify,
      style: const TextStyle(
        color: Color(0xFFF25E7A),
        fontSize: 14,
      ),
    );
  }
  
  buildTittle({
    required String title1,
    required String title2,
    required String title3,
    required String title4,
    required String title5,
  }) {
    return Column(
      children: [
        Text(
          title1,
          textAlign: TextAlign.justify,
          style: const TextStyle(
            color: Color(0xFFF25E7A),
            fontSize: 20,
            fontWeight: FontWeight.bold,
            backgroundColor: Color(0xFFFFE8E8),
          ),
        ),
        const SizedBox(height: 16),
        buildText(text: 'No início, como sua mente não está acostumada a se concentrar no que você está fazendo, sua mente foge, dispersa, vai pensar em outra coisa. Por isso, tente trazer sua atenção de volta ao que você está fazendo, o quanto for necessário. Pratique e repita sempre. Leve sempre seus pensamentos ao trabalho, para a ação que você está fazendo no momento.'),
        const SizedBox(height: 24),
        Text(
          title2,
          textAlign: TextAlign.justify,
          style: const TextStyle(
            color: Color(0xFFF25E7A),
            fontSize: 20,
            fontWeight: FontWeight.bold,
            backgroundColor: Color(0xFFFFE8E8),
          ),
        ),
        const SizedBox(height: 16),
        buildText(text: 'Sua mente precisa ser treinada. Faça exercícios de palavras cruzadas, jogue xadrez e exercite uma outra língua. Conte de 1 a 100 e depois volte contando de trás para frente. Ponha ordem em seu quarto, suas gavetas, sua mesa de trabalho, com todo cuidado, concentrando-se em cada coisa no que está fazendo. Sua mente é como seus músculos, precisa ser treinada. Estimule sua mente. Aprenda a fazer planos de ação e operacionalize cada uma de suas metas. Mantenha a mente em exercício.'),
        const SizedBox(height: 24),
        Text(
          title3,
          textAlign: TextAlign.justify,
          style: const TextStyle(
            color: Color(0xFFF25E7A),
            fontSize: 20,
            fontWeight: FontWeight.bold,
            backgroundColor: Color(0xFFFFE8E8),
          ),
        ),
        SizedBox(height: 16),
        buildText(text: 'Priorizar é colocar o que é mais importante fazer em primeiro lugar. Você normalmente está com muitas coisas para fazer e precisa se concentrar para saber o que é prioritário. Escolha uma tarefa importante que você vai fazer e concentre-se nela.'),
        SizedBox(height: 24),
        Text(
          title4,
          textAlign: TextAlign.justify,
          style: const TextStyle(
            color: Color(0xFFF25E7A),
            fontSize: 20,
            fontWeight: FontWeight.bold,
            backgroundColor: Color(0xFFFFE8E8),
          ),
        ),
        const SizedBox(height: 16),
        buildText(text: 'Concentrar é trazer para o centro. Trazer para o centro de sua mente. É juntar o que está disperso para o centro de sua mente. É criar densidade e estar aberto a deixar vir novas ideias sem perder o foco. É dar espaço à intuição, à criatividade. Estar centrado é acalmar a mente e ficar tranquilo. Para isso, ajuda muito manter uma respiração tranquila, pausada e relaxar seu corpo. Alternativamente, é bom focar por instantes em sua respiração, em seus batimentos cardíacos, nas sensações de frio e calor por todo seu corpo. E agora sim, determine o foco de sua ação.'),
        const SizedBox(height: 24),
        Text(
          title5,
          textAlign: TextAlign.justify,
          style: const TextStyle(
            color: Color(0xFFF25E7A),
            fontSize: 20,
            fontWeight: FontWeight.bold,
            backgroundColor: Color(0xFFFFE8E8),
          ),
        ),
        const SizedBox(height: 16),
        buildText(text: 'Ouvir música ajuda muito a manter-se concentrado, seja numa atividade física ou numa atividade mental, como escrever, estudar. É preciso que seja uma música suave, de preferência já conhecida, que não exija sua atenção, pois esta deverá estar focada no que estiver fazendo. A música evita ruídos dispersivos, acalma seu corpo e sua mente, facilitando direcionar sua energia mental para o que está realizando.'),
      ],
    );
  }
  
}
