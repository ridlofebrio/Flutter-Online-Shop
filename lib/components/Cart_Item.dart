import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:klone/Components/cart.dart';
import 'package:klone/models/Shoe.dart';
import 'package:provider/provider.dart';

class cardItem extends StatefulWidget {
  cardItem({super.key, required this.shoe});

  Shoe shoe;

  @override
  State<cardItem> createState() => _cardItem();
}

class _cardItem extends State<cardItem> {
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(
          widget.shoe.imagePath,
        ),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing:
            IconButton(icon: Icon(Icons.delete), onPressed: removeItemFromCart),
      ),
    );
  }
}
