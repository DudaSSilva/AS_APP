class FlashCardClass {
  //late String image;
  late String text;
  late String title;
 // late int cor;

  FlashCardClass({
    //required this.image,
    required this.text,
    required this.title,
   // required this.cor,
  });

  FlashCardClass.fromJson(Map<String, dynamic> json) {
    //image = json['image'];
    text = json['text'];
    title = json['title'];
    //cor = int.parse(json['cor']);

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
   // data['image'] = this.image;
    data['text'] = this.text;
    data['title'] = this.title;
    //data['cor'] = cor.toString();
    return data;
  }
}