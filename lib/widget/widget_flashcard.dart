import 'package:asapp/domain/flashcard.dart';
import 'package:flash_card/flash_card.dart';
import 'package:flutter/material.dart';

class WidgetFlashCard extends StatefulWidget {
  final FlashCardClass flashCardClass;

  const WidgetFlashCard({
    Key? key,
    required this.flashCardClass,
  }) : super(key: key);

  @override
  _WidgetFlashCardState createState() => _WidgetFlashCardState();
}

class _WidgetFlashCardState extends State<WidgetFlashCard> {
  FlashCardClass get pacote => widget.flashCardClass;

  @override
  Widget build(BuildContext context) {
    return FlashCard(
      frontWidget: Container(
          height: 100,
          width: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text.rich(
                  TextSpan(
                    text: pacote.text,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
              Image.network(
                'https://fn.vinhphuc.edu.vn/UploadImages/mnhoanglau/admin/anh%20nha.jpg?w=700',
                width: 30,
                height: 30,
              ),
            ],
          )),
      backWidget: Container(
        height: 100,
        width: 100,
        child: Center(
          child: Text(
            pacote.title.toUpperCase(),
            style: const TextStyle(
                color: Colors.deepPurple,
                fontSize: 30,
                fontWeight: FontWeight.w900),
          ),
        ),
      ),
      width: 300,
      height: 400,
    );
  }
}
