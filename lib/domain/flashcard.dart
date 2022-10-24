class FlashCardClass {
  late String URL;
  late String text;
  late String title;

  FlashCardClass({
    required this.URL,
    required this.text,
    required this.title,
  });

  FlashCardClass.fromJson(Map<String, dynamic> json) {
    URL = json['URL'];
    text = json['text'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['URL'] = this.URL;
    data['text'] = this.text;
    data['title'] = this.title;
    return data;
  }
}