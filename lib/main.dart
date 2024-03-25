import 'package:flutter/material.dart';
import 'pages/login.dart';
import 'theme/light_theme.dart';

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginScreen(),
      theme: lightMode,
    );
    throw UnimplementedError();
  }
  
}


void main() {
  runApp(const MyApp());
}