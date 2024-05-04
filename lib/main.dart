import 'package:flutter/material.dart';
import 'package:projekt/pages/Entity/Cart.dart';
import 'package:projekt/pages/ar2.dart';
import 'package:projekt/pages/home.dart';
import 'package:projekt/pages/intro_page.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create:
    (context) => Cart(),
      builder: (context,child)=> MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Intro_Page(),
        routes: {
          '/home':(context)=>Home(),
          '/ar':(context)=>Ar2(),
        },
      ),
    );
  }
}

