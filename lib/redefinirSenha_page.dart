import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:untitled/pages/validacao_page.dart';
import 'package:untitled/pages/cadastro_page.dart';
import 'package:untitled/pages/login_page.dart';

class RedefinirSenhaPage extends StatefulWidget {
  const RedefinirSenhaPage({Key? key}) : super(key: key);

  @override
  _RedefinirSenhaPageState createState() => _RedefinirSenhaPageState();
}

class _RedefinirSenhaPageState extends State<RedefinirSenhaPage> {
  TextEditingController userEmailController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xFFFFE8E8),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 32),
                    //Image.asset(
                      //"images/logo.png",
                      //width: 250,
                      //height: 250,
                      //fit: BoxFit.fitHeight,
                    //),
                    Row(
                      children: [
                        Image.asset(
                          "images/book.png",
                          width: 250,
                          height: 250,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          const Text(
                            'RECUPERAR SENHA',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 50,
                                color: Color(0xFFDD2E44),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 32),
                    //Colocar textinho aqui
                    const Text(
                      'Insira o email da sua conta Academic Syllabus para recuperar sua senha.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 24),
                    TextFormField(
                      controller: userEmailController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Campo e-mail obrigatório';
                        }
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'E-mail',
                      ),
                      cursorColor: Color(0xFFDD2E44),
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xFFFFCC99)
                      ),
                      onPressed: onPressed,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 12.0),
                        child: Text(
                          'ENTRAR',
                          style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFDD2E44)
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      children: [
                        Text(
                          'Já possui uma conta ASapp??',
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 8),
                        Expanded(
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xFFFFCC99)
                            ),
                            onPressed: onPressedLogin,
                            child: const Padding(
                             padding: EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                'LOGIN',
                               style: TextStyle(
                                    //fontSize: 21,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFDD2E44)
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Row(
                    //Colocar textFild "não tem conta?" e botão de cadastre-se
                      children: [
                        Text(
                          'Não tem conta?',
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 8),
                        Expanded(
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xFFFFCC99)
                            ),
                            onPressed: onPressedCadastro,
                            child: const Padding(
                             padding: EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                'CADASRE-SE',
                                 style: TextStyle(
                                    //fontSize: 21,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFDD2E44)
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
               ),
            ),
          ),
        )
    );
  }

  void onPressed() {
    if (_formKey.currentState!.validate()) {
      String userEmail = "academicsyllabus2022@gmail.com";

      String email = userEmailController.text;

      if (userEmail == email) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) {
                  return const Validacao();
                }
            )
        );
      } else {
        print("Email incorreto. Tente novamente.");
      }
    } else {
      print("Formulário inválido.");
    }
  }
      
  void onPressedLogin() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const LoginPage();
        },
      ),
    );
  }
      
  void onPressedCadastro() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const CadastroPage();
        },
      ),
    );
  }
    
}
