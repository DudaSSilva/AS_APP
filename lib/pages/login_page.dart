import 'package:flutter/material.dart';
import 'package:untitled/pages/pacote_telaPrincipal.dart';
import 'package:untitled/pages/redefinirSenha_page.dart';
//import '../pages/cadastro_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
                    //colocar imagem ao lado do texto
                    Image.asset(
                      "images/logo.png",
                      width: 250,
                      height: 250,
                      fit: BoxFit.fitHeight,
                    ),
                    //Colocar textinho aqui
                    const SizedBox(height: 32),
                    TextFormField(
                      controller: userController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Campo e-mail obrigatório';
                        }
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'E-mail ou usuário',
                      ),
                      cursorColor: Color(0xFFDD2E44),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: passwordController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Campo senha obrigatório';
                        } else if (value.length < 9) {
                          return 'A senha deve conter o mínimo de 8 dígitos';
                        }
                      },
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Senha',
                      ),
                      cursorColor: Color(0xFFDD2E44),
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xFFFFCC99)
                      ),
                      child: const Text(
                        'Esqueci minha senha',
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RedefinirSenhaPage()),
                        );
                      },
                    ),
                    const SizedBox(height: 16),
                    //  ElevatedButton(
                    //  style: ElevatedButton.styleFrom(
                    //      primary: Color(0xFFFFCC99)
                    //  ),
                    //  onPressed: onPressed,
                    //  child: const Padding(
                     //   padding: EdgeInsets.symmetric(vertical: 12.0),
                       // child: Text(
                         // 'ENTRAR',
                         // style: TextStyle(
                           //   fontSize: 21,
                             // fontWeight: FontWeight.w500,
                             // color: Color(0xFFDD2E44)
                       //   ),
                       // ),
                      //),
                    //)
                    Row(
                      //crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                        Expanded(
                          child: ElevatedButton(
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
                        ),
                        IconButton(
                            onPressed: (){},
                            icon: const Icon(
                              Icons.star,
                              color: Color(0xFFDD2E44),
                              size: 50,
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      //crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                        const Text(
                          'Não tem conta?',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 20),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xFFFFCC99)
                            ),
                            child: const Text(
                              'CADASTRE-SE',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFDD2E44),
                              ),
                            ),
                            onPressed: () { },
                          ),
                        ),
                      ],
                    ),
                  ],
               ),
            ),
          ),
        )
      ),
    );
  }

  void onPressed() {
    if (_formKey.currentState!.validate()) {
      String userLogin = "AcademicSyllabus2022";
      String passwordLogin = "ASapp2022";

      String user = userController.text;
      String pwd = passwordController.text;

      if (userLogin == user && passwordLogin == pwd) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) {
                  return const TelaPrincipalPage();
                }
            )
        );
      } else {
        print("Usuário ou senha incorretos. Tente novamente.");
      }
    } else {
      print("Formulário inválido.");
    }
  }

  // void openInstagram() {
  //   const url = 'https://www.instagram.com/academicsyllabus';
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     print("Página não encontrada.");
  //   }
  // }
    
}
