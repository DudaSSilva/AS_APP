import 'package:flutter/material.dart';
import '../../data/dataSimulatory/bdLivros.dart';
import '../../domain/pacote_livros.dart';
import '../../widget/pacote_livros_card.dart';
import '../pacote_telaPrincipal.dart';

class PacoteLivros extends StatefulWidget {
  //final String nomeUsuario;

  const PacoteLivros({
    Key? key,
    //required this.nomeUsuario,
  }) : super(key: key);

  @override
  _PacoteLivrosState createState() => _PacoteLivrosState();
}

class _PacoteLivrosState extends State<PacoteLivros> {
  //PacoteLivro get pacote => widget.pacoteLivros;
  bool value = false;
  Future<List<PacoteLivro>> lista = BD.getLivros();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFE8E8),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              /*Container(
                child: IconButton(
                  icon: const Icon(
                    Icons.house,
                    color: Color(0xFFDD2E44),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return TelaPrincipalPage(
                              nomeUsuario: widget.nomeUsuario);
                        },
                      ),
                    );
                  },
                ),
              ),*/
              const SizedBox(height: 16),
              const Text(
                'Eu vivi mil vidas e amei mil amores. Andei por mundos distantes e vi o fim dos tempos. Porque eu li.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                'George R. R. Martin',
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 16),
              BuildLivroCard(
                  tittle: 'O mundo de Sofia',
                  image: Image.asset(
                    'images/book1.jpg',
                    width: 150,
                    height: 250,
                    fit: BoxFit.cover,
                  )),
              const SizedBox(height: 16),
              BuildLivroCard(
                  tittle: 'Trono de vidro',
                  image: Image.asset(
                    'images/book2.jpg',
                    width: 150,
                    height: 250,
                    fit: BoxFit.cover,
                  )),
              const SizedBox(height: 16),
              BuildListView(),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  BuildListView() {
    return FutureBuilder<List<PacoteLivro>>(
        future: lista,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // ?? -> Verificar ser o conteudo de snapshot.data é nulo
            List<PacoteLivro> lista = snapshot.data ?? [];

            return ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: lista.length,
                itemBuilder: (BuildContext context, int index) {
                  return CardPacoteLivros(pacoteLivros: lista[index]);
                });
          }

          return const Center(child: CircularProgressIndicator());
        });
  }

  BuildLivroCard({
    required String tittle,
    required Image image,
  }) {
    return InkWell(
      onTap: () {},
      child: Card(
        color: const Color(0xFFF25E7A),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            const ClipRRect(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    tittle,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      image,
                      const SizedBox(width: 8),
                      const Expanded(
                        child: Text(
                          'Às vésperas de seu aniversário de quinze anos, Sofia Amundsen começa a receber bilhetes e cartões-postais bastante estranhos. Os bilhetes são anônimos e perguntam a Sofia quem é ela e de onde vem o mundo. Os postais são enviados do Líbano, por um major desconhecido, para uma certa Hilde Møller Knag, garota a quem Sofia também não conhece. O mistério dos bilhetes e dos postais é o ponto de partida deste romance fascinante, que vem conquistando milhões de leitores em todos os países e já vendeu mais de 1 milhão de exemplares só no Brasil. De capítulo em capítulo, de “lição” em “lição”, o leitor é convidado a percorrer toda a história da filosofia ocidental, ao mesmo tempo que se vê envolvido por um thriller que toma um rumo surpreendente.',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              activeColor: Colors.grey,
              checkColor: Colors.white,
              value: value,
              title: Text(
                'Leitura concluída',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
              onChanged: (value) => setState(() => this.value = value!),
            ),
          ],
        ),
      ),
    );
  }

  /*void moreInformations() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return TelaPrincipalPage(nomeUsuario: widget.nomeUsuario);
        },
      ),
    );
  }*/
}
