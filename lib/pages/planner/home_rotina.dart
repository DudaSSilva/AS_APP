import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/pages/pacote_telaPrincipal.dart';
import 'package:untitled/pages/planner/semanas.dart';
import '../../models/auxiliar_styles.dart';

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
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Vamos, você consegue!", style: Styles.headLineStyle3,
                            ),
                            SizedBox(height:5),
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
                    ),
                    SizedBox(height: 25,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFF4F6FD),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12,),
                      child: Row(
                        children: [
                          const Icon(FluentSystemIcons.ic_fluent_paint_brush_regular, color: Colors.amber),
                          Text(
                            "Não pare até se orgulhar",
                            style: Styles.headLineStyle4,
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Minha semana", style: Styles.headLineStyle2,),
                        InkWell(
                            onTap: (){
                              print("You are Tapped");
                            },
                            child: Text("ver tudo", style: Styles.textStyle.copyWith(color: Styles.primaryColor),)),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 15,),
          Semanas(),
        ],
      ),
    );
  }
}