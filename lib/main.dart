import 'package:flutter/material.dart';
import 'pages/login.dart';
import 'pages/regsiter.dart';
import 'theme/light_theme.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: registerScreeen(),
      theme: lightMode,
    );
    throw UnimplementedError();
  }
  
}


void main() {
  runApp(const MyApp());
}