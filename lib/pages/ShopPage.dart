import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projekt/pages/Entity/Schuhe.dart';
import 'package:projekt/pages/SchuheTileDialog.dart';

import 'SchuheTile.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

   @override
   Widget build(BuildContext context) {
     final List<Schuhe> shoes = [
       Schuhe("Nike Air Force 1", "€250", "42", "lib/assets/nike4.png", "lib/assets/nike7.png","Classic white sneaker"),
       Schuhe("Adidas Ultra Boost", "€190", "43", "lib/assets/nike5.png","lib/assets/nike6.png","High performance running shoe"),
       Schuhe("Adidas Ultra Boost", "€160", "43", "lib/assets/nike2.png", "lib/assets/nike8.png","High performance running shoe"),
       Schuhe("Adidas Ultra Boost", "€180", "43", "lib/assets/nike3.png", "lib/assets/nike9.png","High performance running shoe"),
       Schuhe("Adidas Ultra Boost", "€130", "43", "lib/assets/nike1.png", "lib/assets/nike10.png", "High performance running shoe"),
       // Add more shoe objects here
     ];
     void openBottomSheet(BuildContext context, Schuhe schuhe) {
       showModalBottomSheet(
         context: context,
         builder: (context) {
           return SingleChildScrollView(
             child:Column(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Container(
                   padding: const EdgeInsets.all(40),  // Adjust padding as necessary
                   child: SchuheTileDialog(schuhe: schuhe),  // Directly using SchuheTile
                 ),
               ],

             )
           );
         },
       );
     }
     return Scaffold(
       backgroundColor: Colors.grey[300],
       body: Column(
         children: [
           const SizedBox(height: 40),
           const Padding(
             padding: EdgeInsets.symmetric(horizontal: 25),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               crossAxisAlignment: CrossAxisAlignment.end,
               children: [
                 Text("Hot Picks 🔥", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                 Text("See all", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
               ],
             ),
           ),
           const SizedBox(height: 20),
           Expanded(
             child: ListView.builder(
               scrollDirection: Axis.horizontal,
               itemCount: shoes.length,
               itemBuilder: (context, index) {
                 return InkWell(
                   onTap:() => openBottomSheet(context,shoes[index]),
                   child: SchuheTile(schuhe: shoes[index]),
                 );
               },
             ),
           ),
         ],
       ),
     );
   }
}
