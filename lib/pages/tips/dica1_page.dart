import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../pacote_telaPrincipal.dart';

class Dica1Page extends StatefulWidget {

  const Dica1Page({
    Key? key,
  }) : super(key: key);

  @override
  _Dica1PageState createState() => _Dica1PageState();
}

class _Dica1PageState extends State<Dica1Page> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFC690),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('PLANEJAMENTO'),
        backgroundColor: const Color(0xFFFFC690),
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
                    "images/dica1.jpg",
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
                          color: Colors.white,
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
                            'https://estudareaprender.com/como-fazer-plano-de-estudos-perfeito/',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: onPressedFonteImagem,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  const Text(
                    '7 dicas simples e práticas para montar um cronograma de estudos',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Uma das maiores dificuldades dos estudantes, tanto na preparação para o vestibular quanto durante a faculdade, é se organizar para conseguir estudar todos os conteúdos necessários. Se você já procurou saber como fazer isso, provavelmente já ouviu falar sobre o cronograma de estudos.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Pensando nisso, preparamos este post com 7 dicas incríveis sobre como montar um cronograma de estudos completo para ajudar na sua rotina. Continue a leitura e aprenda!',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 24),
                  buildTip(
                    title1: '1. Organize o seu tempo disponível',
                    title2: '2. Separe todas as matérias',
                    title3: '3. Identifique as prioridades de estudo',
                    title4: '4. Defina metas para os estudos',
                    title5: '5. Planeje-se para eventuais imprevistos',
                    title6: '6. Não se esqueça do descanso e do lazer',
                    title7: '7. Atualize o cronograma de estudos',
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'FONTES UTILIZADAS PARA O TEXTO DESSE POST',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      shadowColor: Colors.transparent,
                    ),
                    child: const Text(
                      'https://faro.edu.br/blog/7-dicas-simples-e-praticas-para-montar-um-cronograma-de-estudos/',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
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
    final Uri _url = Uri.parse('https://faro.edu.br/blog/7-dicas-simples-e-praticas-para-montar-um-cronograma-de-estudos/');

    if (!await launchUrl(
      _url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $_url';
    }
  }

  Future<void> onPressedFonteImagem() async {
    final Uri _url = Uri.parse('https://estudareaprender.com/como-fazer-plano-de-estudos-perfeito/');

    if (!await launchUrl(
      _url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $_url';
    }
  }

  buildText({
    required String text,
  }){
    return Text(
      text,
      textAlign: TextAlign.justify,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 14,
      ),
    );
  }

  buildTip({
    required String title1,
    required String title2,
    required String title3,
    required String title4,
    required String title5,
    required String title6,
    required String title7,
  }){
    return Column(
      children: [
        Text(
          title1,
          textAlign: TextAlign.justify,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            backgroundColor: Color(0xFFFFCC99),
          ),
        ),
        const SizedBox(height: 16),
        buildText(text: 'Esse é o ponto de partida para o seu cronograma: analise a sua rotina e descubra quantas horas você pode dedicar aos estudos por dia. Para isso, lembre-se de considerar outros compromissos, como trabalho, cursos e faculdade, além dos períodos de descanso e lazer. É com base nessa informação que você vai começar o seu planejamento. O próximo passo é montar um calendário com toda a sua rotina, incluindo finais de semana e feriados. Isso pode ser feito manuscrito, no Excel, pelo Trello ou em outro aplicativo que você goste. Depois, é hora de preenchê-lo com os horários e compromissos, determinando quais momentos serão destinados aos estudos. Simples, não é? Assim você vai conseguir visualizar realmente o tempo disponível para cumprir suas tarefas e começar a organizar, de fato, o seu cronograma.'),
        const SizedBox(height: 24),
        Text(
          title2,
          textAlign: TextAlign.justify,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            backgroundColor: Color(0xFFFFCC99),
          ),
        ),
        const SizedBox(height: 16),
        buildText(text: 'Para que você consiga planejar o seu calendário corretamente, é fundamental separar todas as matérias que precisam ser estudadas no período. Monte uma lista com todos os conteúdos e, se possível, faça mais algumas divisões por temas — isso vai facilitar na hora da organização. Se você estiver focando em uma prova específica, a dica é dar uma olhada no edital, que já separa os temas de cada disciplina para garantir a inclusão de todos os conteúdos no cronograma. Aliás, essa é uma ótima forma de economizar tempo, facilitando o trabalho de separar todas as matérias.'),
        const SizedBox(height: 24),
        Text(
          title3,
          textAlign: TextAlign.justify,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            backgroundColor: Color(0xFFFFCC99),
          ),
        ),
        const SizedBox(height: 16),
        buildText(text: 'Você vai muito bem em português, mas sente dificuldade na hora de fazer cálculos? Domina história, mas sofre com biologia? Isso é muito comum, então avalie essas questões e defina prioridades na hora de formular o seu cronograma de estudos. Também é importante considerar o peso de cada matéria na prova — nos vestibulares é comum que algumas tenham uma cobrança maior. As disciplinas que valem mais merecem mais tempo de dedicação para garantir o melhor desempenho. Com todos os conteúdos separados e prioridades definidas, você pode começar a organizar o seu calendário, anotando as matérias que serão estudadas a cada dia e tarefas específicas, como resolver questões ou revisar a disciplina estudada.'),
        const SizedBox(height: 24),
        Text(
          title4,
          textAlign: TextAlign.justify,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            backgroundColor: Color(0xFFFFCC99),
          ),
        ),
        const SizedBox(height: 16),
        buildText(text: 'Estruturar o cronograma de estudos ajuda a manter a rotina, mas para evitar as tentações e continuar focado nas suas tarefas, é importante também definir objetivos a curto, médio e longo prazo. Se você estiver se planejando para uma prova específica, como o Enem ou o vestibular, a meta em longo prazo é absorver todo o conteúdo programático do edital. Mas também é importante definir algumas metas menores e os seus prazos, como concluir determinados conteúdos, terminar de ler um livro ou, enfim, dominar as fórmulas de física e de química. Além disso, caso você esteja se preparando para uma prova que não tem um dia definido, as metas se tornam ainda mais importantes para que você não perca o foco e mantenha o ritmo de estudos até a divulgação das datas.'),
        const SizedBox(height: 24),
        Text(
          title5,
          textAlign: TextAlign.justify,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            backgroundColor: Color(0xFFFFCC99),
          ),
        ),
        const SizedBox(height: 16),
        buildText(text: 'Ao montar o cronograma, é importante considerar os possíveis imprevistos. Podem surgir compromissos de última hora que ocupam o tempo de estudo, doenças ou dias em que o seu rendimento deixa a desejar. Para evitar problemas, tenha alguns períodos destinados à reposição de tarefas. Caso não tenha surgido nenhum imprevisto e os seus estudos estejam em dia, esses horários podem ser usados para revisar o que foi estudado na semana ou para dar mais atenção àquele conteúdo que está trazendo mais dificuldades.'),
        const SizedBox(height: 24),
        Text(
          title6,
          textAlign: TextAlign.justify,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            backgroundColor: Color(0xFFFFCC99),
          ),
        ),
        const SizedBox(height: 16),
        buildText(text: 'Um erro muito comum na hora de montar um cronograma é descobrir as horas livres e preencher todas com períodos de estudos. Quando se planejar, lembre-se de definir intervalos para descansar a mente durante as tarefas e de separar algum tempo para se divertir. Mesmo que você tenha muita matéria para revisar e grandes objetivos para atingir, você precisa ter momentos para relaxar a mente e se divertir. Isso reduz o seu estresse e faz com que o cérebro renda mais durante os estudos. Por outro lado, uma mente cansada e estressada não terá um desempenho tão bom.'),
        const SizedBox(height: 24),
        Text(
          title7,
          textAlign: TextAlign.justify,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            backgroundColor: Color(0xFFFFCC99),
          ),
        ),
        const SizedBox(height: 16),
        buildText(text: 'Para garantir um bom desempenho e aproveitar os melhores resultados, também é importante fazer revisões e atualizar o seu planejamento. Em algumas matérias você pode apresentar um ótimo rendimento e seguir o seu plano de estudos tranquilamente. Entretanto, outros conteúdos podem trazer dificuldades e atrasar as suas metas. Nesses casos, é importante revisar o cronograma e fazer atualizações, substituindo horários para adequar o tempo de cada matéria. Essa ferramenta deve servir como um guia, mas fazer ajustes para potencializar o seu desempenho e corrigir algumas falhas é natural e é exatamente o que vai garantir que você tenha o melhor rendimento possível quando estudar.'),
      ],
    );
  }
}