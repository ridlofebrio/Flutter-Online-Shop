import 'package:flutter/cupertino.dart';
import 'package:klone/Components/cart.dart';
import 'package:klone/models/Shoe.dart';
import 'package:provider/provider.dart';
import 'Cart_Item.dart';

class cartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            Text(
              'My Cart',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: ListView.builder(
              itemCount: value.getUserCart().length,
              itemBuilder: (context, index) {
                Shoe individualShoe = value.getUserCart()[index];
                return cardItem(
                  shoe: individualShoe,
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
