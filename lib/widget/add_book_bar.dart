import 'package:asapp/models/auxiliar_styles.dart';
import 'package:asapp/widget/input_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class AddBookPage extends StatefulWidget {
  const AddBookPage({Key? key}) : super(key: key);

  @override
  State<AddBookPage> createState() => _AddBookPageState();
}

class _AddBookPageState extends State<AddBookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      appBar: _appBar(context),
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Add book",
                style: Styles.headLineStyle,
              ),
              MyInputField(title: "title", hint: "Enter your title"),
              MyInputField(title: "note", hint: "Enter your note"),
              MyInputField(title: "Date", hint: "01/01/2022"),
            ],
          ),
        ),
      ),
    );
  }
  _appBar(BuildContext context){
    return AppBar(
      elevation:  0,
      backgroundColor: context.theme.backgroundColor,
      leading: GestureDetector(
        onTap: (){
          Get.back();
        },
        child: Icon(Icons.arrow_back_ios,
            size: 20,
            color: Get.isDarkMode ? Colors.white: Colors.black
        ),
      ),
      actions: [
        CircleAvatar(
          backgroundImage: AssetImage(
              "images/perfil.png"
          ),
        ),
        SizedBox(width: 20,),
      ],
    );
  }
}