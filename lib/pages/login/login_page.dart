import 'package:flutter/material.dart';
import '../../data/dao/usuario_dao.dart';
import '../../data/shared_prefs_helper.dart';
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
                    controller: userController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Campo usuario obrigatório';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      icon: Icon(
                        Icons.account_box,
                        color: Color(0xFFDD2E44),
                      ),
                      labelText: 'USUÁRIO',
                      labelStyle: TextStyle(
                        color: Color(0xFFDD2E44),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFDD2E44),
                        ),
                      ),
                    ),
                    cursorColor: const Color(0xFFDD2E44),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: passwordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Campo senha obrigatório';
                      } else if (value.length < 9) {
                        return 'A senha deve conter o mínimo de 8 dígitos';
                      }
                      return null;
                    },
                    obscureText: true,
                    decoration: const InputDecoration(
                      icon: Icon(
                        Icons.lock,
                        color: Color(0xFFDD2E44),
                      ),
                      labelText: 'SENHA',
                      labelStyle: TextStyle(
                        color: Color(0xFFDD2E44),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFDD2E44),
                        ),
                      ),
                    ),
                    cursorColor: const Color(0xFFDD2E44),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFFFFCC99)),
                        onPressed: onPressedLogin,
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 24.0),
                          child: Text(
                            'ENTRAR',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFDD2E44)),
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            shadowColor: Colors.transparent,
                          ),
                          child: const Text(
                            'Esqueci minha senha',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFFDD2E44),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RedefinirSenhaPage()),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Column(
                    children: [
                      const Text(
                        'Não tem conta?',
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(fontSize: 8, fontWeight: FontWeight.bold),
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
                        )),
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
                          padding: const EdgeInsets.all(20),
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
                        )),
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
                          padding: const EdgeInsets.all(20),
                        ),
                        onPressed: openSite,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> onPressedLogin() async {
    if (_formKey.currentState!.validate()) {
      String user = userController.text;
      String pwd = passwordController.text;

      bool resultado = await UsuarioDao().autenticar(user: user, password: pwd);

      if (resultado) {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) {
              return TelaPrincipalPage(nomeUsuario: user);
            },
          ),
          (Route<dynamic> route) => false,
        );
      } else {
        final msg = SnackBar(
          behavior: SnackBarBehavior.floating,
          content: Text('Usuário ou senha incorretos'),
        );
        ScaffoldMessenger.of(context).showSnackBar(msg);
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
    final Uri _url =
        Uri.parse('https://academicsillabussite--eduardasoares1.repl.co/');

    if (!await launchUrl(
      _url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $_url';
    }
  }
}
