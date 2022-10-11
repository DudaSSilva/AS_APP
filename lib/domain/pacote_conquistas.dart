
import 'package:flutter/cupertino.dart';

class PacoteConquistas {
  late final String title;
  late final String text;

  PacoteConquistas({
    required this.title,
    required this.text,
  });

  Map<String, Object?> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['title'] = title;
    data['text'] = text;

    return data;
  }

  PacoteConquistas.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    text = json['text'];

  }
}