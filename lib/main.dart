import 'package:flutter/material.dart';

import 'ui/HomeScreen/main.dart';
import 'ui/SplashScreen/main.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
