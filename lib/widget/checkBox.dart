import 'package:flutter/material.dart';
import '../models/checkboxModel.dart';

class CheckboxWidget extends StatefulWidget {
  final CheckBoxModel item;

  const CheckboxWidget({ Key? key, required this.item }) : super(key: key);

  @override
  _CheckboxWidgetState createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(widget.item.texto),
      value: widget.item.checked,
      onChanged: (bool? value){
        setState((){
          widget.item.checked = value!;
        });
      },
    );
  }
}