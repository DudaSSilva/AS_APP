import 'package:flutter/material.dart';

import '../domain/store.dart';

class StoreCard extends StatefulWidget {
  final Store store;

  const StoreCard({
    Key? key,
    required this.store,
  }) : super(key: key);

  @override
  State<StoreCard> createState() => _StoreCardState();
}

class _StoreCardState extends State<StoreCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child:  Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Color(0xFF015958),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 12,
                  width: MediaQuery.of(context).size.width / 6,
                  decoration: BoxDecoration(
                    color: Color(0xFF014957),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(45),
                      bottomLeft: Radius.circular(30),
                    ),
                  ),
                  child: Icon(
                    Icons.add,
                    size: 25,
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 1),
              child: Image.network(widget.store.image),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 10),
              child: Container(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.store.title,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 10, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "R\$ "+widget.store.price,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Por Unid.",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.grey[300]),
                      ),
                    ],
                  ),
                  Text(
                    "Visualizar Item",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}