import 'package:flutter/material.dart';
import 'package:klone/Components/homePage.dart';

class introApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(0.10),
          child: Column(children: [
            Padding(
              padding: EdgeInsets.all(25),
              child: Image.asset(
                'images/logo.png',
                width: 400,
                height: 300,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.all(13.10),
              child: Text(
                'More Than Just',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 80,
              child: Text(
                'Easy Way to Looks Something Good with All Premium and Original Product',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
              ),
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 78, 78, 78),
                    borderRadius: BorderRadius.circular(6)),
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                child: Text(
                  'Shop Now',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
