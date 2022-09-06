import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/models/app_layout.dart';
import 'package:untitled/models/auxiliar_styles.dart';
import 'package:untitled/widget/pacote_semanas_card.dart';

class Semanas extends StatefulWidget {
  const Semanas({Key? key}) : super(key: key);

  @override
  State<Semanas> createState() => _SemanasState();
}

class _SemanasState extends State<Semanas> {
  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right:16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //primeiro container
            Container(
              decoration: const BoxDecoration(
                color: const Color(0xFFFFCC99),
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(21),
                    topRight: Radius.circular(21)),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(

                children: [

                  Row(
                    children: [
                      Text("Segunda-feira", style: Styles.headLineStyle3.copyWith(color: Colors.white),),

                      Expanded(child: Container()),
                      PacoteSemanascard(),
                      Expanded(child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: LayoutBuilder(

                              builder: (BuildContext context, BoxConstraints constraints) {
                                print("the widget is ${constraints.constrainWidth()}");
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate((constraints.constrainWidth()/6).floor(), (index) => SizedBox(
                                    width: 3, height: 1, child: DecoratedBox(decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),),
                                  )),
                                );
                              },

                            ),
                          ),
                          Center(child: Transform.rotate(angle: 0, child:  Icon(Icons.calendar_today_outlined, color: Colors.white),)),

                        ],
                      )),
                      PacoteSemanascard(),
                      Expanded(child: Container()),

                      Text("05/09/2022", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                    ],
                  ),
                ],
              ),
            ),
            //container 'intermediário' laranja
            Container(
              color: Colors.orangeAccent,
              child: Row(
                children: [
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )
                      ),
                    ),
                  ),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LayoutBuilder(
                      builder: (BuildContext context, BoxConstraints constraints){
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate((constraints.constrainWidth()/15).floor(), (index) => SizedBox(
                            width: 5, height: 1,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                            ),
                          )),
                        );
                      },
                    ),
                  )),
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // container de baixo
            Container(
              decoration: const BoxDecoration(
                color: Colors.orange,
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21)),
              ),
              padding: const EdgeInsets.only(left:16, top:10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Matérias a estudar: ",
                          style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                          //const Spacer(),
                          Text("Física e Filosofia",
                          style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Lembrete: ",
                            style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                          //const Spacer(),
                          Text("Terminar PRMO",
                            style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}