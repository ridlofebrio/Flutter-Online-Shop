import 'package:flutter/cupertino.dart';
import 'package:klone/models/Shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom Freak',
        price: '236',
        description:
            'the forward thingking design of his lates signature shoe.',
        imagePath: 'images/pngwing.png'),
    Shoe(
        name: 'Zoom Freak',
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

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe soe) {
    userCart.add(soe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe soe) {
    userCart.remove(soe);
    notifyListeners();
  }
}
