import 'package:asapp/pages/planner/conquistas.dart';
import 'package:flutter/material.dart';

class Store {
  late final String image;
  late final String title;
  late final String price;
  late final Widget page;

  Store({
    required this.image,
    required this.title,
    required this.price,
    required this.page,
  });

  Map<String, Object?> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['image'] = image;
    data['title'] = title;
    data['price'] = price;
    data['page'] = page;

    return data;
  }

  Store.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    price = json['price'];
    image = json['image'];
    page = _gerarPagina(json['page']);
  }

  Widget _gerarPagina(String nomePagina) {
    switch (nomePagina) {
      case 'Conteudoc()':
        return Conquistas();

      case 'QuestPage()':
        return Conquistas();

      case 'FlashCitologia()':
        return Conquistas();

      default:
        return Conquistas();
    }
  }
}