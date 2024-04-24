import 'package:flutter/material.dart';
import 'package:projekt/pages/ar2.dart';
import 'package:projekt/pages/home.dart';
import 'package:projekt/pages/intro_page.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Intro_Page(),
      routes: {
        '/home':(context)=>Home(),
        '/ar':(context)=>Ar2(),
      },
    );
  }
}

