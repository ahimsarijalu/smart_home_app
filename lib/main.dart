import 'package:flutter/material.dart';
import 'package:smart_home_app/main_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Home App',
      theme: ThemeData(),
      home: MainScreen(),
    );
  }
}


