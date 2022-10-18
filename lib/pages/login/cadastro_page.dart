import 'package:asapp/domain/usuario.dart';

import '../../data/dao/usuario_dao.dart';
import '../pacote_telaPrincipal.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({Key? key}) : super(key: key);

  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  TextEditingController userController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFFE8E8),
        body: buildBody(),
      ),
    );
  }

  buildBody() {
    return Padding(
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
              const Text(
                  'CADASTRAR USUÁRIO',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFFDD2E44),
                ),
              ),
              const SizedBox(height: 32),
              TextFormField(
                controller: userController,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Campo usuário obrigatório';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'usuário',
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
                style:
                ElevatedButton.styleFrom(primary: Color(0xFFFFCC99)),
                onPressed: onPressedRegister,
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Text(
                    'CRIAR CONTA GRÁTIS',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFDD2E44)),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  const Text(
                    'Já possui uma conta ASapp??',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xFFDD2E44)),
                      onPressed: onPressedLogin,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
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
    );
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

  // onPressed() async {
  //   if (_formKey.currentState!.validate()) {
  //     String usuarioDigitado = userController.text;
  //     String senhaDigitada = passwordController.text;
  //
  //     Usuario usuario = Usuario(usuario: usuarioDigitado, senha: senhaDigitada);
  //     await UsuarioDao().salvarUser(usuario: usuario);
  //
  //     showSnackBar('Usuário foi salvo com sucesso!');
  //     Navigator.pop(context);
  //
  //   } else {
  //     showSnackBar("Erro na validação");
  //   }
  // }

  showSnackBar(String msg) {
    final snackBar = SnackBar(
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.symmetric(
        vertical: 80,
        horizontal: 32,
      ),
      content: Text(msg),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void onPressedRegister() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const TelaPrincipalPage();
        },
      ),
    );
  }
}