import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class HelloWorld extends StatefulWidget {
  @override
  _HelloWorldState createState() => _HelloWorldState();
}

class _HelloWorldState extends State<HelloWorld> {
   late ArCoreController arCoreController;
   late ArCoreNode cubeNode;


   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ARCore Cube Example'),
      ),
      body: ArCoreView(
        onArCoreViewCreated: _onArCoreViewCreated,
        enableTapRecognizer: true,
      ),
    );
  }

  void _onArCoreViewCreated(ArCoreController controller) {
    arCoreController = controller;
    _addCube();
  }

  void _addCube() {
    final cube = ArCoreCube(
      materials: [ArCoreMaterial(color: Colors.blue)],
      size: vector.Vector3(0.2, 0.2, 0.2),
    );

    cubeNode = ArCoreNode(
      shape: cube,
      position: vector.Vector3(0, 0, -1),
    );

    arCoreController.addArCoreNode(cubeNode);
  }

  @override
  void dispose() {
    arCoreController.dispose();
    super.dispose();
  }
}
