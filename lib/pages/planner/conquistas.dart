import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/models/app_layout.dart';

import '../../models/auxiliar_styles.dart';
class Conquistas extends StatefulWidget {
  const Conquistas({Key? key}) : super(key: key);

  @override
  State<Conquistas> createState() => _ConquistasState();
}

class _ConquistasState extends State<Conquistas> {
  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return Container(
      width: size.width*0.9,
      height:280,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
        color: Colors.purple[100],
          borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.deepPurpleAccent,
            blurRadius: 2,
            spreadRadius: 1,
          )
        ]
      ),
      child: Column(
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.purple[200],

              image: DecorationImage(
                //fit: BoxFit.cover,
                image: AssetImage(
                  "images/meta.png"
                )
              )
            ),
          ),
          SizedBox(height: 15,),
          Text(
            "Desafie a si mesmo!",
            style: Styles.headLineStyle2.copyWith(color: Colors.purple[900]),
          )
        ],
      ),
    );
  }
}
