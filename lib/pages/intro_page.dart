import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Intro_Page extends StatefulWidget {
  const Intro_Page({super.key});

  @override
  State<Intro_Page> createState() => _Intro_PageState();
}

class _Intro_PageState extends State<Intro_Page> {

  @override
  Widget build(BuildContext context) {
    const mycolor = Color(0xFF353C69);
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.only(top: 10),
          child:
          Center(
            child: Image.asset('lib/assets/LogoNike.png',width: 300,height: 300,),
          ),
          ),
         const Text("Just Do It",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
          const SizedBox(height: 24,),
         const Text("Brand new Sneakers and custom kicks made with Premium quality",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.grey),textAlign: TextAlign.center,),
        const SizedBox(height: 150,),
         GestureDetector(
           onTap:()=> Navigator.pushNamed(context, '/home'),
           child:
           Container(
             decoration: BoxDecoration(
               color: Colors.grey[900],
               borderRadius: BorderRadius.circular(15)
             ),
             child:
             Padding(padding: EdgeInsets.all(25),
             child: Center(
               child: Text("Shop Now",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 16 ),),
             ),),
                width: 360,
           ),
         ),
          SizedBox(height: 40,),
          Text("Created By Zaid Omar",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),)
        ],
      ),
    );
  }
}
