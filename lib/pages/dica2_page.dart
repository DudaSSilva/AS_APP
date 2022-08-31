/*
import 'package:flutter/material.dart';
import 'package:untitled/domain/pacote_dica.dart';
import 'package:untitled/widget/pacote_dica_card.dart';
import 'package:url_launcher/url_launcher.dart';
import '../pages/pacote_telaPrincipal.dart';
import '../domain/pacote_planejamento.dart';

class Dica2Page extends StatefulWidget {

  const Dica2Page({
    Key? key,
  }) : super(key: key);

  @override
  _Dica2PageState createState() => _Dica2PageState();
}

class _Dica2PageState extends State<Dica2Page> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFE8E8),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('CRONOGRAMA'),
        backgroundColor: const Color(0xFFF25E7A),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "images/dica2.jpg",
                    width: 400,
                    height: 300,
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
                            'https://i.pinimg.com/originals/04/1e/ab/041eabbf8244e438f72dbe110e2029ea.jpg',
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
                  const SizedBox(height: 32),
                  const Text(
                    'Cronograma de estudos: como montar um e qual sua importância',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFF25E7A),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Estudar nem sempre é uma tarefa fácil. Manter a disciplina nos estudos, então, nem se fale! Quando o assunto é se preparar para vestibulares e provas, saber como estudar e como administrar seu tempo para ver todo o conteúdo é tão importante quanto dominar todos os tópicos.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Color(0xFFF25E7A),
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Uma boa estratégia para organizar seu tempo e manter uma disciplina é a criação do cronograma de estudos. Porém, para saber como desenvolver um cronograma efetivo, primeiro é necessário saber o que é um cronograma, para a partir de então aprender o passo a passo para desenvolvê-lo e torná-lo presente na sua rotina.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Color(0xFFF25E7A),
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'O que é um cronograma de estudos?',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Color(0xFFF25E7A),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Color(0xFFFFCC99),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Cronograma de estudos é uma ferramenta de planejamento que auxilia o estudante na organização do tempo disponível para os estudos, para que seja possível ver todo o conteúdo necessário de uma forma mais organizada. Assim, ajuda você a saber o que, como e quando estudar os conteúdos programados para alcançar seu objetivo final.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Color(0xFFF25E7A),
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Qual a importância de uma rotina de estudos?',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Color(0xFFF25E7A),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Color(0xFFFFCC99),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Um bom desempenho nas provas não depende apenas da combinação entre estudos e concentração. É preciso uma boa preparação para fixar o conteúdo adequadamente e o melhor caminho para isso é estabelecendo uma rotina de estudos. Dessa forma, fazer um cronograma pode ser muito útil para quem vai prestar vestibular, precisa estudar para o Enem ou até um concurso público. É por meio dele que você poderá montar uma rotina de estudos, com base no seu tempo disponível e nas suas necessidades.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Color(0xFFF25E7A),
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Qual a melhor forma de se organizar para estudar?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFF25E7A),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Defina seu objetivo de estudo',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Color(0xFFF25E7A),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Color(0xFFFFCC99),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Defina as suas principais metas e descubra o que é preciso para chegar lá. Geralmente, os sonhos é o que mais impulsiona e motiva as pessoas. Portanto, tenha-os sempre em mente e, se possível, escreva no topo do cronograma, para sempre lembrar deles.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Color(0xFFF25E7A),
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Conheça sua rotina e determine a disponibilidade para estudar',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Color(0xFFF25E7A),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Color(0xFFFFCC99),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'De nada adianta montar um cronograma de estudos para o Enem, vestibulares ou concursos públicos que seja incompatível com a sua realidade. Por isso, é necessário que você conheça o seu dia a dia. Assim, pode ser feito um plano adaptado para a sua rotina. Neste plano, inclua todas as tarefas, como atividades físicas, comer, dormir e outros. Desta forma, na hora de montar o cronograma de estudos você já saberá os horários em que tem outros compromissos e os horários que poderá estudar.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Color(0xFFF25E7A),
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Coloque toda as suas atividades no papel',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Color(0xFFF25E7A),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Color(0xFFFFCC99),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Pode parecer bobo, mas é importante colocar no papel todas as atividades e compromissos que você julga importante na sua rotina e dos quais não pode abrir mão. Todos os afazeres deverão estar contidos, somente assim você saberá qual o tempo disponível para os estudos e, a partir de então, poderá estabelecer quantos minutos ou horas vai separar para cada matéria.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Color(0xFFF25E7A),
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Monitore o seu tempo de estudos',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Color(0xFFF25E7A),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Color(0xFFFFCC99),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Nesta etapa, você deverá estabelecer quanto tempo irá gastar em cada uma das suas atividades. É importante ser muito realista para que o cronograma de estudos seja efetivo.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Color(0xFFF25E7A),
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Na prática: pense em quanto tempo você gasta para tomar seu café, para almoçar, fazer lanches etc. Muitas vezes um tempo precioso é perdido durante as refeições, mas isso pode acontecer porque, geralmente, nesses períodos o celular e, consequentemente, as redes sociais estão por perto.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Color(0xFFF25E7A),
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'A internet pode ser uma aliada ou uma vilã, depende de como você a utiliza. Então, procure também monitorar o tempo que você gasta nas redes sociais. Tente gerir esse tempo, determinando quantos minutos irá deixar apenas para interagir, isso poderá te dar uma grande vantagem de tempo. E lembre-se: tempo é tudo em um cronograma de estudos!',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Color(0xFFF25E7A),
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Escolha um método para estudar',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Color(0xFFF25E7A),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Color(0xFFFFCC99),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Eles podem ser bons aliados e te ajudam a ordenar a forma de estudar, potencializando sua capacidade de aprender. Existem diversas técnicas de estudo que podem ser adotadas de acordo com as suas necessidades, suas próprias características e tempo disponível. Confira algumas delas que podem facilitar sua rotina: POMODORO, CURVA DO ESQUECIMENTO e REGRA DAS CINCO HORAS.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Color(0xFFF25E7A),
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'MODELOS DE CRONOGRAMAS PARA DOWLOAD',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFF25E7A),
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      shadowColor: Colors.transparent,
                    ),
                    child: const Text(
                      'Cronograma de estudos para cursos de humanas',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFF25E7A),
                      ),
                    ),
                    onPressed: modeloUm,
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      shadowColor: Colors.transparent,
                    ),
                    child: const Text(
                      'Cronograma de estudos para cursos de exatas',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFF25E7A),
                      ),
                    ),
                    onPressed: modeloDois,
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      shadowColor: Colors.transparent,
                    ),
                    child: const Text(
                      'Cronograma de estudos para cursos de ciências econômicas',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFF25E7A),
                      ),
                    ),
                    onPressed: modeloTres,
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      shadowColor: Colors.transparent,
                    ),
                    child: const Text(
                      'Cronograma de estudos para Medicina',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFF25E7A),
                      ),
                    ),
                    onPressed: modeloQuatro,
                  ),
                  const SizedBox(height: 32),
                  const Text(
                    'FONTES UTILIZADAS PARA O TEXTO DESSE POST',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFF25E7A),
                      fontSize: 12,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      shadowColor: Colors.transparent,
                    ),
                    child: const Text(
                      'https://www.bing.com/ck/',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: onPressedFonte,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Future<void> onPressedFonte() async {
    final Uri _url = Uri.parse('https://www.bing.com/ck/a?!&&p=366bec5179a7d75dJmltdHM9MTY2MTk4MzMwOSZpZ3VpZD1kYTBhZDBjMC05Yjg0LTQzNDktODY1ZS1hMWZmYTNmYmYzYTAmaW5zaWQ9NTQxMw&ptn=3&hsh=3&fclid=82ded81f-2978-11ed-aef8-bfc0883a2966&u=a1aHR0cHM6Ly93d3cucHJhdmFsZXIuY29tLmJyL2Nyb25vZ3JhbWEtZGUtZXN0dWRvcy1jb21vLW1vbnRhci11bS1lLXF1YWwtc3VhLWltcG9ydGFuY2lhLyM6fjp0ZXh0PUNyb25vZ3JhbWElMjBkZSUyMGVzdHVkb3MlMjAlQzMlQTklMjB1bWElMjBmZXJyYW1lbnRhJTIwZGUlMjBwbGFuZWphbWVudG8sb3MlMjBjb250ZSVDMyVCQWRvcyUyMHByb2dyYW1hZG9zJTIwcGFyYSUyMGFsY2FuJUMzJUE3YXIlMjBzZXUlMjBvYmpldGl2byUyMGZpbmFsLg&ntb=1');

    if (!await launchUrl(
      _url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $_url';
    }
  }

  Future<void> onPressedFonteImagem() async {
    final Uri _url = Uri.parse('https://i.pinimg.com/originals/04/1e/ab/041eabbf8244e438f72dbe110e2029ea.jpg');

    if (!await launchUrl(
      _url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $_url';
    }
  }
  
  Future<void> modeloUm() async {
    final Uri _url = Uri.parse('https://www.pravaler.com.br/wp-content/uploads/2020/11/cronograma-estudos-humanas.pdf');

    if (!await launchUrl(
      _url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $_url';
    }
  }
  
  Future<void> modeloDois() async {
    final Uri _url = Uri.parse('https://www.pravaler.com.br/wp-content/uploads/2020/11/cronograma-estudos-exatas.pdf');

    if (!await launchUrl(
      _url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $_url';
    }
  }
  
  Future<void> modeloTres() async {
    final Uri _url = Uri.parse('https://www.pravaler.com.br/wp-content/uploads/2020/11/cronograma-estudos-economicas.pdf');

    if (!await launchUrl(
      _url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $_url';
    }
  }
  
  Future<void> modeloQuatro() async {
    final Uri _url = Uri.parse('https://www.pravaler.com.br/wp-content/uploads/2020/11/cronograma-estudos-medicina.pdf');

    if (!await launchUrl(
      _url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $_url';
    }
  }
}

*/
