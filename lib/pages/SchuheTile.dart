import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projekt/pages/Entity/Schuhe.dart';

class SchuheTile extends StatelessWidget {
  Schuhe schuhe;
  SchuheTile({super.key, required this.schuhe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(color: Colors.grey[100],borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child:  Image.asset(schuhe.imagePath),
        ),
          Text(schuhe.beschreibung,style: TextStyle(color: Colors.grey[600]),),

         Padding(
           padding: const EdgeInsets.only(left: 25),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Column(
                 children: [
                   Text(schuhe.name, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                   SizedBox(height: 5,),
                   Text(schuhe.preis, style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                 ],
               ),
               Container(
                 padding: EdgeInsets.all(20),
                 decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.only(topLeft: Radius.circular(12),bottomRight: Radius.circular(12))),

                 child:Icon(Icons.add,color: Colors.white,),
               ),
             ],
           ),
         ),
       ],
      ),

    );
  }
}
