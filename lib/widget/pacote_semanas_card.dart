import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PacoteSemanascard extends StatefulWidget {
  const PacoteSemanascard({Key? key}) : super(key: key);

  @override
  State<PacoteSemanascard> createState() => _PacoteSemanascardState();
}

class _PacoteSemanascardState extends State<PacoteSemanascard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 2.5, color: Colors.white),
      ),
    );
  }
}
