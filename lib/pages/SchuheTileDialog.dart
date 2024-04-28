import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projekt/pages/Entity/Schuhe.dart';

class SchuheTileDialog extends StatelessWidget {
  Schuhe schuhe;
  SchuheTileDialog({super.key, required this.schuhe});

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        children: [
          Text(schuhe.name, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
          Container(

            child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child:  Image.asset(schuhe.imagePath2 ,width: 250),
          ),),

          GestureDetector(
            onTap:()=> Navigator.pushNamed(context, '/ar'),
            child:
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(15)
              ),
              child:
              Padding(padding: EdgeInsets.all(25),
                child: Center(
                  child: Text("3D View",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 16 ),),
                ),),
              width: 360,
            ),
          ),
        ],
      ),

    );
  }
}