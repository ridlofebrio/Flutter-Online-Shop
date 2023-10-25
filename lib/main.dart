import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Components/intro.dart';
import './Components/cart.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: introApp(),
      ),
    );
  }
}
