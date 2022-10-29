import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../pacote_telaPrincipal.dart';

class Dica3Page extends StatefulWidget {
  const Dica3Page({
    Key? key,
  }) : super(key: key);

  @override
  _Dica3PageState createState() => _Dica3PageState();
}

class _Dica3PageState extends State<Dica3Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFCC),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'DESEMPENHO',
          style: TextStyle(color: Color(0xFFF25E7A)),
        ),
        backgroundColor: const Color(0xFFFFFFCC),
        /*toolbarHeight: 64,
        actions: [
          IconButton(
            icon: const Icon(Icons.house, color: Color(0xFFF25E7A)),
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
        ],*/
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
                    "images/dica3.webp",
                    width: 400,
                    height: 250,
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
                            'https://img.freepik.com/vecteurs-libre/avis-client-concept-notation-illustration-plate-dessin-anime_87771-8226.jpg?size=626&ext=jpg',
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
                    '5 dicas de desempenho pessoal e profissional',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFF25E7A),
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Um bom desempenho pessoal e profissional é uma habilidade fundamental no mercado de trabalho atual. Isso significa ser capaz de se adaptar aos requisitos do trabalho e atender às expectativas dos empregadores . Isso também significa entregar resultados de alta qualidade. É importante refletir sobre como eles se comportam profissionalmente, entregam tarefas e consideram maneiras de melhorar.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Color(0xFFF25E7A),
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 24),
                  buildTittle(
                    title1: '1 - Defina uma meta',
                    title2: '2 - Estudar',
                    title3: '3 - Hábitos saudáveis',
                    title4: '4 - Revise seus resultados',
                    title5: '5 - Administre seu tempo estrategicamente',
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
                        'https://www.cpet.com.br/5-dicas-de-desempenho-pessoal-e-profissional',
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
    final Uri _url = Uri.parse(
        'https://img.freepik.com/vecteurs-libre/avis-client-concept-notation-illustration-plate-dessin-anime_87771-8226.jpg?size=626&ext=jpg');

    if (!await launchUrl(
      _url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $_url';
    }
  }

  Future<void> onPressedFonte() async {
    final Uri _url = Uri.parse(
        'https://www.cpet.com.br/5-dicas-de-desempenho-pessoal-e-profissional#:~:text=Melhorar%20o%20seu%20desempenho%20pessoal%20e%20profissional%20%C3%A9,aulas%2C%20viajar%20e%20fazer%20brainstorming%20%28tempestade%20de%20ideias%29.');

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
        buildText(
            text:
                'O que o leva a tomar decisões de carreira e melhorar o desempenho pessoal e profissional? Para a produtividade profissional, a motivação é crucial. Pode ser difícil trabalhar com coisas em que você não acredita, que não são interessantes ou despertam sua curiosidade. Isso pode levar à estagnação ou desistência. Considere se vale a pena o esforço para atingir seus objetivos de carreira antes de começar a traçar um plano de carreira. Qual a importância disso em sua vida? Quais são os benefícios que você deseja? Você está motivado pelos objetivos? Um propósito o ajudará a determinar o caminho certo.'),
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
        buildText(
            text:
                'Melhorar o seu desempenho pessoal e profissional é um processo contínuo de aprimoramento. Não pare de aprender, assistir a aulas, viajar e fazer brainstorming (tempestade de ideias). Há muitos benefícios em aprender o máximo possível sobre sua área de especialização, incluindo comunicação aprimorada, segurança ao tomar decisões e expansão de seu repertório. O conhecimento é uma vantagem competitiva. Os mercados são dinâmicos hoje em dia e sempre há novidades. Seja qual for o seu negócio, o sucesso só pode ser alcançado estando preparado e inteligente o suficiente para lidar com qualquer situação ou problema inesperado que possa surgir.'),
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
        buildText(
            text:
                'Hábitos inadequados e uma rotina desorganizada podem afetar diretamente a produtividade e o seu desempenho pessoal e profissional. Você pode fazer algumas mudanças comportamentais que irão melhorar toda a sua vida, não apenas o seu desempenho profissional. Cuide da sua saúde. Nutrientes equilibrados fornecem mais energia e mais energia. Eles também ajudam na aprendizagem. Nesse contexto, é importante se hidratar. Siga os conselhos dos seus profissionais de saúde ao praticar atividades físicas. O exercício é bom para o seu bem-estar e pode ajudar a prevenir lesões no trabalho. É também uma ótima maneira de combater o estresse, que é um dos maiores inimigos da motivação, da produtividade e do desempenho pessoal e profissional.'),
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
        buildText(
            text:
                'Você não pode só olhar para frente e projetar o futuro, há momentos em que você tem que analisar o presente e o passado. Para ver o que deu certo e o que não deu certo, é importante refletir sobre outros momentos de sua vida profissional e pessoal. Isso se aplica ao seu desempenho pessoal e profissional e aos resultados da empresa, bem como aos seus objetivos pessoais. Faça isso agora para progredir. A rede social dificultou a concentração no horário comercial. Você tem aversão a atrasos na entrega? Você precisa começar a economizar mais dinheiro para realizar seu sonho de ter uma casa? A gestão do tempo é um aliado fundamental da produtividade e de todos os aspectos da nossa vida profissional. Essa organização nos torna mais eficientes e nos permite realizar mais, em um tempo mais gerenciável. Aliás, isso é possível eliminando a procrastinação e outros comportamentos de sabotagem e tornando o gerenciamento do tempo seu melhor amigo em sua carreira e negócios, além do seu desempenho pessoal e profissional.Vale a pena refletir sobre essas e outras questões importantes. Você pode listar os comportamentos positivos e ruins que você tem e trabalhar para eliminá-los de sua vida diária.'),
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
        buildText(
            text:
                'A gestão do tempo é um aliado fundamental da produtividade e de todos os aspectos da nossa vida profissional. Essa organização nos torna mais eficientes e nos permite realizar mais, em um tempo mais gerenciável. Aliás, isso é possível eliminando a procrastinação e outros comportamentos de sabotagem e tornando o gerenciamento do tempo seu melhor amigo em sua carreira e negócios, além do seu desempenho pessoal e profissional.'),
      ],
    );
  }
}
