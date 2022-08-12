import 'package:flutter/material.dart';
import 'package:untitled/pages/pacote_telaPrincipal.dart';

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
        toolbarHeight: 64,
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return TelaPrincipalPage();
                  },
                ),
              );
            },
          ),
          // add more IconButton
        ],
      ),
      body: BuildBody(),
    );
  }

  BuildBody() {
    return ListView(
      children: [
        Container(
          height: 300,
          padding: EdgeInsets.only(bottom: 20),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/perfilWallpaper.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage("images/perfil.png"),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                margin: const EdgeInsets.only(bottom: 10),
              ),
              const Text(
                'NOME DO USUÁRIO',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  //color: Color(0xFFFFE8E8),
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              // controller: userNameController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Campo habito obrigatório';
                }
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nome de usuário...',
              ),
              cursorColor: Color(0xFFDD2E44),
            ),
            const SizedBox(height: 16),
            TextFormField(
              // controller: userNameController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Campo email obrigatório';
                }
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email...',
              ),
              cursorColor: Color(0xFFDD2E44),
            ),
            const SizedBox(height: 16),
            TextFormField(
              // controller: userNameController,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Campo senha obrigatório';
                }
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Senha...',
              ),
              cursorColor: Color(0xFFDD2E44),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: (){},
              child: const Text(
                'CONQUISTAS',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFFFE8E8),
                  fontSize: 20,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFFF25E7A),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),

            ElevatedButton(
              onPressed: (){},
              child: const Text(
                'CONFIGURAÇÕES',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFFFE8E8),
                  fontSize: 20,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFFF25E7A),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
