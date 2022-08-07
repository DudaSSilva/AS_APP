import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}


class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFE8E8),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('CONFIGURAÇÕES'),
        backgroundColor: const Color(0xFFDD2E44),
      ),
      body: BuildBody(),

    );
  }

  BuildBody(){
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView(
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  'Esta tela ainda não foi desenvolvida.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          )
        ],
      )
    );
  }
}
