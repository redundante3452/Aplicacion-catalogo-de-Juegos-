import 'package:flutter/material.dart';
import 'package:myapp/screens/screen_1/scren_home.dart';
import 'package:myapp/screens/screen_2/scren_juegos.dart';
import 'package:myapp/screens/screen_3/screen_juegos_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: JuegosScreen(),
      
    );
  }
}

