import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:online_shop/components/bottom_navbar.dart';
import 'package:online_shop/page/cartPage.dart';
import 'package:online_shop/page/shopPage.dart';


class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {


int _selectedIndex = 0;
void navigateBottomBar(int index){
  setState(() {
    _selectedIndex = index;
  });
}

final List<Widget> _page = [
  const shopPage(),

  const cartPage(),
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
          icon: const Icon(Icons.menu,color: Colors.black),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          }
        
        ),)
      ) ,
    drawer: Drawer(
      backgroundColor: const Color.fromARGB(255, 94, 94, 94),
      child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              DrawerHeader(child: Image.asset('../lib/images/logo.png', color: Color.fromARGB(255, 255, 255, 255),)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Divider(color: Colors.grey,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: ListTile(
              leading: Icon(Icons.home,color: Colors.white,),
              title: Text('Home'),
              textColor: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: ListTile(
              leading: Icon(Icons.info,color: Colors.white,),
              title: Text('About'),
              textColor: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25 , bottom: 9),
            child: ListTile(
              leading: Icon(Icons.logout,color: Colors.white,),
              title: Text('Logout'),
              textColor: Colors.white,
            ),
          )
            ],
          )
        ],
      ),
    ),

    body: _page[_selectedIndex],
    );
  }
}

