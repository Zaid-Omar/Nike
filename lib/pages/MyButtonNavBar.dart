import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyButtonNavBar extends StatefulWidget {
  void Function(int)? onTabChange;
   MyButtonNavBar({super.key, required this.onTabChange});

  @override
  State<MyButtonNavBar> createState() => _MyButtonNavBarState();
}

class _MyButtonNavBarState extends State<MyButtonNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child:  GNav(
      color: Colors.grey[400],
      activeColor: Colors.grey.shade700,
      tabBackgroundColor:Colors.grey.shade100 ,
      mainAxisAlignment: MainAxisAlignment.center,
      onTabChange:(index)=> widget.onTabChange!(index) ,
      tabs: const [
        GButton(icon: Icons.home,text: 'Shop',),
        GButton(icon: Icons.shopping_bag_rounded,text: 'Cart'),
      ],),
    );
  }
}
