import 'package:asapp/pages/app/aboutus_page.dart';
import 'package:asapp/pages/pacote_telaPrincipal.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../domain/store.dart';
import '../../data/dao/store_dao.dart';
import '../../widget/store_card.dart';

class StorePage extends StatefulWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  Future<List<Store>> lista = StoreDao().listarStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD7525B),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('LOJA ASAPP'),
        backgroundColor: const Color(0xFFDD2E44),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            buildContainerPropaganda(context),
            const SizedBox(height: 16),
            buildListView()
          ],
        ),
      ),
    );
  }

  void goHome() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const TelaPrincipalPage(nomeUsuario: 'USUÁRIO');
        },
      ),
    );
  }

  buildListView() {
    return FutureBuilder<List<Store>>(
      future: lista,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Store> lista = snapshot.data ?? [];
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: lista.length,
            itemBuilder: (BuildContext context, int index) {
              return StoreCard(store: lista[index]);
            },
          );
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }

  buildContainerPropaganda(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white10,
                    image: const DecorationImage(
                        image: NetworkImage(
                          "https://d3ugyf2ht6aenh.cloudfront.net/stores/847/630/products/img_754311-96377accaf512a4a5015979552117808-1024-1024.webp",
                        ),
                        fit: BoxFit.cover),
                  ),
                  width: 400,
                  height: 300,
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Nossa loja física',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 9,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Corre que ta rolando muita promoção',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: ElevatedButton(
                    onPressed: onPressedLocation,
                    child: const Text(
                      'IR PARA',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(primary: Color(0xFFD7525B)),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> onPressedLocation() async {
    final Uri _url = Uri.parse('https://goo.gl/maps/byahaDGYjMr171s7A');

    if (!await launchUrl(
      _url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $_url';
    }
  }
}
