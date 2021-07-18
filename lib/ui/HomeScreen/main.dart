import 'package:flutter/material.dart';
import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ArCoreController arCoreController;

  _onArCoreViewCreated(ArCoreController _arCoreController) {
    arCoreController = _arCoreController;
    _addCube(arCoreController);
  }

  _addCube(ArCoreController _arCoreController) {
    final material = ArCoreMaterial(color: Colors.white, metallic: 1);
    final cube =
        ArCoreCube(materials: [material], size: vector.Vector3(0.5, 0.5, 0.5));
    final node = ArCoreNode(
      shape: cube,
      position: vector.Vector3(0.5, -3, -3),
    );

    _arCoreController.addArCoreNode(node);
  }

  @override
  void dispose() {
    arCoreController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AR FLUTTER"),
        centerTitle: true,
      ),
      body: ArCoreView(onArCoreViewCreated: _onArCoreViewCreated),
    );
  }
}
