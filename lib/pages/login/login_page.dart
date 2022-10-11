import 'package:flutter/material.dart';
//import { mdiInstagram } from '@mdi/js';
import '../../data/dataSimulatory/bdUsuarios.dart';
import '../../domain/usuario.dart';
import 'cadastro_page.dart';
import '../pacote_telaPrincipal.dart';
import 'redefinirSenha_page.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _formKey = GlobalKey<FormState>();

  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _userController = TextEditingController();
  final _passController = TextEditingController();

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
                    Image.asset(
                      "images/logo.png",
                      width: 200,
                      height: 200,
                      fit: BoxFit.fitHeight,
                    ),
                    const SizedBox(height: 32),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      controller: _userController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Campo usuario obrigatório';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'E-mail ou usuário',
                      ),
                      cursorColor: Color(0xFFDD2E44),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      controller: _passController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Campo senha obrigatório';
                        } else if (value.length < 9) {
                          return 'A senha deve conter o mínimo de 8 dígitos';
                        }
                        return null;
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
                        primary: Color(0xFFDD2E44),
                        padding: EdgeInsets.all(0),
                      ),
                      child: const Text(
                        'Esqueci minha senha',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RedefinirSenhaPage()),
                        );
                      },
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      style:
                      ElevatedButton.styleFrom(primary: Color(0xFFFFCC99)),
                      onPressed: onPressedLogin,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 12.0),
                        child: Text(
                          'ENTRAR',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFDD2E44)),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Column(
                      children: [
                        const Text(
                          'Não tem conta?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 8, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            shadowColor: Colors.transparent,
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
                          onPressed: onPressedCadastro,
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Container(
                      height: 60,
                      width: 380,
                      alignment: Alignment.centerLeft,
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [0.3, 1],
                            colors: [
                              Color(0xFFDD2E44),
                              Color(0xFFF58524),
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(80),
                          )
                      ),
                      child: SizedBox.expand(
                        child: TextButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              SizedBox(
                                child: Image.asset(
                                  "images/instagram.png",
                                  width: 28,
                                  height: 28,
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                              const Text(
                                "SIGA-NOS NO INSTAGRAM",
                                style: TextStyle(
                                  //fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(20),
                          ),
                          onPressed: openInstagram,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      height: 60,
                      width: 380,
                      alignment: Alignment.centerLeft,
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [0.3, 1],
                            colors: [
                              Color(0xFFDD2E44),
                              Color(0xFFF58524),
                            ],
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(80),
                          )
                      ),
                      child: SizedBox.expand(
                        child: TextButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              SizedBox(
                                child: Image.asset(
                                  "images/web.png",
                                  width: 28,
                                  height: 28,
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                              const Text(
                                "CONFIRA NOSSO SITE",
                                style: TextStyle(
                                  //fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(20),
                          ),
                          onPressed: openSite,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }

  onPressedLogin() {
    if (_formKey.currentState!.validate()) {
      List<Usuario> listaUsuario = BD.lista;
      String user = _userController.text;
      String pass = _passController.text;
      bool auth = false;

      //bool resultado = await

      // Verificando usuarios
      for (Usuario usuario in listaUsuario) {
        //Checando email e senha
        if (usuario.usuario == user && usuario.senha == pass) {
          auth = true;
        }
      }

      if (auth) {
        // Push para pag de login
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const TelaPrincipalPage();
            },
          ),
        );
      } else {
        // Mostrar a mensagem de erro
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Usuario e/ou senha incorretos"),
          ),
        );
      }
    }
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

  Future<void> openInstagram() async {
    final Uri _url = Uri.parse('https://www.instagram.com/academicsyllabus/');

    if (!await launchUrl(
      _url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $_url';
    }
  }

  Future<void> openSite() async {
    final Uri _url = Uri.parse('https://academicsillabussite--eduardasoares1.repl.co/');

    if (!await launchUrl(
      _url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $_url';
    }
  }
}