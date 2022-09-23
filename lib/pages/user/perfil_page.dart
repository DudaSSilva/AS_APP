import 'dart:io';
import 'package:flutter/material.dart';
import 'package:untitled/pages/victorys/pacote_conquista.dart';
import '../pacote_telaPrincipal.dart';
import '../app/settings_page.dart';
import 'package:image_picker/image_picker.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({Key? key}) : super(key: key);

  @override
  _PerfilPageState createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  File? _image;

  Future getImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return;

    final imageTemporary = File(image.path);

    setState(() {
      this._image = imageTemporary;
    });
  }

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
                    return const TelaPrincipalPage();
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
          padding: const EdgeInsets.only(bottom: 20),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/perfilWallpaper.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: getImage,
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.white60,
                    borderRadius: BorderRadius.circular(1000),
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        child: Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: const Color(0xFFFFE8E8),
                          ),
                          child: _image != null
                              ? Image.file(_image!, fit: BoxFit.cover)
                              : const Center(
                            child: Icon(
                              Icons.face_retouching_natural,
                              size: 100,
                              color: Color(0xFFDD2E44),
                            ),
                          ),
                          //child: Text('Adicionar imagem'),
                        ),
                        borderRadius: BorderRadius.circular(150),
                      ),
                    ],
                  ),
                  //margin: const EdgeInsets.only(bottom: 10),
                ),
              ),
              const Text(
                'NOME DO USUÁRIO',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  //color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 32),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
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
                onPressed: onPressedAchiviements,
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
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: onPressedSettings,
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
              ),
            ],
          ),
        ),
      ],
    );
  }

  void onPressedSettings() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return const SettingsPage();
      }),
    );
  }

  void onPressedAchiviements() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return const PacoteConquista();
      }),
    );
  }
}