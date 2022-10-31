import 'package:asapp/models/auxiliar_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyInputField extends StatefulWidget {
  final String title;
  final String hint;
  final TextEditingController? controller;
  final  Widget? widget;
  const MyInputField({Key? key,
  required this.title,
    required this.hint,
    this.controller,
    this.widget,
  }) : super(key: key);

  @override
  State<MyInputField> createState() => _MyInputFieldState();
}

class _MyInputFieldState extends State<MyInputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Column(
        children: [
          Text(
            widget.title,
            style: Styles.headLineStyle4,
          ),
          Container(
            height: 52,
            color: Colors.white,
            width: 300,
          )
        ],
      ),
    );
  }
}
