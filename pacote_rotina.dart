import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/pages/home_rotina.dart';

class PacoteRotina extends StatefulWidget {
  const PacoteRotina({Key? key}) : super(key: key);

  @override
  State<PacoteRotina> createState() => _PacoteRotinaState();
}

class _PacoteRotinaState extends State<PacoteRotina> {
  int _selectedIndex=3;
  static final List<Widget>_widgetOptions = <Widget>[
    HomeRotina(),
    const Text("livros"),
    const Text("linha do tempo"),
    const Text("Conquistas"),
  ];

  void _onItemTapped(int index){
    _selectedIndex=index;
    //print('Tapped index is ${_selectedIndex}');
    setState(() {
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          elevation: 10,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          unselectedItemColor: const Color(0xFF526480),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.book_outlined), label: "Livros"),
            BottomNavigationBarItem(icon: Icon(Icons.timeline_sharp), label: "Linha do tempo"),
            BottomNavigationBarItem(icon: Icon(Icons.redeem_rounded), label: "Conquistas"),
          ],
        ) ,
    );
  }
}
