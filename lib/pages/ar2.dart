import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class Ar2 extends StatefulWidget {
  const Ar2({super.key});

  @override
  State<Ar2> createState() => _Ar2State();
}

class _Ar2State extends State<Ar2> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ModelViewer(
        src:'lib/assets/LogoNike.png',
        ar: true,
      ),
    );
  }
}
