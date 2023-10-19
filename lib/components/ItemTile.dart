import 'package:flutter/material.dart';
import '../models/component.dart';
class ItemTile extends StatelessWidget {
  components item;
  ItemTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 200,
      decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(10)),
      child: Column(children: [
        Image.asset(item.image),
      ]),
    );
  }
}