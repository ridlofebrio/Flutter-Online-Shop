import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:klone/Components/cart.dart';
import 'package:provider/provider.dart';
import 'shoes.dart';
import '../models/Shoe.dart';

class shopPage extends StatefulWidget {
  @override
  State<shopPage> createState() => _shopPageState();
}

class _shopPageState extends State<shopPage> {
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Succesfully Added'),
              content: Text('check your cart'),
            ));
  }

  List<Shoe> baru = [
    Shoe(
        name: 'Zoom Freak',
        price: '236',
        description:
            'the forward thingking design of his lates signature shoe.',
        imagePath: 'images/pngwing.png'),
    Shoe(
        name: 'uji coba',
        price: '236',
        description:
            'the forward thingking design of his lates signature shoe.',
        imagePath: 'images/GTX1650.jpg'),
    Shoe(
        name: 'Zoom Freak',
        price: '236',
        description:
            'the forward thingking design of his lates signature shoe.',
        imagePath: 'images/Threadripper.jpg'),
    Shoe(
        name: 'Zoom Freak',
        price: '236',
        description:
            'the forward thingking design of his lates signature shoe.',
        imagePath: 'images/watercolling.jpg'),
  ];

  void updateList(String value) {
    setState(() {
      baru = Provider.of<Cart>(context, listen: false)
          .shoeShop
          .where((element) =>
              element.name!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(
              horizontal: 25,
            ),
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(8)),
            child: TextField(
              onChanged: (value) => updateList(value),
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                hintText: "Find Product",
                prefixIcon: Icon(Icons.search),
                prefixIconColor: Colors.grey.shade900,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: Text(
              'Everyone Flies.. some fly longer than others',
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Hot Picks ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: baru.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  Shoe shoe = baru.elementAt(index);
                  return vgaTile(
                    shoe: shoe,
                    tap: () => addShoeToCart(shoe),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
