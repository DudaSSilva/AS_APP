import 'package:asapp/pages/timer/cronometro.dart';
import 'package:asapp/pages/timer/graphic.dart';
import 'package:asapp/widget/widget_flashcard_habit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../data/dao/images_dao.dart';
import '../../domain/habitos.dart';
import '../../pages/add/pacote_adicionarHabito.dart';
import '../../domain/pacote_planejamento.dart';
import '../pacote_telaPrincipal.dart';

class PacoteHabitos extends StatefulWidget {
  final PacotePlanejamento pacotePlanejamento;
  final String nomeUsuario;

  const PacoteHabitos({
    Key? key,
    required this.pacotePlanejamento,
    required this.nomeUsuario,
  }) : super(key: key);

  @override
  _PacoteHabitosState createState() => _PacoteHabitosState();
}

class _PacoteHabitosState extends State<PacoteHabitos> {

  PacotePlanejamento get pacote => widget.pacotePlanejamento;
  Future<List<PacoteImages>> lista = ImagesDao().listarHabitos();

  int _selectedIndex = 0;
  late List<Widget> pages;
  
  @override
  void initState() {
    super.initState();
    pages = [
      buildHomePageHabit(),
      Cronometro(),
      Graphic(key: ObjectKey(_selectedIndex)),
    ];
  }

  void _onItemTapped(int index) {
    _selectedIndex = index;
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFE8E8),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('HABIT TRACKER'),
        backgroundColor: const Color(0xFFF25E7A),
        toolbarHeight: 64,
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return TelaPrincipalPage(nomeUsuario: widget.nomeUsuario);
                  },
                ),
              );
            },
          ),
          // add more IconButton
        ],
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: const Color(0xFF526480),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.watch_later_outlined), label: "Timer"),
          BottomNavigationBarItem(
              icon: Icon(Icons.timeline_sharp), label: "Graphics"),
        ],
      ),
    );
  }

  Widget buildHomePageHabit() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    ElevatedButton.icon(
                      onPressed: onPressedButtonAdd,
                      icon: const Icon(
                        Icons.add_circle,
                        color: Color(0xFFF25E7A),
                      ),
                      label: const Text('Adicionar'),
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFFFCC99),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.remove_circle,
                        color: Colors.red[600],
                      ),
                      label: const Text('Remover'),
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFFFCC99),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    // ElevatedButton.icon(
                    //   onPressed: () {},
                    //   icon: Icon(
                    //     Icons.watch_later_outlined,
                    //     color: Colors.red[600],
                    //   ),
                    //   label: const Text('Remover'),
                    //   style: ElevatedButton.styleFrom(
                    //     primary: const Color(0xFFFFCC99),
                    //     shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(16),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
                const SizedBox(height: 16),
                BuildListView(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void onPressedButtonAdd() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return PacoteAdicionarHabito(nomeUsuario: widget.nomeUsuario);
      }),
    );
  }

  BuildListView() {
    return FutureBuilder<List<PacoteImages>>(
        future: lista,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<PacoteImages> lista = snapshot.data ?? [];

            return ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: lista.length,
                itemBuilder: (BuildContext context, int index) {
                  return WidgetFlashCardHabit(
                      pacoteImages: lista[index],
                      nomeUsuario: widget.nomeUsuario);
                });
          }

          return const Center(child: CircularProgressIndicator());
        });
  }
}
