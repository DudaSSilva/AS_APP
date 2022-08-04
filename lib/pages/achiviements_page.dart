import 'package:flutter/material.dart';

class AchiviementsPage extends StatefulWidget {
  const AchiviementsPage({Key? key}) : super(key: key);

  @override
  _AchiviementsPageState createState() => _AchiviementsPageState();
}


class _AchiviementsPageState extends State<AchiviementsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFE8E8),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('CONQUISTAS'),
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
                  'CONQUISTAS',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 50,
                    color: Color(0xFFDD2E44),
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
