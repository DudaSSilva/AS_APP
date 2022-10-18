import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../pacote_telaPrincipal.dart';

class Dica5Page extends StatefulWidget {

  const Dica5Page({
    Key? key,
  }) : super(key: key);

  @override
  _Dica5PageState createState() => _Dica5PageState();
}

class _Dica5PageState extends State<Dica5Page> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4D9A9),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('MEDITAÇÃO'),
        backgroundColor: const Color(0xFFF4D9A9),
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
                            'https://static.tuasaude.com/media/article/qk/am/como-meditar_23557.webp',
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
                    'Como meditar corretamente (em 5 passos simples)',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFF25E7A),
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'A meditação é uma técnica que permite conduzir a mente para um estado de calma e relaxamento através de métodos que envolvem postura e focalização da atenção para atingir tranquilidade e paz interior, trazendo diversos benefícios como redução do estresse, ansiedade, insônia, além de auxílio para a melhorar o foco e a produtividade no trabalho ou estudos. O passo a passo para meditar consiste em:',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Color(0xFFF25E7A),
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 24),
                  buildTittle(
                    title1: '1 - Reservar um tempo',
                    title2: '2 - Encontrar um local calmo',
                    title3: '3 - Adotar uma postura confortável',
                    title4: '4 - Controlar a respiração',
                    title5: '5 - Focar a atenção',
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
                        'https://www.tuasaude.com/como-meditar/',
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
    final Uri _url = Uri.parse('https://static.tuasaude.com/media/article/qk/am/como-meditar_23557.webp');

    if (!await launchUrl(
      _url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $_url';
    }
  }

  Future<void> onPressedFonte() async {
    final Uri _url = Uri.parse('https://www.tuasaude.com/como-meditar/');

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
        buildText(text: 'Deve-se reservar 1 ou 2 momentos ao longo do dia para se desligar por um tempo. Pode ser ao acordar, para permitir começar o dia com menos ansiedade e mais foco, no meio do dia, para se descansar um pouco das tarefas, ou quando for se deitar, para acalmar a mente antes de dormir. Idealmente, um período de 15 a 20 minutos é um ótimo tempo para trazer os máximos benefícios da meditação, mas 5 minutos já são suficientes para permitir uma viagem para dentro de si, alcançando tranquilidade e foco.'),
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
        buildText(text: 'É recomendado separar um espaço onde possa se sentar com um pouco de tranquilidade, como uma sala, um jardim, um sofá, sendo também possível na própria cadeira do escritório, ou até no carro, após estacionar antes de ir para o trabalho, por exemplo. O importante é que possa estar, de preferência, em um ambiente tranquilo e com mínimo de distrações para facilitar a concentração.'),
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
        buildText(text: 'A posição ideal para a prática da meditação, de acordo com as técnicas orientais, é a postura de lótus, em que se permanece sentado, com as pernas cruzadas e com os pés sobre as coxas, logo acima dos joelhos, e com a coluna reta. Entretanto, essa posição não é obrigatória, sendo possível ficar sentado ou deitado em qualquer posição, inclusive em uma cadeira ou banco, desde que esteja confortável, com a coluna reta, ombros relaxados e pescoço alinhado. Também deve-se encontrar um apoio para as mãos, que podem repousar no colo, com o dorso de uma sobre a outra, ou ficar uma em cada joelho, com as palmas para baixo ou para cima. Em seguida, deve-se manter os olhos fechados e permitir que os músculos relaxem.'),
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
        buildText(text: 'É importante aprender a dar uma atenção mais especial à respiração, utilizando os pulmões completamente. Deve ser feita uma inspiração profunda, puxando o ar utilizando a barriga e o tórax, e uma expiração lenta e prazerosa. O controle da respiração pode não ser fácil no começo, o que acontece com a prática, mas é importante que seja confortável e sem forçar, para que não se torne um momento desagradável. Um exercício que pode ser feito é contar até 4 na inspiração, e repetir esse tempo para a expiração.'),
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
        buildText(text: 'Na meditação tradicional, é necessário encontrar um foco para manter a atenção, geralmente um mantra, que é qualquer som, sílaba, palavra ou frase que deve ser repetida várias vezes para que exerça um poder específico sobre a mente, e que auxilie a concentração para a meditação. Ele deve ser vocalizado ou pensado pela pessoa que faz a meditação e, de preferência, se for um mantra de origem no budismo ou Yoga, seja ensinado da forma correta por um professor. O "om" é o mantra mais conhecido, e tem o poder de trazer paz interior durante a meditação.'),
      ],
    );
  }
  
}
