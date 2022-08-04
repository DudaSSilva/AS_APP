import 'package:flutter/material.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({Key? key}) : super(key: key);

  @override
  _PerfilPageState createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFE8E8),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('PERFIL DE USUÁRIO'),
        backgroundColor: const Color(0xFFDD2E44),
      ),
      body: BuildBody(),
    );
  }

  BuildBody() {
    return ListView(
      children: [
        Container(
          height: 300,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/perfilWallpaper.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/perfil.png")
                  )
                ),
              )
            ],
          ),
        ),
        Image.asset(
          "images/perfil.png",
          width: 200,
          height: 200,
          fit: BoxFit.fitHeight,
        ),
        const SizedBox(height: 16),
        const Text(
          'Nome do usuário',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            color: Color(0xFFDD2E44),
          ),
        ),
      ],
    );
  }
}
