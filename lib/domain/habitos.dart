import 'package:flutter/cupertino.dart';

class PacoteImages {
  late final String URL;
  // late final String images2;
  // late final String images3;
  // late final String images4;


  PacoteImages({
    required this.URL,
    // required this.images2,
    // required this.images3,
    // required this.images4,
  });

  Map<String, Object?> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['URL'] = URL;
    // data['images2'] = images2;
    // data['images3'] = images3;
    // data['images4'] = images4;


    return data;
  }

  PacoteImages.fromJson(Map<String, dynamic> json) {
    URL = json['URL'];
    // images2 = json['images2'];
    // images3 = json['images3'];
    // images4= json['images4'];

  }
}
