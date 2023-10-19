import 'package:flutter/material.dart';
import 'package:online_shop/components/ItemTile.dart';
import 'package:online_shop/models/component.dart';


class shopPage extends StatefulWidget {
  const shopPage({super.key});

  @override
  State<shopPage> createState() => _shopPageState();
}

class _shopPageState extends State<shopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
         
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Search", style: TextStyle(color: Colors.grey))
              ,Icon(Icons.search, color: Colors.grey )
            ],
          ),   
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text('Make Your Dream Come True With Us',style:TextStyle(color:Color.fromARGB(255, 94, 94, 94) ),),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10 ,vertical: 10),
          child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Hot Picks 🔥', style: TextStyle(fontWeight: FontWeight.bold),),
            Text('See All' ,style: TextStyle(color: Colors.blue),)
          ],),
        ),
        const SizedBox(height: 10,),
        Expanded(child: ListView.builder(itemBuilder: (context, index){
          components item = components(name: 'GTX 1650', image: '../lib/images/GTX1650.jpg', price: '2.500.000', description: 'VGA entry level class');
          return ItemTile(
             item: item,
          );
            }
          )
        ),
      ],
    );   
  }
}