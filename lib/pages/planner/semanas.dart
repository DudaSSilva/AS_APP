import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/models/app_layout.dart';
import 'package:untitled/models/auxiliar_styles.dart';

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
      width: size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left:16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
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
                      const Spacer(),
                      Text("05/09/2022", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}