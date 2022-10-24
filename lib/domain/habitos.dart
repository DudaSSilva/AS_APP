import 'package:flutter/cupertino.dart';

class PacoteImages {
  late String URL;

  PacoteImages({
    required this.URL,
  });

  Map<String, Object?> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['URL'] = URL;

    return data;
  }

  PacoteImages.fromJson(Map<String, dynamic> json) {
    URL = json['URL'];

  }
}
