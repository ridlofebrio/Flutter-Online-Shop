import 'package:flutter/material.dart';
import 'package:online_shop/page/homePage.dart';

class introPage extends StatelessWidget {
  const introPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(

       child: Padding(
         padding: const EdgeInsets.all(0.10),
         child: Column 
         (children: [       
            //Logo
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Image.asset('../lib/images/logo.png',
          width: 400,
           height: 300,
            ),
            ),
          
          
          const SizedBox(height: 40,),
       
            // Title
          Padding(
            padding: const EdgeInsets.all(13.10),
            child: Text(
              'More than Just',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
             
              
              ),
            ),
          ),
            //Sub Title
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
            //Start Button
          GestureDetector(
            onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context) => homePage()),),
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 78, 78, 78)
                ,borderRadius: BorderRadius.circular(6)
              ),
              padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
              child: const Text('Shop Now',
              style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 13,
              ),
              
              ),
            ),
          )
             
         
       ]),
      )
      
    ));
    
  }
}