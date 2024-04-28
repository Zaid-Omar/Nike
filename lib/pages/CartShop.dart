import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartShop extends StatelessWidget {
  const CartShop({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: Text("Cart"),),
      backgroundColor: Colors.grey[300],
    );
  }
}
