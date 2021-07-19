import 'dart:developer';

import 'package:arcore_flutter_plugin/arcore_flutter_plugin.dart';
import 'package:flutter/material.dart';

import 'ui/HomeScreen/main.dart';
import 'ui/SplashScreen/main.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  log('ARCORE IS AVAILABLE?');
  log('${await ArCoreController.checkArCoreAvailability()}');
  log('\nAR SERVICES INSTALLED?');
  log('${await ArCoreController.checkIsArCoreInstalled()}');
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AR Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (ctx) => SplashScreen(),
        HomeScreen.routeName: (ctx) => HomeScreen(),
      },
    );
  }
}
