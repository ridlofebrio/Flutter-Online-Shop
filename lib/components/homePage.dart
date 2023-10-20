import 'package:flutter/material.dart';
import 'ButtonNavbar.dart';
import 'cart.dart';
import 'shop.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _homePageState();
}

class _homePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> page = [
    shopPage(),
    cartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        bottomNavigationBar: MyButtonNavBar(
          onTabChange: (index) => navigateBottomBar(index),
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Builder(
              builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(
                    Icons.menu,
                    color: Colors.black,
                  ))),
        ),
        drawer: Drawer(
          backgroundColor: Color.fromARGB(255, 94, 94, 94),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  DrawerHeader(
                    child: Image.asset('images/logo.png',
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: ListTile(
                      leading: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      title: Text('Home'),
                      textColor: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: ListTile(
                      leading: Icon(
                        Icons.info,
                        color: Colors.white,
                      ),
                      title: Text('About'),
                      textColor: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25, bottom: 9),
                    child: ListTile(
                      leading: Icon(Icons.logout, color: Colors.white),
                      title: Text('Logout'),
                      textColor: Colors.white,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        body: page[_selectedIndex]);
  }
}
