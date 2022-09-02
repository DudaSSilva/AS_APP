import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  _AboutUsPageState createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD7525B),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('SOBRE NÓS'),
        backgroundColor: const Color(0xFFD7525B),
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
                  const SizedBox(height: 24),
                  Container(
                    height: 60,
                    width: 380,
                    alignment: Alignment.centerLeft,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [0.3, 1],
                          colors: [
                            Color(0xFFDD2E44),
                            Color(0xFFF58524),
                          ],
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(80),
                        )
                    ),
                    child: SizedBox.expand(
                      child: TextButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              child: SizedBox(
                                child: Image.asset(
                                  "images/insta1.png",
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                            ),
                            const Text(
                              "SIGA-NOS NO INSTAGRAM",
                              style: TextStyle(
                                //fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(20),
                        ),
                        onPressed: openInstagram,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    height: 60,
                    width: 380,
                    alignment: Alignment.centerLeft,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [0.3, 1],
                          colors: [
                            Color(0xFFDD2E44),
                            Color(0xFFF58524),
                          ],
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(80),
                        )
                    ),
                    child: SizedBox.expand(
                      child: TextButton(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "CONFIRA NOSSO SITE",
                              style: TextStyle(
                                //fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(20),
                        ),
                        onPressed: openSite,
                      ),
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

  Future<void> openInstagram() async {
    final Uri _url = Uri.parse('https://www.instagram.com/academicsyllabus/');

    if (!await launchUrl(
      _url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $_url';
    }
  }

  Future<void> openSite() async {
    final Uri _url = Uri.parse('https://academicsillabussite--eduardasoares1.repl.co/');

    if (!await launchUrl(
      _url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $_url';
    }
  }
}