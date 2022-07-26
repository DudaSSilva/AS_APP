import 'package:flutter/material.dart';
import 'package:untitled/pages/home_page.dart';
import 'package:untitled/pages/pacote_telaPrincipal.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFFE8E8),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 32),
              Image.asset(
                "imagens/logo.png",
                width: 250,
                height: 250,
                fit: BoxFit.fitHeight,
              ),
              const SizedBox(height: 32),
              TextField(
                controller: userController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'E-mail ou usuário',
                ),
                cursorColor: Color(0xFFDD2E44),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: passwordController,
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
                  onPressed: onPressed,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    child: Text(
                        'Entrar com gitHub',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFDD2E44)
                      ),
                    ),
                  ),
              )
            ],
          ),
        ),
      )
    );
  }

  void onPressed(){
    String userLogin = "AcademicSyllabus2022";
    String passwordLogin = "ASapp2022";

    String user = userController.text;
    String pwd = passwordController.text;

    if(userLogin == user && passwordLogin == pwd){

      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) {
                return const TelaPrincipalPage();
              }
          )
      );

    } else{
      print("Usuário ou senha incorretos. Tente novamente.");
    }
  }
}
