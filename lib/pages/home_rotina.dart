import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/pages/pacote_telaPrincipal.dart';
import '../models/auxiliar_styles.dart';

class HomeRotina extends StatefulWidget {
  const HomeRotina({Key? key}) : super(key: key);

  @override
  State<HomeRotina> createState() => _HomeRotinaState();
}

class _HomeRotinaState extends State<HomeRotina> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Column(
            children: [
              Container(
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
                          return const TelaPrincipalPage();
                        },
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 8),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Vamos, você consegue!", style: Styles.headLineStyle3,
                            ),
                            Text(
                              "Planejamento semanal",style: Styles.headLineStyle,
                            ),
                          ],
                        ),

                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image: AssetImage(
                                      "images/figuraR.png"
                                  )
                              )
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
