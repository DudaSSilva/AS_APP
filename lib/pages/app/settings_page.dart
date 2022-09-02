import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}


class _SettingsPageState extends State<SettingsPage> {
  //String selectedTheme;

  @override
  Widget build(BuildContext context) {
    // setState((){
    //   if (Theme.of(context).brightness == Brightness.dark){
    //     selectedTheme = 'dark';
    //   } else {
    //     selectedTheme = 'light';
    //   }
    // });

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
                // buildCardWidget()
              ],
            ),
          )
        ],
      )
    );
  }

  buildCardWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Tema',
          style: TextStyle(fontSize: 24),
        ),
        Container(
          height: 20,
        ),
        /*Row(
          children: [
            Radio(
              value: 'light',
              groupValue: selectedTheme,
              onChanged: themeSelection,
            ),
            const Text(
              'Modo claro',
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
        Row(
          children: [
            Radio(
              value: 'dark',
              groupValue: selectedTheme,
              onChanged: themeSelection,
            ),
            const Text(
              'Modo escuro',
              style: TextStyle(fontSize: 18),
            )
          ],
        )*/
      ],
    );
  }

  // void themeSelection(String value) {
  //   setState((){
  //     selectedTheme = value;
  //   });
  //   if (value == 'light') {
  //     widget.changeTheme(Brightness.light);
  //   } else {
  //     widget.changeTheme(Brightness.dark);
  //   }
  //   setThemeinSharedPref(value);
  // }
}
